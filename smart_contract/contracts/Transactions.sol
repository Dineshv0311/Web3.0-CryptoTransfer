// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Transactions {

    address public owner;
    uint256 private transactionCount;

    constructor() {
        owner = msg.sender;
    }

    event Transfer(
        address indexed from,
        address indexed receiver,
        uint amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] private transactions;

    // Mapping to store user transaction history
    mapping(address => uint[]) private userTransactions;

    // Modifier for owner-only functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    // Function to send ETH + record transaction
    function addToBlockchain(
        address payable receiver,
        string memory message,
        string memory keyword
    ) public payable {

        require(msg.value > 0, "Amount must be greater than 0");
        require(receiver != address(0), "Invalid receiver");

        transactionCount++;

        // Transfer ETH
        receiver.transfer(msg.value);

        transactions.push(TransferStruct(
            msg.sender,
            receiver,
            msg.value,
            message,
            block.timestamp,
            keyword
        ));

        // Store transaction index for sender
        userTransactions[msg.sender].push(transactions.length - 1);

        emit Transfer(
            msg.sender,
            receiver,
            msg.value,
            message,
            block.timestamp,
            keyword
        );
    }

    // Get all transactions
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    // Get transactions of a specific user
    function getUserTransactions(address user) public view returns (TransferStruct[] memory) {
        uint[] memory indexes = userTransactions[user];
        TransferStruct[] memory result = new TransferStruct[](indexes.length);

        for (uint i = 0; i < indexes.length; i++) {
            result[i] = transactions[indexes[i]];
        }

        return result;
    }

    // Get transaction count
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }

    // Withdraw contract balance (owner only)
    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    // Get contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

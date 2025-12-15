🚀 CryptoTransfer – Web3 Ethereum Transaction App

CryptoTransfer is a Web3 decentralized application (dApp) that allows users to connect their Ethereum wallet and send ETH transactions securely across the blockchain.
The application integrates MetaMask, Ethereum smart contracts, and a modern React-based UI.

🧩 Features

🔐 Connect Ethereum wallet using MetaMask

💸 Send ETH transactions to any address

🧠 Smart contract powered transactions

🌐 Web3.0 architecture

🎨 Modern UI with Tailwind CSS & Glassmorphism

⚡ Fast frontend using Vite

📦 Hardhat-based smart contract development

🛠️ Tech Stack
Frontend

React.js

Vite

Tailwind CSS

Ethers.js

React Icons

Blockchain / Backend

Solidity

Hardhat

Ethereum (Test Network)

MetaMask

📁 Project Structure
CryptoTransfer/
│
├── client/                 # Frontend (React + Vite)
│   ├── src/
│   │   ├── components/
│   │   ├── context/
│   │   ├── hooks/
│   │   ├── utils/
│   │   └── App.jsx
│   └── package.json
│
├── smart_contract/         # Smart Contracts (Hardhat)
│   ├── contracts/
│   │   └── Transactions.sol
│   ├── scripts/
│   │   └── deploy.js
│   └── hardhat.config.js
│
└── README.md

🔑 Prerequisites

Make sure you have the following installed:

Node.js (v16+ recommended)

MetaMask browser extension

Git

Ethereum test ETH (Goerli / Sepolia)

⚙️ Installation & Setup
1️⃣ Clone the repository
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd CryptoTransfer

2️⃣ Install frontend dependencies
cd client
npm install

3️⃣ Start the frontend
npm run dev


The app will run at:

http://localhost:5173

🔗 Smart Contract Setup
1️⃣ Install dependencies
cd smart_contract
npm install

2️⃣ Compile contracts
npx hardhat compile

3️⃣ Deploy contract
npx hardhat run scripts/deploy.js --network localhost


Update the deployed contract address in the frontend constants file.

🔐 Wallet Connection

Make sure MetaMask is installed

Connect to an Ethereum test network

Click “Connect Wallet”

After connection, the button changes to “Wallet Connected”

🧪 Test Network

This project is intended to be used on Ethereum test networks.
⚠️ Do NOT use real ETH on mainnet.

📸 UI Preview

Ethereum Card with wallet address

Transaction form

Loading animation during transaction

Modern glassmorphism effects

🚧 Future Improvements

Transaction history from blockchain

ENS support

Multi-network support

Disconnect wallet option

Better error handling

Deployment to Netlify / Vercel

👨‍💻 Author

Dinesh V

Web3 & Full-Stack Developer

Passionate about Blockchain & Decentralized Applications

📜 License

This project is licensed under the MIT License.

⭐ Support

If you like this project, give it a ⭐ on GitHub!
Feel free to fork, improve, and build on top of it.

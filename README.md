```markdown
# Simple NFT Marketplace

A simple NFT marketplace built with React, Express.js, and Solidity. This project allows users to mint NFTs by providing an IPFS URL and view the NFTs associated with their Ethereum address.

## Features

- User authentication via MetaMask
- Display wallet address of logged-in user
- Minting new NFTs by providing an IPFS URL
- Displaying NFTs owned by the user

## Setup and Installation

1. **Clone the repository**:
2. **Install dependencies**:
   npm install

3. **Configure Environment Variables**:
   - Create a `.env` file in the project root directory.
   - Add the following environment variables:
     REACT_APP_PINATA_API_KEY=yourPinataApiKey
     REACT_APP_PINATA_API_SECRET=yourPinataApiSecret

4. **Run the Express.js server**:
   node server.js

5. **Run the React app**:
   npm start

## Usage

1. **Minting NFTs**:
   - Click on the "Choose File" button to select a file.
   - The file will be uploaded to IPFS using Pinata, and a new NFT will be minted with the IPFS URL as the metadata URI.

2. **Viewing NFTs**:
   - The app will display a list of NFTs owned by the logged-in user.

## Contract

The Solidity smart contract code is located in the `contracts/` directory.

## Front End

The front end code is located in the `src/` directory.

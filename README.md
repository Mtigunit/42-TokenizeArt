# TokenizeArt

## Overview

Onyx42 is a non-fungible token (NFT) created as part of the 42 School **TokenizeArt** project. It is deployed on the Sepolia testnet using Remix IDE, IPFS (via Pinata) for metadata hosting, and the OpenZeppelin ERC-721 implementation. The project demonstrates NFT creation, deployment, and minting on the Ethereum blockchain using decentralized tools.

## File Structure
```
TokenizeArt/
├── code/
│ └── Onyx42NFT.sol
├── deployment/
│ └── deployment.md
├── mint/
│ └── metadata.json
├── documentation/
│ └── documentation.md
└── README.md
```


## Features

- **Name**: Onyx42  
- **Symbol**: ONX42  
- **Standard**: ERC-721  
- **Network**: Ethereum Sepolia Testnet  
- **Metadata Storage**: IPFS via Pinata  
- **Security**: Uses OpenZeppelin’s audited ERC-721 implementation  
- **Includes**: Unique NFT image (with "42") + metadata URI + ownership tracking

## Project Goal

The goal of this TokenizeArt project is to gain hands-on experience with NFT creation and the technologies powering Web3 ecosystems. By building and deploying a unique ERC-721 token, learners explore how blockchain, smart contracts, metadata, and decentralized storage work together to support digital ownership.

## Implementation Choices

### 🔷 Why Ethereum & ERC-721  
Ethereum is the most mature smart contract platform. ERC-721 is the standard for non-fungible tokens, enabling uniqueness, ownership, and interoperability with marketplaces like OpenSea.

### 🟨 Why Solidity  
Solidity is Ethereum's native smart contract language. It is feature-rich and well-supported for NFT development.

### 🟩 Why Remix IDE  
Remix IDE is browser-based, easy to use, and supports direct contract deployment to testnets via MetaMask.

### 🟦 Why OpenZeppelin  
OpenZeppelin provides secure and community-vetted contract libraries. We use their `ERC721URIStorage` to store metadata URIs for NFTs.

### 🟥 Why MetaMask  
MetaMask enables connection to the Ethereum blockchain directly from your browser. It simplifies testing and interaction with smart contracts.

### 🟫 Why IPFS / Pinata  
NFT metadata must be immutable. IPFS ensures distributed, permanent storage, and Pinata makes it easy to upload and manage files.

## NFT Description

- **Token Name**: Onyx42  
- **Symbol**: ONX42  
- **Token ID**: 42  
- **Media**: A hand-drawn NFT image featuring a monkey holding an Onyx stone with “42” embedded  
- **Metadata**: Hosted on IPFS (CID linked in contract)

## Smart Contract Summary

- Uses `ERC721URIStorage` for flexible metadata linking
- Mints the NFT to the deployer's wallet
- Associates a permanent metadata URI
- Metadata includes name, description, image link, and attributes

## Deployment Details

- **Testnet**: Sepolia  
- **Contract Address**: `0x4e1d8144c1e9f9b573ae2243f81bb195dcd63a21`
- **Deployed With**: MetaMask + Remix  
- **Metadata Hosted On**: Pinata IPFS  
- **Example Metadata JSON**:
```json
{
    "name": "<NFT_NAME>",
    "description": "<NFT_DESCRIPTION>",
    "image": "<IPFS_IMAGE_URL>",
    "attributes": [
        { 
            "trait_type": "<TRAIT_TYPE>",
            "value": "<TRAIT_VALUE>"
        }
    ]
}
```

## Cryptographic Concepts
Immutability: All ownership records are stored on-chain.

Provenance: The ownerOf function proves NFT ownership.

Transparency: Anyone can verify contract logic and NFT metadata.

Security: OpenZeppelin libraries reduce risk of common vulnerabilities.

## Technologies Used
| Tool         | Purpose                                      |
|--------------|----------------------------------------------|
| Solidity     | NFT contract programming                     |
| Remix IDE    | Compilation and deployment                   |
| MetaMask     | Wallet and network interface                 |
| IPFS         | Decentralized metadata and asset storage     |
| Pinata       | Easy IPFS integration                        |
| Etherscan    | View contract state and NFT ownership        |

## What is an NFT?
NFTs (Non-Fungible Tokens) are digital assets with unique identifiers. Unlike tokens (fungible), NFTs can’t be exchanged 1:1 — they’re used to represent art, collectibles, and ownership in decentralized apps.

ERC-721: The first standard for NFTs on Ethereum.

Uniqueness: Every token has a unique ID and metadata.

Transferable: NFTs can be bought, sold, or gifted via wallets or marketplaces.

## Final Notes
All development was done using free and open-source tools.

Sepolia testnet was used to avoid the use of real ETH.

The NFT can be viewed and verified on Etherscan or via tools like OpenSea (testnets).

## License
This project is licensed under the MIT License.
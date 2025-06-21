
# Onyx42 Non-Fungible Token (NFT) – Whitepaper

## Abstract

Onyx42 (ONYX42) is a non-fungible token (NFT) built on the Ethereum blockchain using the ERC-721 standard. Deployed on the Sepolia testnet, Onyx42 is crafted as a unique tribute to the creativity and digital ownership ethos of 42 School. Designed for digital art collectors and Web3 enthusiasts, Onyx42 emphasizes secure, decentralized, and immutable digital ownership. 

---

## 1. Introduction

With the expansion of blockchain technology and the rise of NFTs, Onyx42 positions itself as a project rooted in education, identity, and decentralized creativity. Each NFT is unique and immutable, representing a stylized digital artwork that combines symbolism (the Onyx stone and number 42) with blockchain provenance.

Onyx42 showcases how a well-designed NFT can embody artistic expression while leveraging the technical power of Ethereum’s infrastructure and IPFS for decentralized storage.

---

## 2. Token Overview

- **Token Name:** Onyx42  
- **Ticker Symbol:** ONX  
- **Blockchain:** Ethereum (Sepolia Testnet)  
- **Standard:** ERC-721  
- **Token ID:** 4242
- **Image Storage:** IPFS via Pinata  
- **Smart Contract:** Verified on Remix  
- **Minting Method:** Constructor-based minting of one token

---

## 3. Purpose and Use Cases

Onyx42 was developed as part of the TokenizeArt project and serves to demonstrate:

- **Digital Art Ownership:** Users can hold a token representing a rare, original artwork with cultural and symbolic value.
- **Educational Practice:** 42 School students gain hands-on experience with smart contracts, IPFS, and NFT standards.
- **Experimentation Ground:** Serves as a sandbox for testing metadata, minting methods, and decentralized deployments.
- **Showcase Asset:** The NFT can be showcased in digital galleries, testnet marketplaces, or as part of Web3 portfolios.

---

## 4. Technical Stack

- **Language:** Solidity  
- **Frameworks:** OpenZeppelin (ERC-721URIStorage)  
- **Deployment Tool:** Remix IDE  
- **Wallet Provider:** MetaMask  
- **Storage Solution:** Pinata (IPFS)  
- **Testnet:** Sepolia  
- **Metadata Format:** ERC721-compatible JSON with traits and image URI

---

## 5. Code Explanation (Line-by-Line):
`// SPDX-License-Identifier: MIT`
Declares the license type. "MIT" means it’s free to use, copy, and distribute with minimal restrictions.

`pragma solidity ^0.8.20;`
Ensures that the contract is only compiled with Solidity version 0.8.20 or higher. This version includes overflow checks and other security improvements.

`import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";`
Brings in the standard ERC-721 implementation from OpenZeppelin, specifically the version that supports storing metadata URIs directly in the contract.

`contract ONYX42NFT is ERC721URIStorage {`
Defines a new contract named ONYX42NFT, which inherits from ERC721URIStorage. This allows us to create an NFT with metadata.

`constructor(string memory tokenURI, uint tokenId)`
The constructor is run once, at deployment. It takes:

tokenURI: the IPFS or HTTP URL that points to your NFT’s metadata.

tokenId: a unique identifier for your NFT.

`ERC721("Onyx42", "ONX")`
Calls the constructor of the parent ERC721 contract with:

"Onyx42" as the name of the collection

"ONX" as the token symbol

`_mint(msg.sender, tokenId);`
Mints the token to the wallet deploying the contract. msg.sender is the deployer’s address.

`_setTokenURI(tokenId, tokenURI);`
Sets the metadata URI for the newly minted NFT. This allows marketplaces to read the token’s image, name, description, and traits.

## 6. Roadmap

### Phase 1 – Asset & Metadata Creation

Design NFT image with symbolic features

Upload to IPFS via Pinata

Create metadata JSON

### Phase 2 – Contract Development & Deployment

Write smart contract using OpenZeppelin ERC-721

Test and compile in Remix

Deploy to Sepolia via MetaMask

### Phase 3 – Verification & Ownership

Validate ownership via ownerOf(1)

Verify metadata via tokenURI(1)

Showcase in testnet-compatible tools

## 7. Contract Security and Limitations
Minting is limited to a single token in the constructor

No exposed minting or write functions post-deployment

Uses well-audited OpenZeppelin libraries

Owner cannot alter metadata after minting

## 8. Conclusion
Onyx42 is more than an NFT — it’s an educational artifact, artistic expression, and technical milestone. It showcases what is possible when creativity meets decentralization. Designed to live on-chain and in the minds of digital art lovers, Onyx42 celebrates the intersection of blockchain and imagination.

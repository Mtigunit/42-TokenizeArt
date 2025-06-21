
# Deployment Guide – Onyx42 NFT (ERC-721)

This document explains how to deploy your `Onyx42NFT` smart contract using **Remix**, **MetaMask** (on Sepolia Testnet), and **Pinata** for IPFS storage.

---

## Prerequisites
- MetaMask wallet connected to Sepolia Testnet
- ETH for gas from [Sepolia Faucet](https://sepoliafaucet.com/) or [Google Cloud Web3](https://cloud.google.com/application/web3/faucet/ethereum)
- Access to [Remix IDE](https://remix.ethereum.org/)

---

# Deploying Onyx42 Token

## Step 1: Upload Your NFT Metadata to IPFS using Pinata

1. Log in to [Pinata](https://app.pinata.cloud/)
2. Go to **"Upload" → "File"**
3. Upload your image (e.g. `Onyx42NFT.png`)
4. Click on the uploaded image and copy its link (URL) (e.g., `https://maroon-worldwide-crab-532.mypinata.cloud/ipfs/Image-CID`)
5. Now create your metadata JSON file:
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
6. Save it as `metadata.json` and upload it to Pinata.
7. Copy the **CID of the metadata** file (e.g., `bafybeimetadatahash...`)
8. Your token URI will be:  
```
ipfs://bafybeimetadatahash
```

---

## Step 2: Compile & Deploy the Smart Contract

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file `Onyx42NFT.sol` and paste in the smart contract
3. Go to the **Solidity Compiler** tab and compile the contract
4. Switch to the **Deploy & Run Transactions** tab:
    - Environment: **Injected Provider - MetaMask**
    - Ensure MetaMask is connected to the **Sepolia Testnet**
    - Enter the constructor argument: `"ipfs://bafybeimetadatahash"`
5. Click **Deploy**
6. Confirm the transaction in MetaMask

---

## Step 3: Verify NFT Deployment

- After deployment, expand the contract instance in Remix.
- Call the `ownerOf(1)` function — it should return **your MetaMask address**
- Call the `tokenURI(1)` — it should return your IPFS metadata URI

---

## Example

Contract deployed on Sepolia at: `0x4E1d8144C1E9F9b573AE2243F81bb195DCD63A21`

Owner of token 4242: `0x357e80a53Aa0b45f777465b103aA5Cbbf6F8eBAd`

Metadata URI: `ipfs://bafkreiedz47pmxydvphapuf2s2zyepkz3ariygsr4ppbsx4yqx5quei64a`

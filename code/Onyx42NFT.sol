// SPDX-License-Identifier: MIT
// This line defines the software license for this contract. MIT is a permissive open-source license.

pragma solidity ^0.8.20;
// This specifies the Solidity version used to compile the contract (0.8.20 or higher, but not breaking changes).

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
// We import the ERC721URIStorage extension from OpenZeppelin.
// This allows us to use ERC-721 features with metadata storage via tokenURI.

contract ONYX42NFT is ERC721URIStorage {
    // This is the main contract named ONYX42NFT, inheriting from OpenZeppelin's ERC721URIStorage.

    constructor(string memory tokenURI, uint tokenId)
        ERC721("Onyx42", "ONX") 
        // We call the constructor of ERC721 with token name "Onyx42" and symbol "ONX"
    {
        _mint(msg.sender, tokenId);
        // Mint the NFT to the wallet deploying the contract (`msg.sender`) with a specific tokenId.

        _setTokenURI(tokenId, tokenURI);
        // Associate the tokenId with a URI (points to metadata hosted on IPFS or other).
    }
}

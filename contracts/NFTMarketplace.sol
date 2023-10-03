// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMarketplace is ERC721Enumerable, Ownable {
    uint public nextTokenId;
    address public admin;

    // Mapping from token ID to metadata URI
    mapping(uint256 => string) private _tokenURIs;

    constructor() ERC721('MarketplaceNFT', 'MNFT') {
        admin = msg.sender;
    }

    function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal virtual {
        _tokenURIs[tokenId] = _tokenURI;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        return _tokenURIs[tokenId];
    }

    function mint(string memory tokenURI) external {
        uint256 tokenId = nextTokenId;
        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);
        nextTokenId++;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "";
    }
}

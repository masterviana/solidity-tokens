
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleAccessControl {

    address internal _owner;

    modifier isOwner() {
        require(msg.sender == _owner, "ERR_NOT_OWNER");
        _;
    }
    /*
    constructor(address payable ownerAdress) {
        _owner = ownerAdress; 
    }
    */
    constructor() {
        _owner = msg.sender; 
    }

    function transferOwnership(address payable newOwner) public isOwner {
        require(newOwner != address(0), "ERR_ZERO_ADDR");
        require(newOwner != _owner, "ERR_IS_OWNER");
        _owner =   newOwner;
    }
}

contract MoonItens is ERC721, SimpleAccessControl {

    uint256 private _id;
    // Base URI
    string private _baseURIextended;
   
    constructor() ERC721("MoonItens", "MOON") public 
    {  
        _id = 1 ;
        mint();
        mint();
        mint();
    }

    function mint() public returns (bool)
    {
        _mint(msg.sender, _id++);
        return true;
    }

    function setBaseURI(string memory baseURI_) external isOwner() {
        _baseURIextended = baseURI_;
    }
    
    
    function _baseURI() internal view virtual override returns (string memory) {
        return _baseURIextended;
    }
    
    


}
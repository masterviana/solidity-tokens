// File: bazar/ERC721.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// mumbai network : https://mumbai.polygonscan.com/address/0xf601c5489beaCFDB3F318B229114253F7111fA41#code
// opensea test : https://testnets.opensea.io/collection/demonstrating-collection-for-tests-purposes-by-m-1

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

contract SunItens is ERC721, SimpleAccessControl {

    uint256 private _id;
    // Base URI
    string private _baseURIextended;
    string private _contractURI;
   
    constructor() ERC721("MoonItens", "MOON") public 
    {  
        _id = 1 ;
        _contractURI = "https://nft-metadata-service-api.herokuapp.com";
        _baseURIextended = "https://nft-metadata-service-api.herokuapp.com/detail/{id}";
        mint();
        mint();
        mint();
        mint();
    }

    function mint() public returns (bool)
    {
        _mint(msg.sender, _id++);
        return true;
    }

    // set new base uri
    function setBaseURI(string memory baseURI_) external isOwner() {
        _baseURIextended = baseURI_;
    }
    
    // override original method 
    function _baseURI() internal view virtual override returns (string memory) {
        return _baseURIextended;
    }

    function setContractURI(string memory newuri)  public  isOwner() returns (bool)
    {
        _contractURI = newuri;
        return true;
    }


    function contractURI() public view returns (string memory) {
        return _contractURI;
    }
    
    


}
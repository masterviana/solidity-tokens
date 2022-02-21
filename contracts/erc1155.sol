// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

// mumbai matic address : https://mumbai.polygonscan.com/address/0x5da9F2d6E8dC4E68923d6c3d88535317ba3bB7eC#code
// opensea collection on test network : https://testnets.opensea.io/collection/demonstrating-collection-for-tests-purposes-by-m-2

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

contract JupiterItens is ERC1155, SimpleAccessControl 
{
    
    uint256 private _id = 1;
    string public name;
    string private _contractURI;

    constructor() public ERC1155("https://nft-metadata-service-api.herokuapp.com/detail/{id}")
    {
        _contractURI = "https://nft-metadata-service-api.herokuapp.com";
        name = "Masterviana collection";
        mint(5);
        mint(1);
        mint(5);
        mint(10);
        mint(10);
    }

    function mint(uint256 total) public returns (bool)
    {
        require( (total >= 1 && total <= 10) , 'NFT_MINT: GREATER THEN 1 LESS THEN 10' );
        _mint(msg.sender, _id++, (total) * (1 ether), "");
        return true;
    }

    function setURI(string memory newuri)  public  isOwner() returns (bool){
        _setURI(newuri);
        return true;
    }

    function setContractURI(string memory newuri)  public  isOwner() returns (bool)
    {
        _contractURI = newuri;
        return true;
    }

    function setCollectionName(string memory _name)  public  isOwner() returns (bool)
    {
        name = _name;
        return true;
    }

    function contractURI() public view returns (string memory) {
        return _contractURI;
    }

}
// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Context.sol";

contract ERC20Capped is ERC20 {

    // define 21 milions as mark cap 
    uint256 public maxSupply = 21000000 * 10**decimals();
    

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) 
    {}

    function _mintCapped(address _account, uint256 _value) internal {
        require(totalSupply() + _value <= maxSupply, 'ERR_EXCEEDED_MAX_SUPPLY');
        _mint(_account, _value);
    }    
}

contract IOToken is ERC20Capped {
    
    uint256 private _mintAmount = 10 *  10**decimals();

    constructor(string memory _name, 
                string memory _symbol) 
        ERC20Capped(_name, _symbol)
    {
        _mintCapped( msg.sender , 5000 * 10**decimals() );  
    }

    function mint() public payable returns(uint256)
    {
        _mintCapped(msg.sender,  _mintAmount);
        return _mintAmount;
    }
}
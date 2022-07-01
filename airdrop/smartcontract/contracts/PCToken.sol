//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PCToken is ERC20, Ownable {
    
    constructor() ERC20("Token", "PC") {
        _mint(msg.sender, 1000*10**uint(decimals())); // mint for dev wallet 
        _mint(address(this), 1000*10**uint(decimals())); // mint for contract
    }

    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount*10**uint(decimals()));
    }

}
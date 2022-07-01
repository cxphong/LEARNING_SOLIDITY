pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./Vesting.sol";

contract PCToken is ERC20 {

    constructor() ERC20("PC", "PCT") {
        _mint(msg.sender, 1000000*10**18);
    }

}
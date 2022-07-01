//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract WhiteList is Ownable {
    uint private constant MAX_WHITE_LIST_ADDRESSES = 2;
    mapping(address => bool) private whitelistedAddresses;
    uint private numberWhitedAddress = 0;

    function addAddressToWhitelist() public onlyOwner {
        require(numberWhitedAddress < MAX_WHITE_LIST_ADDRESSES);
        require(!whitelistedAddresses[msg.sender]);

        whitelistedAddresses[msg.sender] = true;
        numberWhitedAddress += 1;
    }
    
}

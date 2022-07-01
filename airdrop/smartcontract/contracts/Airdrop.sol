//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./PCToken.sol";

contract Airdrop is Ownable {
    PCToken private tokenInstance;

    constructor(address _tokenAddress) {
        tokenInstance = PCToken(_tokenAddress);
    }

    /**
        Airdrop contract must have PCToken to transfer to repicient
     */
    function airdrop(address[] memory _recipients, uint256 _amount) public onlyOwner {
        uint256 count = _recipients.length;

        for (uint256 i = 0; i < count; i++) {
            tokenInstance.transfer(_recipients[i], _amount*10**18);
        }
    }

}

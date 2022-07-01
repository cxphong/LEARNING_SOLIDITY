//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/finance/VestingWallet.sol";
import "hardhat/console.sol";

contract Vesting is VestingWallet {

    constructor(
        address _beneficiary,
        uint64 _start,
        uint64 _duration
    ) VestingWallet(_beneficiary, _start, _duration){
        
    }

    function _vestingSchedule(uint256 totalAllocation, uint64 timestamp)
        internal
        view
        virtual
        override(VestingWallet)
        returns (uint256)
    {
        if (timestamp < start()) {
            return 0;
        } else if (timestamp > start() + duration()) {
            return totalAllocation;
        } else {
            return (totalAllocation * (timestamp - start())) / duration();
        }
    }
}

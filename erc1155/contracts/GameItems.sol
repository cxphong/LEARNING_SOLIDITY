//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155 {

    constructor() ERC1155("https://ipfs.io/ipfs/bafybeieximig3l6v2l4xld3m2e4htubcmocg4ntv265zv4ubgnyetfn6l4/2.json") {
        _mint(msg.sender, 0, 99999, "");
    }
}

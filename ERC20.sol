// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Light is ERC20, Ownable {
    constructor(address initialOwner) ERC20("Light", "LGT") Ownable(initialOwner)
    {
        mint(msg.sender, 100 * (10 ** 18));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, account);
    }
}

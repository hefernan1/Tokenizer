// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract FDS is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("42FDS", "42FDS")
        Ownable(initialOwner)
    {}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
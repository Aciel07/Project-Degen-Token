// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner) {}

    uint256 public constant POINTS_PER_COFFEE = 10; // Points earned per coffee purchased

    function earnPoints(address player, uint256 coffeeCups) public onlyOwner {
        uint256 points = coffeeCups * POINTS_PER_COFFEE;  // 1 coffee = 10 points
        _mint(player, points);
    }

    function redeemPoints(uint256 rewardUnits) public {
        require(balanceOf(msg.sender) >= rewardUnits, "Insufficient points for redemption");
        _burn(msg.sender, rewardUnits); // Burn the points when redeemed
    }

    function transferPoints(address recipient, uint256 amount) public {
        transfer(recipient, amount); // Transfer points from one user to another
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account); // Check the balance of points for an account
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount); // Burn points from the sender's account
    }
}

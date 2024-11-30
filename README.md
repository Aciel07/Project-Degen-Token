# Project-Degen-Token
This repository contains the `DegenToken` contract, a simple ERC20 token that allows users to earn points for coffee purchases, redeem points for rewards, and transfer or burn points.

## Overview

The `DegenToken` contract is built using the OpenZeppelin library to provide standard ERC20 functionality, alongside additional features such as:

## Contract Details

### Contract Functions

### 1. **Earn Points**
   - Use the `earnPoints(address player, uint256 coffeeCups)` function to mint points for a user.
   - Only the contract owner can call this function.

### 2. **Redeem Points**
   - Use the `redeemPoints(uint256 rewardUnits)` function to redeem points for rewards by burning them.
   - Ensure you have enough points before attempting redemption.

### 3. **Transfer Points**
   - Use the `transferPoints(address recipient, uint256 amount)` function to transfer points to another user.

### 4. **Check Balance**
   - Use the `checkBalance(address account)` function to view the balance of points for any given address.

### 5. **Burn Points**
   - Use the `burn(uint256 amount)` function to burn points from your own account.
     
## Requirements

- Remix IDE for development and deployment.
- MetaMask wallet configured to interact with the Avalanche network.
- OpenZeppelin Contracts library for ERC20 token functionality.



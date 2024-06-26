// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract CustomToken {

    // Public variables
    string public tokenName = "CustomToken";
    string public tokenSymbol = "CTK";
    uint256 public overallSupply;

    // Mapping to store balances
    mapping(address => uint256) public accountBalances;

    // Mint function
    function createTokens(address recipient, uint256 amount) public {
        overallSupply += amount;
        accountBalances[recipient] += amount;
    }

    // Burn function
    function destroyTokens(address holder, uint256 amount) public {
        require(accountBalances[holder] >= amount, "Insufficient balance to burn");
        overallSupply -= amount;
        accountBalances[holder] -= amount;
    }
}

# CustomToken

CustomToken is a simple Ethereum-based token contract written in Solidity. This contract allows you to create, mint, and burn tokens, maintaining a balance for each address.

## Features

- **Token Details**: The contract stores public variables for the token name, abbreviation, and total supply.
- **Balances Mapping**: Each address's balance is stored in a mapping.
- **Mint Function**: This function allows the creation of new tokens and assigns them to a specified address.
- **Burn Function**: This function destroys tokens from a specified address, ensuring that the address has enough balance to do so.

## Contract Details

### Public Variables

- `tokenName`: The name of the token (e.g., "CustomToken").
- `tokenSymbol`: The abbreviation of the token (e.g., "CTK").
- `overallSupply`: The total supply of the token.

### Mapping

- `accountBalances`: A mapping of addresses to their respective token balances.

### Functions

#### createTokens

'''
function createTokens(address recipient, uint256 amount) public
'''

**Description**: Mints new tokens and assigns them to the specified address.

**Parameters**:
- `recipient`: The address to which the tokens will be assigned.
- `amount`: The number of tokens to mint.

**Functionality**:
- Increases the `overallSupply` by `amount`.
- Increases the balance of the specified address (`recipient`) by `amount`.

#### destroyTokens

'''
function destroyTokens(address holder, uint256 amount) public
'''

**Description**: Burns tokens from the specified address, reducing the total supply.

**Parameters**:
- `holder`: The address from which the tokens will be burned.
- `amount`: The number of tokens to burn.

**Functionality**:
- Requires that the balance of the specified address (`holder`) is greater than or equal to the amount to be burned.
- Decreases the `overallSupply` by `amount`.
- Decreases the balance of the specified address (`holder`) by `amount`.

## Usage

1. **Deploy the Contract**: Deploy the `CustomToken` contract to the Ethereum blockchain using your preferred development environment (e.g., Remix, Truffle).

2. **Mint Tokens**: Use the `createTokens` function to create new tokens and assign them to an address.

3. **Burn Tokens**: Use the `destroyTokens` function to destroy tokens from an address, ensuring the address has enough balance.

### Example

'''
// Deploy the contract
CustomToken customToken = new CustomToken();

// Mint 1000 tokens to address 0x123...
customToken.createTokens(0x123..., 1000);

// Check the balance of address 0x123...
uint256 balance = customToken.accountBalances(0x123...); // Should be 1000

// Burn 500 tokens from address 0x123...
customToken.destroyTokens(0x123..., 500);

// Check the balance of address 0x123...
balance = customToken.accountBalances(0x123...); // Should be 500
'''

## License

This project is licensed under the MIT License. See the LICENSE file for details.

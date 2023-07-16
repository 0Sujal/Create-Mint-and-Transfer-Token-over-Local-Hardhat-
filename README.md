# Create-Mint-and-Transfer-Token-over-Local-Hardhat-
MyToken is a simple ERC-20 token contract written in Solidity on a local HardHat network. It allows for basic token functionality, including token transfers, balance queries, and token minting and burning operations.

Features
ERC-20 compliant: Implements the standard ERC-20 interface for compatibility with other contracts and applications. Token Name and Symbol: The contract allows you to set a custom name and symbol for your token. Total Supply: You can specify the total supply of tokens during contract deployment. Token Balance: Each address is associated with a token balance, and balances can be queried. Transfer Function: Users can transfer tokens to other addresses. Minting: The contract owner can mint additional tokens and increase the total supply. Burning: Any user can burn their own tokens to reduce the total supply.

Deployment
Clone or download this repository.
https://github.com/0Sujal/Create-Mint-and-Transfer-Token-over-Local-Hardhat-/tree/main

Install the required dependencies using npm:

npm install

npm install --save-dev "hardhat@^2.16.1" "@nomicfoundation/hardhat-toolbox@^2.0.0"

npx hardhat

npm install -g @remix-project/remixd

remixd -s ./ --remix-ide https://remix.ethereum.org

Set up a development blockchain network, such as Hardhat, and update the network configuration in the hardhat.config.js file if needed.

Modify the constructor parameters in the deploy.js script according to your requirements, including the token name, symbol, and initial total supply.

Deploy the contract to your chosen network by running the deployment script:

npx hardhat run --network localhost scripts/deploy.js

The script will compile the contract and deploy it to the specified network. Note the contract address provided in the console output.

remix setup
Open the Remix IDE in your web browser at https://remix.ethereum.org/.

In the Remix IDE, navigate to the "File Explorer" panel on the left side.

Locate workspaces and select the connect to local host

Switch to the "Solidity Compiler" tab located on the right side.

Under the "Compiler Configuration" section, select the appropriate compiler version matching the one used in the MyToken contract.

Click the "Compile SujalToken.sol" button to compile the contract.

After successful compilation, switch to the "Deploy & Run Transactions" tab.

Under the "Environment" dropdown, select "Injected Web3" to connect Remix to MetaMask.

Click the "Deploy" button next to the contract name (SujalToken).

In the contract deployment section, specify the desired values for the constructor parameters (_name, _symbol, _totalSupply).

Click the "Transact" button to deploy the contract. Make sure to confirm the transaction in the MetaMask pop-up window.

After the contract is deployed, you will see the contract instance in the "Deployed Contracts" section below.

Expand the deployed contract instance, and you will see the available contract functions.

To interact with the contract, select the desired function from the contract interface.

Enter the required parameters (e.g., recipient address, token amount) and click the "Transact" button.

Confirm the transaction in the MetaMask pop-up window.

You will see the transaction details in the Remix "Transactions" panel, and events emitted by the contract will be displayed in the "Logs" section.

Interacting with the Contract
Once the contract is deployed, you can interact with it using various methods: Transfer Tokens: Use the transfer function to transfer tokens from your address to another address. Mint Tokens: Only the contract owner can mint new tokens. Use the mint function to mint additional tokens and increase the total supply. Burn Tokens: Any user can burn their own tokens to reduce the total supply. Use the burn function to burn tokens. Ensure you have the appropriate account connected to your Ethereum client or Remix to interact with the deployed contract.

Prerequisites:
Install MetaMask extension in your web browser. Configure MetaMask to connect to the appropriate network (e.g., Localhost or Testnet). Deploy the MyToken contract to the chosen network.

Authors
Sujal Dua 21BCS5327@cuchd.in

License
This project is licensed under the Vinay Kumar License - see the LICENSE.md file for details

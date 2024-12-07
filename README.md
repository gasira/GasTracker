# GasTracker
A Solidity smart contract designed to track gas usage for specific function calls on the Ethereum blockchain. GasTracker helps developers analyze and monitor gas consumption, making it a useful tool for optimizing smart contracts and understanding gas cost patterns.

## What’s Included?

This project is a smart contract written in Solidity that:

- Tracks gas used by specified functions.
- Logs gas data for each transaction.
- Allows users to retrieve gas usage data for analysis.

The project also includes:

- A test suite written in TypeScript using Hardhat.
- Deployment scripts for deploying on local, test, or mainnet Ethereum-compatible blockchains.

## Features
1. **Track Gas Usage:**
- The trackGas function records gas usage for any operation, logging the results in a structured format.
  
2. **Retrieve Data:**
- View all recorded gas usage logs or filter records by user address.

3. **Event Emission:**
- Emits a GasUsed event on every trackGas call, enabling off-chain monitoring.

## How to Use
**Prerequisites**
- Node.js (LTS version recommended)
- NPM or Yarn
- Hardhat installed locally

## Installation

1. Clone the repository:
`````````
git clone https://github.com/yourusername/GasTracker.git <br>
cd GasTracker
``````````
2. Install dependencies:
```````````
npm install
```````````
## Deployment

<strong>Deploy to Local Hardhat Network</strong>

1. Start a local Hardhat node: <br>
`npx hardhat node`

2. Deploy the contract:

`
npx hardhat run scripts/deploy.ts --network localhost
`

## Deploy to a Testnet (e.g., Goerli or Base)

1. Add your private key and testnet RPC URL to `hardhat.config.ts.`
2. Deploy to the testnet: 

``````````````````
npx hardhat run scripts/deploy.ts --network goerli
``````````````````

## Interacting with GasTracker

<strong>Using Hardhat Console</strong>
1. Attach to the deployed contract:

```````````````````````
const GasTracker = await ethers.getContractFactory("GasTracker"); <br>
const gasTracker = await GasTracker.attach("<DEPLOYED_CONTRACT_ADDRESS>");
```````````````````````

2. Track gas for a function:

`
await gasTracker.trackGas("exampleFunction");
`

3. Retrieve all gas records:

``````````````````````````
const records = await gasTracker.getGasRecords(); <br>
console.log(records);
````````````````````````````````

4. Filter records by user:

``````````````````````````
const userRecords = await gasTracker.getGasRecordsByUser("<USER_ADDRESS>"); <br>
console.log(userRecords);
``````````````````````````
## Testing
Run the included test suite to validate the contract's functionality: <br>
`
npx hardhat test 
`
<h4>The tests cover:</h4>
<ol>
 <li>Recording gas usage for various function calls.</li> 
<li>Retrieving all gas records.</li>
<li>Filtering gas records by user address.</li>
</ol>

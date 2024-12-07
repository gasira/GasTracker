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
4. 

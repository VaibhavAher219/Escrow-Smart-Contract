# Escrow Smart Contract

This repository contains the smart contract code for the Escrow contract. The Escrow contract is implemented in Solidity and provides a secure mechanism for holding and releasing funds between a depositor, a beneficiary, and an arbiter.

## Contract Overview

The Escrow contract allows a depositor to deposit funds into the contract, which are held until they are approved for release by the arbiter. The beneficiary is the intended recipient of the funds. The arbiter acts as a trusted third party who decides when to release the funds to the beneficiary.

### Contract Functions

#### approve

The `approve` function is used by the arbiter to release the funds to the beneficiary. Only the arbiter can call this function. Upon successful execution, the funds held in the contract will be transferred to the beneficiary. The function emits an `Approved` event to indicate the approval and includes the amount that was approved.

### Contract Variables

- `depositor`: The address of the depositor who initially deposited the funds into the contract.
- `beneficiary`: The address of the beneficiary who will receive the funds once approved by the arbiter.
- `arbiter`: The address of the arbiter who has the authority to approve the release of the funds.
- `depositedAmount`: The amount of funds currently held in the contract.
- `isApproved`: A boolean variable indicating whether the funds have been approved for release by the arbiter.

Please note that this smart contract is provided as an example and should be thoroughly reviewed and audited before using it in a production environment.

## License

This Escrow Smart Contract is released under the MIT License. You can find the full license text in the `LICENSE` file.

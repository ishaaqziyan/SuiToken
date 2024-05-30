## This repo consists of a simple token contract built on the [SUI](https://sui/io) blockchain

Instructions:
1. Install [SUI](https://docs.sui.io/guides/developer/getting-started/sui-install#prerequisites) on your operating system.
2. Clone the project
3. run `sui client active-address` to create a wallet for you.
4. Grab some SUI devnet tokens from their [discord]([url](https://discord.gg/sui)) devnet faucet.
5. run `sui move build` to build the project locally.
6. run `sui client new-env --alias devnet --rpc https://fullnode.devnet.sui.io:443
sui client switch --env devnet
`to change RPCs to devnet.
7. Now, to publicize the contract, copy the absolute path of the `mycoin.move` contract located in the `sources` file, and run the following command.<br>
`sui client publish --gas-budget 100000000 [YOUR_PATH]`
replace **[YOUR_PATH]** with the relevant path.
8. Now, once the deployment has been completed, you can find you contract in a sui blockchain explorer [devnet mode].
9. In this particular case, you can view the contract I have deployed [here]([url](https://suiscan.xyz/devnet/coin/0x5abb63bb151db95627b729c025636bcf21cdb7b8110074762e61632125474e5d::my_coin::MY_COIN/txs)).

# Send Token on L2

Deploying Send token to Base using Optimism Standard Bridge.

## Deploying

```shell
forge script ./packages/contracts/script/DeploySendMerkleDrop.s.sol:DeploySendMerkleDropScript \
  -vvvv \
  --rpc-url http://localhost:8546 \
  --sender 0x647eb43401e13e995d89cf26cd87e68890ee3f89 \
  --froms 0x647eb43401e13e995d89cf26cd87e68890ee3f89 \
  --keystores ~/.foundry/keystores/send_deployer
```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

<https://book.getfoundry.sh/>

## Usage

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Anvil

```shell
anvil
```

### Deploy

```shell
forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
cast <subcommand>
```

### Help

```shell
forge --help
anvil --help
cast --help
```

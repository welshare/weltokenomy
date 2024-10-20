# Welshare token

Welshare gives patients the tools to control their health data and connect directly with medical research.

https://www.welshare.health/

## Contract Addresses

### Mainnet

| Contract            | Address                                                                                                                            |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| WelshareHealthToken | [0x1e762e1fac176bbb341656035daf5601b1c69be5](https://etherscan.io/token/0x1e762e1fac176bbb341656035daf5601b1c69be5)                |
| Treasury Safe       | [0xdD59E0EF49F36030cDd89299EbfDE0B29347ABe0](https://app.safe.global/balances?safe=eth:0xdD59E0EF49F36030cDd89299EbfDE0B29347ABe0) |

### Sepolia

| Contract      | Address                                                                                                                            |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| WelToken      | [0x10Dc0aD7f59f31267870359fB4002235C109521b](https://sepolia.etherscan.io/token/0x10Dc0aD7f59f31267870359fB4002235C109521b)        |
| Treasury Safe | [0x62ee749EA4d0407a2C44690933F58B05C7867e5f](https://app.safe.global/balances?safe=sep:0x62ee749EA4d0407a2C44690933F58B05C7867e5f) |

## Creation code

We're using foundry

```
forge create --rpc-url $RPC_URL --etherscan-api-key=$ETHERSCAN_API_KEY --verify --private-key=$PRIVATE_KEY src/WelshareHealthToken.sol:WelshareHealthToken --constructor-args 0xdD59E0EF49F36030cDd89299EbfDE0B29347ABe0
```

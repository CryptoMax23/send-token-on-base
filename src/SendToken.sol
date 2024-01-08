pragma solidity 0.8.15;
import "@eth-optimism/contracts-bedrock/universal/OptimismMintableERC20.sol";

contract SendToken is OptimismMintableERC20 {
    constructor() OptimismMintableERC20("Send Token", "send", 0) {}
}

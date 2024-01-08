// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
import "@eth-optimism/contracts-bedrock/universal/OptimismMintableERC20.sol";

contract SendToken is OptimismMintableERC20 {
    constructor()
        OptimismMintableERC20(
            0x4200000000000000000000000000000000000010,
            0x3f14920c99BEB920Afa163031c4e47a3e03B3e4A,
            "Send Token",
            "send",
            0
        )
    {}
}

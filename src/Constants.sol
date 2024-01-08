// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {Script, console2} from "forge-std/Script.sol";

abstract contract Constants is Script {
    /**
     * [Send Deployer](https://etherscan.io/address/0x647eb43401e13e995D89Cf26cD87e68890EE3f89)
     * @notice Only on Mainnet
     *
     */
    address public SEND_DEPLOYER = 0x647eb43401e13e995D89Cf26cD87e68890EE3f89;

    /**
     * [Send Token](https://etherscan.io/address/0x3f14920c99BEB920Afa163031c4e47a3e03B3e4A)
     * @notice Only on Mainnet
     *
     */
    address public SEND_TOKEN_L1 = 0x3f14920c99BEB920Afa163031c4e47a3e03B3e4A;

    function labels() public {
        vm.label(SEND_TOKEN_L1, "Send Token L1");
        vm.label(SEND_DEPLOYER, "Send Deployer");
    }
}

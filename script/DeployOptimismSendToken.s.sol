// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Constants} from "../src/Constants.sol";
import {SendToken} from "../src/SendToken.sol";

contract DeployOptimismSendTokenScript is Script, Constants {
    function setUp() public {
        this.labels();
    }

    function run() public {
        vm.startBroadcast();
        // Deploy SendToken
        SendToken sendToken = new SendToken();

        if (msg.sender == SEND_DEPLOYER) {
            require(
                address(sendToken) == SEND_TOKEN_L1,
                "SendToken address mismatch"
            );
        } else {
            console2.log("Deploying SendToken from ", msg.sender);
        }

        vm.stopBroadcast();
    }
}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {DeployOptimismSendTokenScript} from "../script/DeployOptimismSendToken.s.sol";
import {Constants} from "../src/Constants.sol";

contract SendTokenTest is Test, Constants {
    function setUp() public {
        this.labels();
    }

    function test_run() public {
        DeployOptimismSendTokenScript script = new DeployOptimismSendTokenScript();
        script.run();
    }
}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {SendToken} from "../src/SendToken.sol";

contract SendTokenTest is Test {
    SendToken public SendToken;

    function setUp() public {
        SendToken = new SendToken();
    }

    function test_Decimals() public {
        assertEq(SendToken.decimals(), 0);
    }
}

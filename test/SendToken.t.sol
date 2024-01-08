// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Constants} from "../src/Constants.sol";
import {SendToken} from "../src/SendToken.sol";

contract SendTokenTest is Test, Constants {
    SendToken public sendToken;

    function setUp() public {
        this.labels();
        vm.prank(SEND_DEPLOYER);
        sendToken = new SendToken();
    }

    function test_AddressEquals() public {
        console2.log("Send Token address", address(sendToken));
        assertEq(address(sendToken), SEND_TOKEN_L1);
    }

    function test_Decimals() public {
        assertEq(sendToken.decimals(), 0);
    }

    function test_TotalSupply() public {
        assertEq(sendToken.totalSupply(), 0);
    }

    function test_Name() public {
        assertEq(sendToken.name(), "Send Token");
    }

    function test_Symbol() public {
        assertEq(sendToken.symbol(), "send");
    }
}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {SendToken} from "../src/SendToken.sol";

contract SendTokenTest is Test {
    SendToken public sendToken;
    address public sendDeployer = 0x647eb43401e13e995D89Cf26cD87e68890EE3f89;

    function setUp() public {
        vm.label(sendDeployer, "Send Deployer");
        vm.prank(sendDeployer);
        sendToken = new SendToken();
    }

    function test_AddressEquals() public {
        console2.log("Send Token address", address(sendToken));
        assertEq(
            address(sendToken),
            0x3f14920c99BEB920Afa163031c4e47a3e03B3e4A
        );
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

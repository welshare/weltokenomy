// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Test, console} from "forge-std/Test.sol";
import {WelToken} from "../src/WelToken.sol";

contract WelTokenTest is Test {
    
    address deployer = makeAddr("deployer");
    address treasury = makeAddr("treasury");
    address welteam = makeAddr("welteam");

    function setUp() public {
    }

    function test_initialize() public {
        vm.startPrank(deployer);
        WelToken token = new WelToken(treasury);
        assertEq(token.name(), "WelToken");
        assertEq(token.totalSupply(), 2_500_000_000 ether);
        assertEq(token.balanceOf(treasury), 2_500_000_000 ether);

        vm.startPrank(treasury);
        token.transfer(welteam, 10_000 ether);

        assertEq(token.balanceOf(welteam), 10_000 ether);
        assertEq(token.balanceOf(treasury), 2_500_000_000 ether - 10_000 ether);
        assertEq(token.totalSupply(), 2_500_000_000 ether);
    }
}

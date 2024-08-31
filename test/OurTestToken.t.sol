//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {OurToken} from "../src/OurToken.sol";
import {DeployOurContract} from "../script/DeployOurToken.s.sol";

contract TestOurToken is Test{
    OurToken public ourToken;
    DeployOurContract deployOurToken;

    address public bob = makeAddr("bob");
    address public alice = makeAddr("alice");

    function setUp() external {
        deployOurToken = new DeployOurContract();
        ourToken = deployOurToken.run();

        vm.prank(msg.sender);
        ourToken.transfer(bob, 100 ether);    
    }

    function testBobBalance() external view {
        assertEq(ourToken.balanceOf(bob), 100 ether);
    }

    function testAllownceBobApproveForAlice() external {
        vm.prank(bob);
        ourToken.approve(alice, 10 ether);
        assertEq(ourToken.allowance(bob, alice), 10 ether);

        vm.startPrank(alice);
        uint256 bobPreviouBalance = ourToken.balanceOf(bob);
        uint256 alicePreviousBalance = ourToken.balanceOf(alice);
        ourToken.transferFrom(bob, alice, 5 ether);
        assertEq(ourToken.balanceOf(bob), bobPreviouBalance - 5 ether);
        assertEq(ourToken.balanceOf(alice) , alicePreviousBalance + 5 ether);
        vm.stopPrank();
    }
}

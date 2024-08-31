//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurContract is Script {
    uint256 public constant _INITIAL_SUPPLY = 1000 ether;
    function run() external returns(OurToken){
        vm.startBroadcast();
        OurToken ot = new OurToken(_INITIAL_SUPPLY);
        vm.stopBroadcast();
        return ot;
    }
}

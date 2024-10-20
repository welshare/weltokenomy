// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {WelToken} from "../src/WelToken.sol";

contract DeployWelToken is Script {
    
    address sepoliaMultisig = 0x62ee749EA4d0407a2C44690933F58B05C7867e5f;

    function run() public {
        vm.broadcast();
        WelToken token = new WelToken(sepoliaMultisig);
        console.log("WEL_TOKEN=", address(token));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {WelshareHealthToken} from "../src/WelshareHealthToken.sol";

contract DeployWelToken is Script {
    
    address sepoliaMultisig = 0x62ee749EA4d0407a2C44690933F58B05C7867e5f;

    function run() public {
        vm.broadcast();
        WelshareHealthToken token = new WelshareHealthToken(sepoliaMultisig);
        console.log("WEL_TOKEN=", address(token));
    }
}

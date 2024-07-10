// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Oracle} from "../src/Oracle.sol";

contract OracleScript is Script {

    function run() public returns (Oracle){
        
        vm.startBroadcast();
        Oracle oracle = new Oracle();
        vm.stopBroadcast();
        return oracle;

    }
}

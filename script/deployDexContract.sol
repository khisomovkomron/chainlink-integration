// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {DexContract} from "../src/DexContract.sol";

contract DexContractScript is Script {

    function run() public returns (DexContract){
        
        vm.startBroadcast();
        DexContract dex = new DexContract(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        vm.stopBroadcast();
        return dex;

    }
}

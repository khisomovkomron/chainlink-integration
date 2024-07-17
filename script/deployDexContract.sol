// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {DexContract} from "../src/DexContract.sol";

contract DexContractScript is Script {
    function run() public returns (DexContract) {
        vm.startBroadcast();
        address priceFed = vm.envAddress("ETHUSD_PRICE_FEED_ADDRESS");
        DexContract dex = new DexContract(priceFed);
        vm.stopBroadcast();
        return dex;
    }
}

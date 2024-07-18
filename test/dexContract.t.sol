// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "lib/forge-std/src/Test.sol";
import {DexContractScript} from "../script/deployDexContract.sol";
import {DexContract} from "../src/DexContract.sol";

contract CounterTest is Test {
    DexContract public dex;

    function setUp() public {
        DexContractScript dexScript = new DexContractScript();
        dex = dexScript.run();
    }

}

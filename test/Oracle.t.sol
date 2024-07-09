// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {OracleScript} from "../script/deployOracle.sol";
import {Oracle} from "../src/Oracle.sol";

contract CounterTest is Test {
    Oracle public oracle;

    function setUp() public {
        OracleScript oracleScript = new OracleScript();
        oracle = oracleScript.run();
    }

}

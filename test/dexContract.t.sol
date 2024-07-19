// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "lib/forge-std/src/Test.sol";
import {DexContractScript} from "../script/deployDexContract.sol";
import {DexContract} from "../src/DexContract.sol";
import {PriceConsumerV3} from "../src/PriceConsumerV3.sol";

contract DexContractTest is Test {
    DexContract public dex;

    function setUp() public {
        DexContractScript dexScript = new DexContractScript();
        dex = dexScript.run();
    }

    function testSwapEthToUsd() public {
        PriceConsumerV3 price = PriceConsumerV3(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        uint256 ethPrice = uint256(price.getLatestPrice());
        uint256 USD = 5000;
        uint256 amount = dex.swapEthToUsd(USD);

        assertEq(ethPrice*USD, amount);

    }

}

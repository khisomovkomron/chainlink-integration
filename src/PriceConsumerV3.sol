// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {AggregatorV3Interface} from "lib/chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    // EVENTS
    event EventLogLatestPrice(int256 price);

    AggregatorV3Interface internal priceFeed;

    constructor(address _priceFeed) {
        priceFeed = AggregatorV3Interface(_priceFeed);
    }

    function getLatestPrice() public returns (int256) {
        (, int256 price,,,) = priceFeed.latestRoundData();

        return price;
        emit EventLogLatestPrice(price);
    }
}

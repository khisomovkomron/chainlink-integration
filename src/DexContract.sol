pragma solidity ^0.8.20;

import {PriceConsumerV3} from "./PriceConsumerV3.sol";

contract DexContract {
    PriceConsumerV3 public priceConsumer;

    constructor(address _priceConsumer) {
        priceConsumer = PriceConsumerV3(_priceConsumer);
    }

    function swapEthToUsd(uint256 _ethAmount) public view returns (uint256) {
        int256 ethUsdPrice = priceConsumer.getLatestPrice();
        require(ethUsdPrice > 0, "Invalid price");

        uint256 usdAmount = _ethAmount * uint256(ethUsdPrice) / 10 ** 18;
        return usdAmount;
    }
}

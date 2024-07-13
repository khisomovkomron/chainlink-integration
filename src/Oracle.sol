// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract Oracle {

    function getLatestPrice(address dataFeedAddress) public returns (int256 latestPrice){
    DataFeedsScript automationScript = new DataFeedsScript(dataFeedAddress);

    vm.broadcast();
    (,latestPrice,,,) = DataFeedsScript.getLatestRoundData();
    return latestPrice;
  }
}
}

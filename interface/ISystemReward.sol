//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

interface ISystemReward {
  function claimRewards(address payable to, uint256 amount) external returns(uint256 actualAmount);
}

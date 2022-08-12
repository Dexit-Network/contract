//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

interface IRelayerHub {
  function isRelayer(address sender) external view returns (bool);
}



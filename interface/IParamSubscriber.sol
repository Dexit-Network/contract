//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

interface IParamSubscriber {
    function updateParam(string calldata key, bytes calldata value) external;
}

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

interface IBSCValidatorSet {

  enum Status{  
        NotExist,
        Created,
        Staked,
        Unstaked,
        Jailed
  }

    struct Validator {
        address validator;
        Status status;
        uint256 amount; // self amount
        uint256 coins; //  self + delegators
        uint256 income; // self income
        uint256 totalincome; // total income
        address[] delegators;
  }



  function punish(address validator) external;
  
  function lowestCoinsInHighestValidator() external view returns ( uint256, uint256, address );
  
  function highestCoinsInCurrentValidatorsNotInTopValidator() external view returns (uint256, uint256, address);

  //function removeFromHighestValidatorList(address val) internal;

  function isTopValidator(address who) external view returns (bool);

  function getValidatorInfo(address val) external view returns ( address, Status, uint256, uint256, uint256, uint256, address[] memory );

  function getCoins(address val) external view returns ( uint256 );

  function getStatus(address val) external view returns ( Status );
  
  function checkOnlyValidator(address addr) external view;

  function isActiveValidator(address who) external view returns (bool);

  function MaxValidators() external view returns (uint256);

  function minimumStakeAmount() external view returns (uint256);

  function getValidators() external  view returns (address[] memory);

  function getCurrentValidators() external view returns (address[] memory);

  function updateVotingValues(string calldata variable_name, uint256 variable_value) external;
}

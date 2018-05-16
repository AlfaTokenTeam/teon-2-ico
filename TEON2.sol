pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TEON2 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TEON2(address _owner)  UpgradeableToken(_owner) {
    name = "TEON2";
    symbol = "TEON2";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
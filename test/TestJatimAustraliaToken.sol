pragma solidity >=0.4.25 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/JatimAustraliaToken.sol";

contract TestJatimAustraliaToken {

  function testInitialBalanceUsingDeployedContract() public {
    JatimAustraliaToken meta = JatimAustraliaToken(DeployedAddresses.JatimAustraliaToken());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 JatimAustraliaToken initially");
  }

  function testInitialBalanceWithNewJatimAustraliaToken() public {
    JatimAustraliaToken meta = new JatimAustraliaToken();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 JatimAustraliaToken initially");
  }

}

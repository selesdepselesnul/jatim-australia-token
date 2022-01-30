const ConvertLib = artifacts.require("ConvertLib");
const JatimAustraliaToken = artifacts.require("JatimAustraliaToken");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, JatimAustraliaToken);
  deployer.deploy(JatimAustraliaToken);
};

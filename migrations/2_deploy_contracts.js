const NCoin = artifacts.require("NCoin");

module.exports = function (deployer) {
  deployer.deploy(NCoin);
};
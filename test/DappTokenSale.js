var DappToken = artifacts.require("./DappTokenSale.sol");

contract('DappTokenSale', function(accounts)
 {
 	var tokenSaleInstance;
 	it('intializes the contract with the correct value', function(){
 	return DappTokenSale.deployed().then(function(instance){
 		tokenSaleInstance = instance;
 		return tokenInstance.address
 	}).then(function(address){
 		assert.notEqual(address, 0x0, 'has contract address')
 	});
 	});
 
	});
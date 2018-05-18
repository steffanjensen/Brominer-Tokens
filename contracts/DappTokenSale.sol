pragma solidity ^0.4.2;

import "./DappToken.sol";
contract DappTokenSale {
	address admin;
	DappToken public tokenContract;
	uint256 public tokenPrice;
	uint256 public tokenSold;

	function DappTokenSale(DappToken _tokenContract, uint256 _tokenPrice) public {
		admin = msg.sender;
		tokenContract = _tokenContract;
		tokenPrice = _tokenPrice;
		
	}

	function buyTokens(uint256 _numberOfTokens) public payable {
		// Require that  value is equal to tokens
		// Require that the contract has enough tokenSold
		// Require that transfer is successful
		// Keep track of tokenSold
		tokenSold += _numberOfTokens;
		// Trigger Sell Event
	}
}
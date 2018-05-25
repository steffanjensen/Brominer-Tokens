pragma solidity ^0.4.2;

import "./DappToken.sol";
contract DappTokenSale {
	address admin;
	DappToken public tokenContract;
	uint256 public tokenPrice;
	uint256 public tokensSold;

	event Sell(address _buyer, uint256 _amount);

	function DappTokenSale(DappToken _tokenContract, uint256 _tokenPrice) public {
		admin = msg.sender;
		tokenContract = _tokenContract;
		tokenPrice = _tokenPrice;
		
	}

	//multiply
	function multiply(uint x,uint y) internal pure returns(uint z){
		require(y == 0 || (z = x * y) / y == x);
	}

	function buyTokens(uint256 _numberOfTokens) public payable {
		require(msg.value == multiply(_numberOfTokens, tokenPrice));
		require(tokenContract.balanceOf(this) >= _numberOfTokens);
		// Require that transfer is successful
		// Keep track of tokenSold
		tokensSold += _numberOfTokens;
		// Trigger Sell Event
		Sell(msg.sender, _numberOfTokens);
	}

	// Ending Token Sale
	function endSale() public {
		// Require admin
		// Transfer remaining dapp tokens to admin
		// Destroy Contract
	}
}
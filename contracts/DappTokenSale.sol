pragma solidity ^0.4.2;

import "./DappToken.sol";
contract DappTokenSale {
	address admin;
	DappToken public tokenContract;
	uint256 public tokenPrice;

	function DappTokenSale(DappToken _tokenContract, uint256 _tokenPrice) public {
		admin = msg.sender;
		tokenContract = _tokenContract;
		tokenPrice = _tokenPrice;
		
	}
}
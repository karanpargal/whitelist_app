// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Whitelist{

    uint8 maxAddressToWhitelist;
    mapping (address => bool) public whitelisted;
    uint8 numAddressesWhitelisted;

    constructor(uint8 _maxAddressToWhitelist){
        maxAddressToWhitelist = _maxAddressToWhitelist;
    }

    function addressToWhitelist() public{
        require(!whitelisted[msg.sender],"Already Whitelisted");
        require(numAddressesWhitelisted<maxAddressToWhitelist,"No more spots");
        whitelisted[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }

}
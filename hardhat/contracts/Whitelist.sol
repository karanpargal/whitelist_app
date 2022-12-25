// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Whitelist{

    uint8 public maxAddressToWhitelist;
    uint8 public numAddressesWhitelisted;
    mapping (address => bool) public whitelisted;

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
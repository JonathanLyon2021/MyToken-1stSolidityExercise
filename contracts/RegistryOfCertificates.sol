// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CertificateRegistry{
    mapping(uint => bool)certificates;
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function add(uint hash) public {
        require(msg.sender == owner, "only the owner can invoke this!");

        certificates[hash] = true;
    }
    function verify(uint hash) public view returns(bool) {
        return certificates[hash];
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Incrementor {
    //persistent data stored in the blockchain
    uint private value;

        //change the persistent data field
    function increment(uint delta) public {
        value += delta;
    }

    //read the persistent data field
    function get() view public returns (uint) {
        return value;
    }
}
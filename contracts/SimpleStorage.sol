// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    //Contract body starts here:
    // define the integer data storage field named storedData
    //private means only I can read it, public would be everyone
    uint private storedData;

    //write a function to assign a value in the data storage field
    function set(uint x) public {
        storedData = x;
    }

    //write a function to read the current value from the data storage field on the blockchain
    function get() view public returns (uint){
        return storedData;
    }

}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LastInvoker {
    address lastInvoker;

    function getLastInvoker() public returns(bool, address){
       address prevInvoker = lastInvoker;
       lastInvoker = msg.sender;
       
        return (prevInvoker != address(0x0), prevInvoker);
    }
}
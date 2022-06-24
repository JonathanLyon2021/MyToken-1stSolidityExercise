// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleToken {
    //wallet balance
    mapping(address => uint) balanceOf;

    //initial supply
    constructor(uint initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
    }

    //transfer
    function transfer(address to, uint amount) public {
        require(balanceOf[msg.sender] >= amount);
        require(balanceOf[msg.sender] + amount > balanceOf[msg.sender]);

        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
    function balance() public view returns(uint) {
        return balanceOf[msg.sender];
    }
}
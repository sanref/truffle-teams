// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract NCoin {
    // variables
    mapping (address => uint) balance;

    //constructor
    constructor() public {
        balance[msg.sender] = 1000;
    }
    //Methods
    function send(address receiver, uint amount) public {
        require(balance[msg.sender] >= amount);
        balance[msg.sender] -= amount;
        balance[receiver] += amount;
    }

    function getBalance() public view returns(uint){
        return balance[msg.sender];

    }
}
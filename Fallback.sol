// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/*
fallback and receive is used to send eth directly to the contract
if there is msg.data then fallback function is called and of msg.data is empty them receive function is called
*/

contract Fallback {
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback",msg.sender, msg.value, msg.data);
    }
    receive() external payable {
        emit Log("receive",msg.sender,msg.value,"");
    }
}
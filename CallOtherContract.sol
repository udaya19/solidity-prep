// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract CallTestContract {
    function setX(address _test, uint _x) public {
        TestContract(_test).setX(_x);
    }
    function getX(address _test) public view returns(uint) {
        uint x = TestContract(_test).getX();
        return x;
    }

    function sendXAndSendEther(TestContract _test, uint _x) public payable {
        _test.sendXAndReceiveEther{value:msg.value}(_x);
    }
} 

contract TestContract {
    uint public x;
    uint public value = 123;
    function setX(uint _x) public {
        x = _x;
    }  

    function getX() public view returns (uint){
        return x;
    }

    function sendXAndReceiveEther(uint _x) public payable {
        x = _x;
        value = msg.value;
    }

    function getXAndValue() public view returns (uint, uint){
        return (x,value);
    }
    function getBalance() public view returns(uint){
       return address(this).balance;
    }
}
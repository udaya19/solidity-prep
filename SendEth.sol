// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SendEth {
    receive() external payable{}
   function sendViaTransfer(address payable _to) public payable {
       _to.transfer(123);
   }
   function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(123);
        require(sent,"Failed");
   }
   function sendViaCall(address payable _to) public payable {
       (bool success, ) = _to.call{value:123}("");
       require(success,"Failed");
   }
   function getBalance() public view returns(uint){
       return address(this).balance;
   }
}
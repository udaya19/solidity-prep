// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract EtherWallet {
    address payable public owner;
    constructor(){
        owner = payable(msg.sender);
    }
    receive() external payable {}
    function withdraw(uint _amount) public {
        require(msg.sender == owner,"You are not the owner");
        payable(msg.sender).transfer(_amount);
    }
    function getBalance() public view returns(uint){
       return address(this).balance;
   }
}

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract TestDelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }

}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
       (bool success, bytes memory data) = _test.delegatecall(abi.encodeWithSelector(TestDelegateCall.setVars.selector,_num));
       require(success,"Failed");
    }

} 
/*
here when we call funciton in TestDelegateCall contract the state variables in DelegateCall contract will get updated
and state variables in TestDelegateCall will not get updated
*/
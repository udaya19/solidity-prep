// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed
    }
    Status public status;

    function get() view external returns(Status){
        return status;
    }

    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }
}
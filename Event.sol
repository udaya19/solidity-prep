// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Event {
    event Log(string message, uint val);

    function example() public {
        emit Log("foo",123);
    }
}
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

library Math {
    function max(uint x, uint y) internal pure returns(uint) {
        return x>y?x:y;
    }
}

contract Test {
    function testMax(uint x, uint y) public pure returns (uint){
        return Math.max(x,y);
    }
}
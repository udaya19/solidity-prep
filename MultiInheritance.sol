// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/*
Order of inheritance - most base like to derived

   X
  /|
Y  |
 \ |
   Z
most base like contract is the contract with less inheritance therefore X is most base like contract
Z inherites from X and Y and for writing the contract we need to write in order of instance
*/

contract X {
    function foo() public pure virtual returns (string memory){//virtual-> this function can be inherited and customized by another contract 
        return "x";
    }

    function bar() public pure virtual returns(string memory){
        return 'x';
    }

    function x() public pure returns (string memory){
        return 'x';
    }
}

contract Y is X {
    function foo() public pure virtual override returns (string memory){//override-> this is the function we are going to override or customize
        return "y";
    }
    function bar() public pure virtual override returns(string memory){
        return 'y';
    }
    function y() public pure returns (string memory){
        return 'y';
    }
}

contract Z is X,Y{// order of instance X is most base like contract 
    function foo() public pure override(X,Y) returns (string memory){
        return "z";
    }
    function bar() public pure override(Y,X) returns(string memory){
        return 'z';
    }
    function z() public pure returns (string memory){
        return 'z';
    }
}
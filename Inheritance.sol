// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A {
    function foo() public pure virtual returns (string memory){//virtual-> this function can be inherited and customized by another contract 
        return "a";
    }

    function bar() public pure virtual returns(string memory){
        return 'b';
    }
}

contract B is A {
       function foo() public pure override returns (string memory){//override-> this is the function we are going to override or customize
        return "b";
    }
}
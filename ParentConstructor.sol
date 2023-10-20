// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


// ccalling a parent constructor
contract S {
    string public name;
    constructor(string memory _name){
        name = _name;
    }
}

contract T {
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}

// method-1
contract U is S("s"), T("t"){

}

// method-2
contract V is S,T{
    constructor(string memory _name,string memory _text) S(_name) T(_text){//order of S and T here doesn't matter

    }
}
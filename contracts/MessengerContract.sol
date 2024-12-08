// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract messenger{
    uint public counter;
    address public owner;
    string public myString;

    constructor(){
        owner = msg.sender;
    }

    function updateMess(string memory _newMessage)public{
        if(msg.sender == owner){
            myString = _newMessage;
            counter+=1;
        }
    }
}
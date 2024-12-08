// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
contract messenger{
    uint public counter;
    address public owner;
    string public myString;

    constructor(){ 
        owner = msg.sender;
    }

    function updateMess(string memory _newMessage)public payable {
        if(msg.sender == owner && msg.value >= 10 wei){
            myString = _newMessage;
            counter+=1;
        }
    }
    function sendMoney(address _receipeint) public payable {
        if(msg.value >= 10 ether){
            payable(_receipeint).transfer(msg.value);
        }else {
            payable (msg.sender).transfer(msg.value);
        }
    }
}
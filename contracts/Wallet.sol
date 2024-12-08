// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyWallet{
    uint public currentBalance;
    address owner;
    string public error;

    constructor(){
        owner = msg.sender;
        
    }

    function deposit() public payable{
        currentBalance = address(this).balance;
    }
    function withdraw(uint _amt)public payable {
        if(msg.sender==owner && _amt <= currentBalance){
            payable(msg.sender).transfer(_amt);
            currentBalance -= _amt;
        }else if (_amt > currentBalance){
            error = "low balance";
        }else {
            error = "no auth";
        }
    }

    function withdrawToAcc(address _add, uint _amt)public payable {
        if(msg.sender==owner && _amt <= currentBalance){
            payable(_add).transfer(_amt);
            currentBalance -= _amt;
        }else if (_amt > currentBalance){
            error = "low balance";
        }else {
            error = "no auth";
        }
    }

}
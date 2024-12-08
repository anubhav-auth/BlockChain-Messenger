// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract messenger{
    bool public fnCalled;


    receive() external payable {
        fnCalled = true;
    }
    fallback() external payable {
        fnCalled = true;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contract =~ classe no java
contract CheckinEstudos {
    mapping (address => uint) public diasEstudados;

    function fazerCheckin() public {
        diasEstudados[msg.sender] += 1;
    }

    function verDias() public view returns (uint) {
        return diasEstudados[msg.sender];
    }
}
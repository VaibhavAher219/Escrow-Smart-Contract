// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;
    uint public depositedAmount;
    event Approved(uint);
    bool public isApproved=false;

    constructor(address _arbiter,address _bene) payable{
        depositor=msg.sender;
        beneficiary=_bene;
        arbiter=_arbiter;   
        depositedAmount=address(this).balance;
    }
    function approve() external payable{
        require(arbiter==msg.sender,"Not allowed");
        (bool app,)=beneficiary.call{value:address(this).balance}("");
        require(app);
        isApproved=true;
        emit Approved(depositedAmount);
    }
    
}
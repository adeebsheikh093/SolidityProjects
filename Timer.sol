//SPDX-License-Identifier : UNLICENSED
pragma solidity ^0.6.0;

contract Timer{
    uint _start;
    uint _end;

    address payable public owner;


    constructor() public{
        owner=msg.sender;
        now-_end;
        
    }

    modifier timerOver{
        require(_end >= now , "Time Over");
        _;
    } 

    modifier costs(uint _amount){
        require(msg.value >=_amount, "Not enough ether");
        _;
    }    

    function start() public{
        _start = now;
        _end=now+10;
    }  


    receive() external payable  timerOver costs(0.000000002 ether) { 
        owner.transfer(msg.value);
    }


}

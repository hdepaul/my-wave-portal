// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) waveList;

    constructor() {
        console.log("Hi Guys, I am a contract and I am smart");
    }
    
    function wave() public {
        totalWaves += 1;
        waveList[msg.sender] = waveList[msg.sender] + 1;
        console.log("%d has waved!", waveList[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWavesByUser(address _address) public view returns (uint256) {
        console.log("We have %d total waves for user: %s !",  waveList[_address], _address);
        return waveList[_address];
    }
}
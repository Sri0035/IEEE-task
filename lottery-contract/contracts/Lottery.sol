// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Lottery {
    address public manager;                               //address of whose manging the contract(lottery)
    address payable[] public players;
    
    constructor() {
        manager = msg.sender;                            // manager to be created during instance creation
    }
    
    function enter() public payable {                    // funtion to enter the lottery, mimum requirement 0.01 ether
        require(msg.value > .01 ether);
        players.push(payable(msg.sender));
    }
    
    function random() private view returns (uint) {        // algo to randomly pick winner
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }
    
    function pickWinner() public restricted {              // winner picked using the random function
        uint index = random() % players.length;
        players[index].transfer(address(this).balance);
        players = new address payable[](0);
    }
    
    modifier restricted() {                              // function modifier to resctrict only for manager 
        require(msg.sender == manager);
        _;
    }
    
    function getPlayers() public view returns (address payable[] memory) {     //returns list of players
        return players;
    }
}   
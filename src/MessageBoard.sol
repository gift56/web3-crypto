// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract MessageBoard {
    address public owner;
    string[] public messages;

    event NewMessage(address indexed owner, string messages);

    constructor() {
        owner = msg.sender;
    }

    function postMessage(string memory message) public {
        messages.push(message);
        emit NewMessage(msg.sender, message);
    }

    function getMessagesCount() public view returns (uint256) {
        return messages.length;
    }

    function getMessage(uint256 index) public view returns (string memory) {
        require(index < messages.length, "No Messages Found!");
        return messages[index];
    }
}

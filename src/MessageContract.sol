// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ChatContract {
    struct Message {
        string content;
        address sender;
        address recipient;
    }

    // Mapping from a concatenated string of sender and recipient addresses to an array of messages
    mapping(string => Message[]) public conversations;

    function sendMessage(string memory content, address recipient) public {
        // Create a unique identifier for the conversation by concatenating the sender and recipient addresses
        string memory conversationId = string(abi.encodePacked(msg.sender, recipient));

        // Create a new message
        Message memory newMessage = Message({
            content: content,
            sender: msg.sender,
            recipient: recipient
        });

        // Add the message to the conversation
        conversations[conversationId].push(newMessage);
    }

    function getMessages(address sender, address recipient) public view returns (Message[] memory) {
        // Create a unique identifier for the conversation by concatenating the sender and recipient addresses
        string memory conversationId = string(abi.encodePacked(sender, recipient));

        // Return the messages for the conversation
        return conversations[conversationId];
    }
}

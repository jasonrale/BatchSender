// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BatchETHSender {
    function batchETHSend(address payable[] memory recipients, uint256 amount) public payable {
        require(msg.value == amount * recipients.length, "Insufficient ETH balance.");
        for (uint256 i = 0; i < recipients.length; i++) {
            recipients[i].transfer(amount);
        }
    }
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
 * @title A sample Raffle Contract
 * @author Rodrigo Moreira following Patrick Collins
 * @notice Creates a raffle contract
 * @dev Implements ChainLink VRFv2
 */
contract Raffle {

    error Raffle__NotEnoughEthSent();

    uint256 private immutable s_entranceFee;

    constructor(uint256 entranceFee) {
        s_entranceFee = entranceFee;
    }
    function enterRaffle() external payable {
        if (msg.value < s_entranceFee) {
            revert Raffle__NotEnoughEthSent();
        }
    }

    function pickWinner() public {
        // Pick the winner
    }

    /** Getter Functions */
    function getEntranceFee() public view returns (uint256) {
        return s_entranceFee;
    }
}

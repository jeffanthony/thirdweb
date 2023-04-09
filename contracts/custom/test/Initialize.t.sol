// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/Number.sol";

contract InitializeTest is Test {
    function setUp() public {}

    function testInitializeData() public {

        uint256 initialValue = 5; // Use a non-zero initial value of choice.

        emit log_bytes(
            abi.encodeCall(
                Number.initialize,
                (initialValue)
            )
        );
    }
}

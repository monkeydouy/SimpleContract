// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/SimpleContract.sol";

contract SimpleContractTest is Test {
    SimpleContract simpleContract = new SimpleContract("P@ssw0rd");

    function test() external {
        vm.startBroadcast();

        simpleContract.getCleared();
        simpleContract.authenticate(simpleContract.password());
        simpleContract.getCleared();

        vm.stopBroadcast();
    }
}
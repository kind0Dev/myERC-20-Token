// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeployMyToken is Script {
    uint256 public constant INITIAL_SUPPLY = 10000 ether;
    function run() external returns (MyToken) {
        vm.startBroadcast();
        MyToken myToken = new MyToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return myToken;
    }
}

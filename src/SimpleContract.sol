// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleContract {

    string public password;
    bool private cleared = false;

    constructor(string memory _password) {
        password = _password;
    }

    function authenticate(string memory _password) public {
        if(keccak256(abi.encodePacked(password)) == keccak256(abi.encodePacked(_password))){
            cleared = true;
        }
    }

    function getCleared() public view returns(bool){
        return cleared;
    }

}
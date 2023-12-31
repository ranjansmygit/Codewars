// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract HelloWorld {
  // State Variables
  string public greeting = ""; // Change this
  
  constructor() {
    greeting = "Hello World!";
  }
  // Endpoints
  function greet() public view returns (string memory){
    return greeting;
  }
  function setGreeting(string memory newGreeting) public {
    greeting = newGreeting;
  }
}
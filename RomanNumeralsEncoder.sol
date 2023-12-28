// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Kata {
 function solution(uint256 n) public pure returns (string memory) {
    uint16[13] memory values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    string[13] memory numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    
    string memory result = "";
    for (uint i = 0; i < values.length; i++) {
      while (n >= values[i]) {
        n -= uint256(values[i]);
        result = string(abi.encodePacked(result, numerals[i]));
      }
    }
    return result;
 }
}
/* Create a function with two arguments that will return an array of the first n multiples of x.
Assume both the given number and the number of times to count will be positive numbers greater than 0.
Return the results as an array or list ( depending on language ). */
// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;
contract CountByX {

  function countBy(uint256 x, uint256 n) public pure returns (uint256[] memory) {
    require(x > 0, "x must be a positive number");
    require(n > 0, "n must be a positive number");
    
    uint256[] memory z = new uint256[](n);
    
    for (uint256 i =0; i < n; i++){
      z[i] = x * (i + 1);
    }
    
    return z;
  }
}
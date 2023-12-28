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
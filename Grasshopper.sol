pragma solidity ^0.8.16;
contract Kata {
    function move (int p, int r) public pure returns (int) {
        return p + (r * 2);
    }
}
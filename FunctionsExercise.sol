// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract FunctionsExercise {
    uint256 public Number;
    function see() private view returns (uint256) {
        return Number;        
    }

    function unique() external pure returns (uint256) {
        return 2 + 8;
    }

    function childeren() internal view returns (uint256) {
        return Number;
    }
}

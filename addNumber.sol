// SPDX-License-Identifier: MIT
// ndgtlft etm.
pragma solidity ^0.8.20;

contract AddNumber {

    // 足し算をして結果を出力する
    function add(uint256 number, uint256 addNumber) external pure returns(uint256) {
        uint256 resultNumber = 0;
        require(5 >= numLengh(number) && 5 >= numLengh(addNumber), "num length is over!(5 num length)");
        resultNumber = number + addNumber;
        return resultNumber;
    }

    // 足し算の入力値の桁数を計算する
    function numLengh(uint256 number) internal pure returns (uint256) {
        uint256 length = 0;
        do {
            length++;
            number /= 10;
        } while (number > 0);
        return length;
    }

}

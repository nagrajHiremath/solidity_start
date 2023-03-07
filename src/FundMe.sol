//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract FundMe{
    uint public  number;

    /*
    payble: makes function payble
    fund function can holds a fund like wallet. contracts have address similar like wallet.
    require able to restrict that value must be lies in specific limit.
    */
    function fund() public payable {
        require(msg.value > 1e18, "Not enough eth"); //value should be greater than 1 eth
        number = msg.value;
    }
}
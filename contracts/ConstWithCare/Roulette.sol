// SPDX-License-Identifier: MIT
// pragma solidity ^0.4.18;
// pragma solidity ^0.5.1;
pragma solidity ^0.6.0;

import "@nomiclabs/buidler/console.sol";

contract Roulette {
    uint public pastBlockTime; // Forces one bet per block

    constructor() public payable {
        console.log( "Constructor Call" );
        printBlkInfo();
    } // initially fund contract

    function printBlkInfo() internal view {
        console.log( "blk.number :: %s", block.number );
        console.log( "blk.coinbase :: %s", block.coinbase );
        console.log( "blk.difficulty :: %s", block.difficulty );
        console.log( "blk.timestamp :: %s", block.timestamp );
        console.log( "blk.gaslimit :: %s", block.gaslimit );
        console.log( "tx.gasprice :: %s", tx.gasprice );
        console.log( "tx.origin :: %s", tx.origin );
    }

    receive () external payable {
        require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime); // only 1 transaction per block
        pastBlockTime = now;
        printBlkInfo();
        if(now % 15 == 0) { // winner
            msg.sender.transfer(address(this).balance);
        }
    }

    // fallback function used to make a bet
    fallback () external payable {
        require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime); // only 1 transaction per block
        pastBlockTime = now;
        printBlkInfo();
        if(now % 15 == 0) { // winner
            msg.sender.transfer(address(this).balance);
        }
    }
}

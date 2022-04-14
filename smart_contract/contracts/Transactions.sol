// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}


// // We create some public functions
// function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
//     transactionCounter +=1;
//     // we fill (push) a TransactionStruc Object into the array of Transactions
//     transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

//     // Now we prepped everything and must emit (sign) the tx
//     emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);

// }
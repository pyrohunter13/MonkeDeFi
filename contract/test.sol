pragma solidity 0.6.6;

contract WayakSmartContract{
int balance;
constructor() public {
    balance = 0;
}
function getBalance() view public returns(int){
    return balance;
}
function depositBalance(int amount) public{
    balance = balance + amount;
}
function withdrawBalance(int amount) public{
    balance = balance - amount;
}
}
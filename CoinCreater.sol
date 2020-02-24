pragma solidity 0.5.9;
contract minters{
    address public minter;
    mapping(address=>uint) public balance;
    event sent(address from , address to , uint amount);
    constructor() public {
        minter = msg.sender;
    }
    function mint(address myacc , uint amount) public {
        if(minter != msg.sender) return;
        balance[myacc] += amount;
    }
    function send(address receiver , uint amount) public {
        if(balance[msg.sender]<amount) return;
        balance[msg.sender] -= amount;
        balance[receiver] += amount;
        emit sent(msg.sender, receiver, amount);
    }
    
}
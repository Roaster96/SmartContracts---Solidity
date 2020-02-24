pragma solidity  ^0.5.9;
contract Bid {
    string name;
    uint bidamount=0;
    bool public  eligible;
    uint constant minbid=1000;
    
    function setname(string memory _name) public  {
        name = _name;
    }
     function setbidamount(uint _amount) public  {
     bidamount=_amount;
     }
     function checkeligible() public {
         if(bidamount>=minbid)
            eligible = true;
        else 
            eligible = false;
     }
}
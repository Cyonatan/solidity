pragma solidity ^0.4.0

contract mortal {
    adress owner;
    
    modifier onlyowner(){
        if (owner==msg.sender){
            _;
        }
        else{
            throw;
        }
        function mortal(){
            owner=msg.sender;
        }
        function suicide() onlyowner{
            suicide(owner);
        }
    }
}

pragma solidity 0.5.1;

contract walletTransfer {
    mapping(address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public  {
        wallet = _wallet;
    }
    
    function buyToken() public payable {
        //buyToken
        balances[msg.sender] +=1;
        //semd to wallet
        wallet.transfer(msg.value);
        
    }
}

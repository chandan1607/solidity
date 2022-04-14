//"SPDX-License-Identifier: MIT
pragma solidity 0.4.24;

contract TokenERC20{
    string public name = "Sccobydoop";
    uint public decimals =18;
    string public symbol = "SCB";
    uint256 public totalSupply = 100000000000000000000000000;
    mapping(address => uint) public balancesOf; 

    constructor () public{
        balancesOf[msg.sender] = totalSupply;
    }

    function _transfer(address _from, address _to, uint _value) internal{
        require(_to !=0x0);
        require(balancesOf[_from] >= _value);
        require(balancesOf[_to] + _value >= balancesOf[_to]);
        uint  provideBalances = balancesOf[_from] + balancesOf[_to];
        balancesOf[_from] -= _value;
        balancesOf[_to] += _value;

        assert(balancesOf[_from] + balancesOf[_to] == provideBalances);
    }
        
    function Airdrop(address _to, uint _value) public returns(bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }

    function burn(uint _value ) public returns(bool success){
        require(balancesOf[msg.sender] >= _value);
        balancesOf[msg.sender] -= _value;
        totalSupply -= _value;
        return true;
    }

}

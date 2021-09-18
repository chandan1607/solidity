pragma solidity ^0.6.0;

contract  SimpleStorge {
    
    uint256  favnumber ;
    
    People[] public person;
    mapping(string => uint256 ) public favto;
    struct People{
        uint256 number;
        string name;
    }
     
    function store (uint256 _favnumber) public {
        favnumber = _favnumber;
    }
    
    function retrive() public view returns(uint256){
        return favnumber;
    }
    
    function addPerson(uint256 _number,string memory _name) public{
        person.push(People(_number,_name));
        favto[_name] = _number;
    }
}

pragma solidity 0.5.1;

contract smart {
    person[] public people;
    uint256 public count;
    struct person {
        string firstName;
        string lastName;
        
    }
    function addPerson( string memory firstName, string memory lastName) public  {
        
        people.push(person(firstName,lastName));
        count += 1;
        
    }
}

//key value mapping 
contract smart{
    uint256 public count = 0;
    mapping(uint => person) public people;
    
    struct person{
        uint id;
        string firstName;
        string lastName;
        
    }
    function addPerson(string memory firstName , string memory lastName) public{
        count+=1;
        people[count] =person(count,firstName,lastName);
        
    }
}

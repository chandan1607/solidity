contract smart
{
    uint256 public count = 0;
    mapping(uint => person) public people;
    struct person
    {
        uint id;
        string firstName;
        string lastName;
        
    }
    function addPerson(string memory firstName , string memory lastName) public{
        count+=1;
        people[count] =person(count,firstName,lastName);
    }
}

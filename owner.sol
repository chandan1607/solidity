contract smart
{
    uint256 public count = 0;
    mapping(uint => person) public people;
    
    address owner;
    
    modifier onlyOwner () {
        require(msg.sender == owner);
        _;
    }
    
    constructor () public {
        owner = msg.sender;
    }
    
    struct person
    {
        uint id;
        string firstName;
        string lastName;  
    }
    function addPerson(
    string memory firstName ,
    string memory lastName
    ) 
    public 
    onlyOwner{
        increment();
        people[count] =person(count,firstName,lastName);
        
    }
    function increment () internal {
        count+=1;
    }
}


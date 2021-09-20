// SPDX-License_Identifier: MIT 

pragma solidity ^0.6.0;

import "./SimpleStorage.sol"; 
//contract StorageFactory is SimpleStorage {.......}
contract StorageFactory{
    
    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
        
    }
    
    function sfStore(uint256 _simpleStorgaeIndex, uint256 _simpleStorgaeNumber) public {
      SimpleStorage(address(simpleStorageArray[_simpleStorgaeIndex])).store(_simpleStorgaeNumber);
       
    }
   function sfGet(uint256 _simpleStorgaeIndex) public view returns(uint256){
       return SimpleStorage(address(simpleStorageArray[_simpleStorgaeIndex])).retrive();
   }
}

pragma solidity ^0.7.0;

contract challange5 {
    
    uint256 public definedPeriod;
    
    constructor() {
     definedPeriod = block.timestamp + 60 days;  
    }
    
    function withdrawEther(uint256 _timestamp) external {
        require(_timestamp >= definedPeriod, 'Duration incomplete.');
        msg.sender.call{value: address(this).balance}("");    
        
    }
    
    function send() external payable {
    }
    
    receive() payable external {}
}

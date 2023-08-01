/*
 * @来源: https://github.com/trailofbits/not-so-smart-contracts/blob/master/wrong_constructor_name/incorrect_constructor.sol
 * @作者: Ben Perez
 * 由Gerhard Wagner修改
 */

pragma solidity 0.4.24;

contract Missing{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    function Constructor()
        public 
    {
        owner = msg.sender;
    }

    function () payable {} 

    function withdraw() 
        public 
        onlyowner
    {
       owner.transfer(this.balance);
    }

}
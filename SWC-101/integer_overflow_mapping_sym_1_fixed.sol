//单笔交易溢出
//安全版本

pragma solidity ^0.4.16;

contract IntegerOverflowMappingSym1 {
    mapping(uint256 => uint256) map;

    function init(uint256 k, uint256 v) public {
        map[k] = sub(map[k], v);
    }

    //来自SafeMath
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);//SafeMath在这里使用assert
        return a - b;
    }
}
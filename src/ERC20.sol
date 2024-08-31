//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ManualToken {
    mapping(address => uint256) private s_balances;

    function name() public pure returns (string memory) {
        return "My Token";
    }

    function symbol() public pure returns (string memory) {
        return "MT";
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function totalSupply() public pure returns (uint256) {
        return 1000 * 10 ** decimals();
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return s_balances[_owner];
    }

    function transfer(address _to, uint256 _value) public {
        // uint256 previousBalance = balanceOf(msg.sender) + balnanceOf(_to);
        require(s_balances[msg.sender] >= _value, "");
        s_balances[msg.sender] -= _value;
        s_balances[_to] += _value;
    }
}

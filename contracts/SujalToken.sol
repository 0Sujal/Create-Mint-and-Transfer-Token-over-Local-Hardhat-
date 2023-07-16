// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SujalToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Mint(address indexed to, uint256 value);

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
        owner = msg.sender;
    }

    function transfer(address _to, uint256 _value) external returns (bool) {
        require(_to != address(0), "Invalid recipient address");
        require(_value <= balanceOf[msg.sender], "Insufficient balance");

        _transfer(msg.sender, _to, _value);
        return true;
    }

    function burn(uint256 _value) external returns (bool) {
        require(_value <= balanceOf[msg.sender], "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;
        emit Burn(msg.sender, _value);
        return true;
    }

    function mint(address _to, uint256 _value) external onlyOwner returns (bool) {
        require(_to != address(0), "Invalid recipient address");

        balanceOf[_to] += _value;
        totalSupply += _value;
        emit Mint(_to, _value);
        return true;
    }

    function _transfer(address _from, address _to, uint256 _value) internal {
        require(_to != address(0), "Invalid recipient address");
        require(_value <= balanceOf[_from], "Insufficient balance");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
    }
}
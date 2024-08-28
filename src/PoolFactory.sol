// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PoolFactory {
    error PoolFactory__IdenticalTokens();
    error PoolFactory__NotPoolFeeManager();
    error PoolFactory__PoolAlreadyExists();
    
    address private poolFeeReceiver;
    address private poolFeeManager;
    address[] private pools;
    mapping(address => mapping(address => address)) public poolExists;

    event PoolCreated(address indexed tokenA, address indexed tokenB, address pool);
    event PoolFeeManagerCreated(address indexed poolFeeManager);
    event PoolFeeManagerChanged(address indexed oldPoolFeeManager, address indexed newPoolFeeManager);

    constructor(address _poolFeeManager){
        poolFeeManager = _poolFeeManager;
        emit PoolFeeManagerCreated(poolFeeManager);
    }

    function createPool(address tokenA, address tokenB) external returns (address pool) {
    }

    function setPoolFeeReceiver(address _poolFeeReceiver) external {
    }

    function setPoolFeeManager(address _poolFeeManager) external {
    }

    function getPoolFeeReceiver() external {}

    function getPoolManager() external {}

    function getPools() external {}
}
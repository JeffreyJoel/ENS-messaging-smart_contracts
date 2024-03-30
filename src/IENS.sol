// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IENS{
    struct UserInfo {
        string name;
        string imageUrl;
    }

    function createENS(string memory name, string memory imageUrl) external;
    function getAddressByName(string memory name) external view returns (address);
    function getNameByAddress(address addr) external view returns (string memory);
    function getUserInfo(address addr) external view returns (string memory, string memory);
    function getUserInfoByName(string memory name) external view returns (string memory, string memory);
    function userExists(address addr) external view returns (bool);
    function nameExists(string memory name) external view returns (bool);
    function getAllUsers() external view returns (UserInfo[] memory);
}

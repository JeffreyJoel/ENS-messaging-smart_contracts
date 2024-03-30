// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.13;

// import "forge-std/Test.sol";
// import {ENSContract} from "../src/EnsContract.sol";
// import {ChatContract} from "../src/ChatContract.sol";


// contract CounterTest is Test {
//     ENSContract public ens;
//     ChatContract public chat;

//     address A = address(0xa);
//     address B = address(0xb);

//     function setUp() public {
//         //deploy facets
//         ens = new ENSContract();
//         // dChat = new Chat(address(dENS));

//         //make addresses
//         A = makeAddr("Account A");
//         B = makeAddr("Account B");
        
//     }


//   // ENS Contract TEST
//     function testSetNameRevertWith() public {
//         vm.s (A);
//         ens.setName("SOGO", "QGYSIUHD");

//         switchSigner(B);

//         vm.expectRevert(
//             abi.encodeWithSelector(ENS.NAME_ALREADY_EXISTED.selector)
//         );

//         dENS.setName("SOGO", "DUTFDYUUY");
//     }

//     function testSetNameFromAddress() public {
//         switchSigner (A);
//         dENS.setName("SOGO", "QGYSIUHD");
//         string memory _name = dENS.getProfileFromAddress(A).name;

//         vm.assertEq(_name, "SOGO");
//     }

//     function testSetNameFromName() public {
//         switchSigner(A);
//         dENS.setName("SOGO", "QGYSIUHD");
//         address _address = dENS.getProfileFromName("SOGO").userAddress;

//         vm.assertEq(_address, A);
//     }
// }

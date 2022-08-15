// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "../HypercertMinterV0.sol";

contract HypercertMinter_Upgrade is HypercertMinterV0 {
    event Split(uint256 fromID, uint256[] toID);

    function split(uint256 id) public {
        require(exists(id), "Mint: token does not exist");
        uint256[] memory newIDs = new uint256[](1);
        newIDs[0] = id + 1;
        emit Split(id, newIDs);
    }

    function version() public pure virtual override returns (uint256) {
        return 1;
    }
}

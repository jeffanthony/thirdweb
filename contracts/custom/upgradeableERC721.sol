// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../node_modules/@thirdweb-dev/contracts/base/ERC721Drop.sol";
import "../node_modules/@thirdweb-dev/contracts/extension/Upgradeable.sol";
import "../node_modules/@thirdweb-dev/contracts/extension/Initializable.sol";


contract UpgradeableERC1155 is Upgradeable, Initializable, 
ERC721Drop("UpgradeableERC721", "U721", msg.sender, 130, msg.sender) {
    address public deployer;
	constructor() initializer {}

	function initialize() external initializer {deployer = msg.sender;}

	function _authorizeUpgrade(address) internal view override {
		require(msg.sender == deployer);
	}
}

import "./opensea.sol";
pragma solidity ^0.4.13;

contract OwnableDelegateProxy is OwnedUpgradeabilityProxy {

    function yeet {}

    constructor(address owner, address initialImplementation, bytes calldata)
        public
    {
        yeet();
        setUpgradeabilityOwner(owner);
        _upgradeTo(initialImplementation);
        require(initialImplementation.delegatecall(calldata));
    }

}
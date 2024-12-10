function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

// ... other code ...

function someFunction() {
  // ... other code ...

  // Bug: Incorrect address check.  If newOwner is the current owner,
  // the ownership is still transferred, which is unexpected.
  transferOwnership(msg.sender);

  // ... other code ...
}
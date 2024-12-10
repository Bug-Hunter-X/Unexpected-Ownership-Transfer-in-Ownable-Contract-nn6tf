function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(newOwner != _owner, "Ownable: newOwner is the current owner");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

// ... other code ...

function someFunction() {
  // ... other code ...

  // Fixed: Now prevents self-transfers
  transferOwnership(msg.sender); // This will revert the transaction

  // ... other code ...
} 
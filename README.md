# Unexpected Ownership Transfer in Ownable Contract

This repository demonstrates a common bug in DApps involving unexpected behavior in an Ownable contract's ownership transfer function. The bug allows the current owner to seemingly transfer ownership to themselves which may be against the contract's logic, and could be exploited to bypass security checks.

## Bug Description
The `transferOwnership` function in the original contract code lacks a proper check to prevent the current owner from transferring ownership to themselves. This leads to unexpected behavior where the `TransferOwnership` event is emitted, and ownership appears to change, even though it remains with the same address.

## Solution
The corrected code introduces a check to prevent this by ensuring that the new owner is different from the current owner before executing the transfer. This prevents the current owner from transferring ownership to themselves.
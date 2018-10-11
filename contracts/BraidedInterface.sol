pragma solidity ^0.4.24;

// A common external interface to Braided contracts
interface BraidedInterface {
  function addChain(uint, address, bytes32, string) external;
  function getChainCount() external view returns (uint);
  function getBraidedContract(uint) external view returns (address);
  function getGenesisBlockHash(uint) external view returns (bytes32);
  function getChainDescription(uint) external view returns (string);
  function addAgent(address, uint) external;
  function removeAgent(address, uint) external;
  function addBlock(uint, uint, bytes32) external;
  function getBlockHash(uint, uint) external view returns (bytes32);
  function getHighestBlockNumber(uint) external view returns (uint);
  function getPreviousBlockNumber(uint, uint) external view returns (uint);
  function getPreviousBlock(uint, uint) external view returns (uint, bytes32);
}
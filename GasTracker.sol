// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title GasTracker
 * @dev Tracks gas usage for specific functions and stores it for retrieval.
 */
contract GasTracker {
    // Event to emit gas usage
    event GasUsed(address indexed user, string functionName, uint256 gasUsed);

    // Struct to store gas usage data
    struct GasData {
        address user;
        string functionName;
        uint256 gasUsed;
    }

    // Array to store all gas usage records
    GasData[] public gasRecords;

    /**
     * @dev Tracks gas usage for a specific function.
     * @param functionName The name of the function being called.
     */
    function trackGas(string calldata functionName) external {
        uint256 initialGas = gasleft(); // Gas at the beginning of the function

        // Simulate some logic (replace with actual logic if needed)
        uint256 temp = 0;
        for (uint256 i = 0; i < 100; i++) {
            temp += i;
        }

        // Calculate gas used
        uint256 gasUsed = initialGas - gasleft();

        // Save the gas data
        gasRecords.push(GasData(msg.sender, functionName, gasUsed));

        // Emit the event
        emit GasUsed(msg.sender, functionName, gasUsed);
    }

    /**
     * @dev Fetches all gas usage records.
     * @return An array of GasData records.
     */
    function getGasRecords() external view returns (GasData[] memory) {
        return gasRecords;
    }

    /**
     * @dev Fetches gas records by a specific user.
     * @param user The address of the user.
     * @return An array of GasData records for the specified user.
     */
    function getGasRecordsByUser(address user) external view returns (GasData[] memory) {
        uint256 count;
        for (uint256 i = 0; i < gasRecords.length; i++) {
            if (gasRecords[i].user == user) {
                count++;
            }
        }

        GasData[] memory userRecords = new GasData[](count);
        uint256 index;
        for (uint256 i = 0; i < gasRecords.length; i++) {
            if (gasRecords[i].user == user) {
                userRecords[index] = gasRecords[i];
                index++;
            }
        }

        return userRecords;
    }
}

# Shodan Mass IP Checker

This is a simple Bash script to perform a mass check of IP addresses using Shodan. The script reads a list of IP addresses from a file, queries Shodan for each IP, and saves the results to a text file.

## Prerequisites

Before running the script, make sure you have the following:

1. **Shodan CLI**: You need to have the Shodan command-line interface installed. You can install it using pip:

   ```bash
   pip install shodan
   
2. **Shodan API Key**: You need a Shodan API key to use the Shodan CLI. If you don't have one, you can get it by signing up on [Shodan](https://account.shodan.io/register).

3. **API Key Configuration**: Initialize your Shodan CLI with your API key:

   ```bash
   shodan init <YOUR_API_KEY>

   ## Script Description

The script `shodan_check.sh` performs the following tasks:

1. Reads a list of IP addresses from `ips.txt`.
2. For each IP address, it queries Shodan using the `shodan host` command.
3. Appends the results to `shodan_results.txt`, including a separator for clarity.

### File Structure

- `ips.txt`: A text file containing a list of IP addresses, one per line.
- `shodan_check.sh`: The Bash script that performs the mass check.
- `shodan_results.txt`: The output file where results are saved.

### How to Use

1. **Prepare the IP List**: Create a file named `ips.txt` in the same directory as the script. Add each IP address on a new line.

2. **Run the Script**: Execute the script by running the following command in your terminal:

   ```bash
   ./shodan_check.sh

3. **View the Results**: After the script finishes running, check the `shodan_results.txt` file for the output. This file will contain the Shodan results for each IP address queried.

### Notes

- **Ensure that you have sufficient API quota on Shodan**, as querying a large number of IPs may consume your available API requests.
- **The script will append new results to `shodan_results.txt`.** If you want a fresh start, consider deleting or renaming the existing `shodan_results.txt` file before running the script.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

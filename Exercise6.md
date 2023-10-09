# Exercise 6


 **Task**:


 (*193.16.20.35/29*)

 a.) What is the Network IP, number of hosts, range of IP addresses and broadcast IP from this subnet?

Instruction: Submit all your answer as a markdown file in the folder for this exercise.


- To Find A **Network* IP
- Convert the subnet mask to binary: 11111111.11111111.11111111.11111000
- Apply the binary subnet mask to the given IP:
- So, the network IP is 193.16.20.32.
- For Example: 193.16.20.35  => 11000001.00010000.00010100.00100011
-  Subnet Mask    => 11111111.11111111.11111111.11111000
-  Network IP     => 11000001.00010000.00010100.00100000 (193.16.20.32)
-  Network IP     => 11000001.00010000.00010100.00100000 (193.16.20.32)


- To Know The Number Of Hosts:
- In a /29 subnet, there are 3 bits available for host addresses because 32 - 29 = 3. This means there are 2^3(2x2x2)= 8 possible host addresses. However, 2 addresses are reserved for the network address and broadcast address.
-  so you have 6 usable host addresses.


- To Know The Range of IP addresses:
- The range of IP addresses within this subnet can be calculated by incrementing the host portion of the network IP. Since there are 6 usable host addresses,
- Starting IP: 193.16.20.32
- Ending IP: 193.16.20.39


- To Know The Broadcast IP
- The broadcast IP address is the last address in the subnet range.
- In this Case, it's 193.16.20.39.


- Summary:
- Network IP: 193.16.20.32
- Number of Hosts: 6
- Range of IP Addresses: 193.16.20.32 to 193.16.20.39
- Broadcast IP: 193.16.20.39




  

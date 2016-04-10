# fdb_bug
Prereq - Working installtion of Virtual Box

Run the setup.sh script which will perform the following actions:
Install a vagrant image of ubuntu (note this version is not managed by me and may chage in the future. Verify Kernel is 3.13)
Setup a linux bridge and vxlan
Append 73 entries to the fdb bridge

After - run the command "bridge fdb show | wc -l" to view the number of entries

Step 1: Install Apache Cassandra on Each Node 
1. Download Apache Cassandra: 
o Visit the Apache Cassandra Download Page. 
o Download the appropriate version for your operating system. 
2. Install Apache Cassandra: 
o Follow the installation instructions specific to your operating system. 
3. Start Apache Cassandra: 
o On each node, start the Cassandra server by running cassandra -f. 
Step 2: Configure Nodes to Form a Cluster 
1. Edit the cassandra.yaml File: 
o Locate the cassandra.yaml configuration file, typically found in the conf directory 
of your Cassandra installation. 
o Update the following settings on each node: 
cluster_name: 'MyCassandraCluster' 
Node-specific settings: 
• Node 1 (Seed Node): 
listen_address: <IP_OF_NODE_1> 
rpc_address: <IP_OF_NODE_1> 
seeds: "<IP_OF_NODE_1>" 
Node 2: 
listen_address: <IP_OF_NODE_2> 
rpc_address: <IP_OF_NODE_2> 
seeds: "<IP_OF_NODE_1>" 
Node 3: 
listen_address: <IP_OF_NODE_3> 
Department of IT 
27  
rpc_address: <IP_OF_NODE_3> 
seeds: "<IP_OF_NODE_1>" 
Start Cassandra on Each Node: 
• After configuring the cassandra.yaml file, start the Cassandra server on each node by 
running cassandra -f. 
Verify the Cluster: 
• Use the nodetool status command on any node to check the status of the cluster. This 
should show all the nodes in the cluster and their statuses. 
$ nodetool status 
Step 3: Create a Keyspace and Tables 
1. Open Cassandra CQLSH: 
o Open a terminal or command prompt. 
o Start the Cassandra Query Language Shell (CQLSH) by running cqlsh from any 
node. 
2. Create a Keyspace: 
Create a keyspace with replication across the cluster. 
CREATE KEYSPACE library WITH REPLICATION = { 'class': 'SimpleStrategy', 
'replication_factor': 3 }; 
Use the Keyspace: 
• Switch to the newly created keyspace. 
USE library; 
Create Tables: 
• Create tables in the keyspace. 
CREATE TABLE authors ( AuthorID int PRIMARY KEY, FirstName text, LastName text ); 
Step 4: Insert Data -- Insert data into Authors Table 
INSERT INTO authors (AuthorID, FirstName, LastName) VALUES (1, 'George', 'Orwell'); 
INSERT INTO authors (AuthorID, FirstName, LastName) VALUES (2, 'Aldous', 'Huxley'); 
INSERT INTO authors (AuthorID, FirstName, LastName) VALUES (3, 'J.K.', 'Rowling'); 
Department of IT  
28  
Step 5: Query Data 
SELECT * FROM authors; 
authorid | firstname | lastname 
+ + 
1 | George | Orwell 
2 | Aldous | Huxley 
3 | 
J.K. |  Rowling 
Step 6: Update Data 
UPDATE authors SET LastName = 'Smith' WHERE AuthorID = 1; 
Step 7: Query Data After Update 
SELECT * FROM authors WHERE AuthorID = 1; 
authorid | firstname | lastname 
+ + 
1 | George | Smith 
Step 8: Delete Data 
DELETE FROM authors WHERE AuthorID = 1; 
Step 9: Verify Deletion 
SELECT * FROM authors WHERE AuthorID = 1; 
OUTPUT 
(Empty result set)

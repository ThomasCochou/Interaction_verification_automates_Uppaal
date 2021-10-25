//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
P4_B
*/
flagBob == UP --> bob.CS

/*
P4_A
*/
flagAlice == UP --> alice.CS

/*
P3
*/
A<> (alice.CS | bob.CS)

/*
P1
*/
A[] !(alice.CS & bob.CS)

/*
P2
*/
A[] !deadlock

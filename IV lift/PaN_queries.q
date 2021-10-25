//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
PA
*/
A[] !deadlock

/*
P2
*/
A[] train.Close imply warnings.On

/*
P2
*/
A[] train.Gone imply warnings.Off

/*
P4
*/
A[] train.Passing imply gate.Close

/*
P5
*/
A[] train.Far imply gate.Open

/*
P6
*/
gate.Lowering --> gate.Open

/*

*/
LAST QUERY

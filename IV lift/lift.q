//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
P6: Il existe un chemin o\u00f9 l\u2019ascenseur n\u2019atteint jamais l\u2019\u00e9tage 4
*/
E[] currentFloor !=4

/*
P5_4: Pour tous les \u00e9tages, si le bouton correspondant est appuy\u00e9, l'ascenseur s'arr\u00eate
\u00e9ventuellement \u00e0 cet \u00e9tage et la porte s\u2019ouvre.
*/
(btn[4]) --> (currentFloor == 4 & doorIsOpen & !engineIsOn)

/*
P5_3: Pour tous les \u00e9tages, si le bouton correspondant est appuy\u00e9, l'ascenseur s'arr\u00eate
\u00e9ventuellement \u00e0 cet \u00e9tage et la porte s\u2019ouvre.
*/
(btn[3]) --> (currentFloor == 3 & doorIsOpen & !engineIsOn)

/*
P5_2: Pour tous les \u00e9tages, si le bouton correspondant est appuy\u00e9, l'ascenseur s'arr\u00eate
\u00e9ventuellement \u00e0 cet \u00e9tage et la porte s\u2019ouvre.
*/
(btn[2]) --> (currentFloor == 2 & doorIsOpen & !engineIsOn)

/*
P5_1: Pour tous les \u00e9tages, si le bouton correspondant est appuy\u00e9, l'ascenseur s'arr\u00eate
\u00e9ventuellement \u00e0 cet \u00e9tage et la porte s\u2019ouvre.
*/
(btn[1]) --> (currentFloor == 1 & doorIsOpen & !engineIsOn)

/*
P5_0: Pour tous les \u00e9tages, si le bouton correspondant est appuy\u00e9, l'ascenseur s'arr\u00eate
\u00e9ventuellement \u00e0 cet \u00e9tage et la porte s\u2019ouvre.

*/
(btn[0]) --> (currentFloor == 0 & doorIsOpen & !engineIsOn)

/*
P4_4: Pour tous les \u00e9tages, si la porte est ouverte le bouton est appuy\u00e9.
*/
A[] doorIsOpen imply  btn[currentFloor] == true 

/*
P3: La porte ne doit jamais \u00eatre ouverte lorsque l\u2019ascenseur est en mouvement.
*/
A[] doorIsOpen & !engineIsOn

/*
P2: Il existe un chemin menant \u00e0 une configuration o\u00f9 tous les boutons sont appuy\u00e9s
*/
E<> btn[0] & btn[1] & btn[2] & btn[3] & btn[4]

/*
P1: Pas de deadlock.

*/
A[] !deadlock

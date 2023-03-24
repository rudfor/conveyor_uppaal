//This file was generated from (Academic) UPPAAL 4.1.26-1 (rev. 7BCF30B7363A9518), February 2022

/*
deadlock check 
*/
A[] not deadlock

/*

*/
E<> Bag(0).Destination_A

/*

*/
E<> Bag(0).Destination_B

/*

*/
E<> Bag(0).Finish

/*

*/
E<> Bag(1).Finish

/*

*/
E<> forall(i:t_id) Bag(i).Finish

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=79))

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=133))

/*

*/
A[](not (Bag(1).fb0_stopped or Bag(1).fb1_stopped) imply (Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=79)))

/*

*/
E<> (Bag(0).Destination_A and Bag(0).x_bag >=78)

/*

*/
E<> (Bag(1).Destination_A and Bag(1).x >=79)

/*

*/
E<> (Bag(1).Destination_A || Bag(1).Destination_B )

/*

*/
Bag(0).Destination_A --> Bag(0).Finish

/*
for all the paths, there will be no collition in the critical area collision zero or one
*/
A<> (collision[0] <= 1 and collision[1] <= 1)

/*
There are no deadlock in the system
*/
A[] not deadlock

/*
All the bags in destination A will arrive to state finish
*/
Bag(0).Destination_A --> Bag(0).Finish

/*
leads to 
*/
-->

/*
For all the execution paths, the bag zero in destination A have a the black color.
*/
A[] Bag(0).Destination_A imply Bag(0).color == BLACK\


/*
For all the execution paths, the bag one in destination A have a the black color.
*/
A[] Bag(1).Destination_A imply Bag(1).color == BLACK\


/*
For all the execution paths, the bag one in destination A have a the black color. In the other case that the same bag in in destination B then in have the color yellow. 
*/
A[] (Bag(1).Destination_A imply Bag(1).color == BLACK) and (Bag(1).Destination_B imply Bag(1).color == YELLOW) \


/*
There exists a path where bag zero gets to either destination A or destination B
*/
A<> (Bag(0).Destination_A or Bag(0).Destination_B)

/*

*/
E<>(Bag(0).Initalized) --> (Bag(0).Destination_A or Bag(0).Destination_B) 

/*
There exists a path where bag one gets to either destination A or destination B
*/
E<> (Bag(1).Destination_A or Bag(1).Destination_B)

/*
There exists a path where all the bags in the sysyem gets to either destination A or destination B
*/
E<> forall(i:t_id)(Bag(i).Destination_A or Bag(i).Destination_B)

/*

*/
E<> Bag(1).Destination_B

/*

*/
E<> Bag(0).Finish

/*

*/
E<> Bag(1).Finish

/*

*/
E<> forall(i:t_id) Bag(i).Finish

/*

*/
E<>(Bag(1).Destination_A and Bag(1).x <82)

/*

*/
E<> (Bag(0).Destination_A and Bag(1).x >=79)

/*

*/
E<> (Bag(1).Destination_A and Bag(1).x >=79)

/*

*/
E<> (Bag(1).Destination_A || Bag(1).Destination_B )

/*

*/
Bag(0).Destination_A --> Bag(0).Finish

/*

*/
forall(i:t_id) Bag(i).

/*

*/
E<>  Bag(1).Initalized --> (Bag(1).Destination_A || Bag(1).Destination_B )

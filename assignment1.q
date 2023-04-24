//This file was generated from (Academic) UPPAAL 4.1.26-1 (rev. 7BCF30B7363A9518), February 2022

/*

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
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=133))

/*

*/
A[](Bag(1).Destination_B imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=133 and Bag(1).color == YELLOW))

/*

*/
A[]((Bag(1).Destination_B and Bag(1).feedBelt==0) imply (Bag(1).x_bag >=121 and Bag(1).x_bag <=133 and Bag(1).color == YELLOW))

/*

*/
A[]((Bag(1).Destination_B and Bag(1).feedBelt==0) imply (Bag(1).x_bag >=122 and Bag(1).x_bag <=133 and Bag(1).color == YELLOW))

/*

*/
A[]((Bag(1).Destination_A and Bag(1).feedBelt==0) imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=133 and Bag(1).color == BLACK))

/*

*/
A[]((Bag(1).Destination_A and Bag(1).feedBelt==0) imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=132 and Bag(1).color == BLACK))

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74))

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=158 and Bag(1).color == BLACK))

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag <=158))

/*

*/
A[](Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=133))

/*

*/
A[](not (Bag(1).fb0_stopped or Bag(1).fb1_stopped) imply (Bag(1).Destination_A imply (Bag(1).x_bag >=74 and Bag(1).x_bag <=79)))

/*

*/
A[] (Bag(0).Destination_A imply Bag(0).x_bag >=74)

/*

*/
A[] (Bag(0).Destination_A imply Bag(0).x_bag <174)

/*

*/
E<> (Bag(1).Destination_A and Bag(1).x >=79)

/*
not finished
*/
E<>(Bag(1).Destination_A || Bag(1).Destination_B )

/*

*/
Bag(0).Destination_A --> Bag(0).Finish

/*

*/
Bag(0).color== YELLOW --> Bag(0).Destination_B

/*
for all the paths, there will be no collition in the critical area collision zero or one
*/
A[] (collision[0] <= 1 and collision[1] <= 1)

/*

*/
E[] (collision[0] <= 1 and collision[1] <= 1)

/*
All the bags in destination A will arrive to state finish
*/
Bag(0).Initalized --> Bag(0).Finish

/*

*/
A[] (forall(i:t_id)(Bag(i).c1) imply (feed_on[0]!=0 and feed_on[1]!=0 and dis_on!=0))

/*
For all the execution paths, the bag zero in destination A have a the black color.
*/
A[] Bag(0).Destination_A imply Bag(0).color == YELLOW\


/*

*/
A[] Bag(0).Destination_A imply Bag(0).color == BLACK\


/*

*/
A[] Bag(0).Destination_B imply Bag(0).color == YELLOW

/*

*/
A[] Bag(0).Destination_B imply Bag(0).color == BLACK

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
A[] (forall(i:t_id) Bag(i).fb0_pre_sensor <=1 and Bag(i).fb0_sensor <=1 and Bag(i).fb0_post_sensor <=1 and Bag(i).fb0_pre_stop<=1 and Bag(i).fb0_stop<=1) 

/*

*/
A[] (forall(i:t_id) Bag(i).fb1_pre_sensor <=1 and Bag(i).fb1_sensor <=1 and Bag(i).fb1_post_sensor <=1 and Bag(i).fb1_pre_stop<=1 and Bag(i).fb1_stop<=1) 

/*

*/
A[] (forall(i:t_id) Bag(i).c1 <=1 and Bag(i).c2<=1 and Bag(i).d1 <=1 and Bag(i).d2<=1 and Bag(i).e1<=1 and Bag(i).e2<=1 and Bag(i).f<=1) 

/*

*/
A<> Bag(1).x_bag >= 200 imply (Bag(1).Destination_A || Bag(1).Destination_B )

/*
Verified 
*/
A[] (Bag(1).Destination_A imply Bag(1).color == BLACK) \
     and (Bag(1).Destination_B imply Bag(1).color == YELLOW)

/*

*/
A[] (collision[0] <= 1 and collision[1] <= 1)

/*

*/
A[] ( forall(i:t_id) Bag(i).fb0_pre_sensor <=1 \
      and Bag(i).fb0_sensor <=1 and Bag(i).fb0_post_sensor <=1 \
      and Bag(i).fb0_pre_stop<=1 and Bag(i).fb0_stop<=1        ) 

/*

*/
A[] ( forall(i:t_id) Bag(i).fb1_pre_sensor <=1 \
      and Bag(i).fb1_sensor <=1 and Bag(i).fb1_post_sensor <=1 \
      and Bag(i).fb1_pre_stop<=1 and Bag(i).fb1_stop<=1        ) \


/*

*/
A[] ( forall(i:t_id) Bag(i).c1 <=1 and Bag(i).c2<=1\
      and Bag(i).d1 <=1 and Bag(i).d2<=1 and Bag(i).e1<=1 \
      and Bag(i).e2<=1 and Bag(i).f<=1                         ) 

/*

*/
A[] (forall(i:t_id)(Bag(i).c1) imply (feed_on[0]!=0 and feed_on[1]!=0 and dis_on!=0))

/*

*/
A[] (forall(i:t_id) ((Bag(i).c1) or (Bag(i).c2) or (Bag(i).d1) or (Bag(i).d2) or\
(Bag(i).e1) or (Bag(i).e2) or (Bag(i).f)) imply (dis_on!=0))

/*

*/
A<> Bag(1).x_bag >= 200 imply (Bag(1).Destination_A || Bag(1).Destination_B ) \


/*

*/
Bag(0).initial --> Bag(0).Finish

/*

*/
Bag(0).fb0_pre_sensor --> Bag(0).Finish

/*

*/
forall(i:t_id) Bag(i).fb0_pre_sensor --> forall(i:t_id) Bag(i).Destination_A

/*

*/
A[] singleFeedBelt imply not deadlock

/*

*/
A[] singleFeedBelt imply not deadlock

/*

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
A[] (Bag(0).Destination_A imply Bag(0).x_bag >=74)

/*

*/
E<> (Bag(1).Destination_A and Bag(1).x >=79)

/*
not finished
*/
E<>(Bag(1).Destination_A || Bag(1).Destination_B )

/*

*/
Bag(0).Destination_A --> Bag(0).Finish

/*

*/
Bag(0).color== YELLOW --> Bag(0).Destination_B

/*
for all the paths, there will be no collition in the critical area collision zero or one
*/
A[] (collision[0] <= 1 and collision[1] <= 1)

/*

*/
E[] (collision[0] <= 1 and collision[1] <= 1)

/*
All the bags in destination A will arrive to state finish
*/
Bag(0).Initalized --> Bag(0).Finish

/*

*/
A[] (forall(i:t_id)(Bag(i).c1) imply (feed_on[0]!=0 and feed_on[1]!=0 and dis_on!=0))

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
\/\/E<>(Bag(0).Initalized) --> (Bag(0).Destination_A or Bag(0).Destination_B) 
*/
//NO_QUERY

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
Bag(1).Initalized --> (Bag(1).Destination_A || Bag(1).Destination_B )

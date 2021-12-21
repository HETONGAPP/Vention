This project can not be rebuild and remake!!!
Project (Vention)


    Vention
      ├── CMakeLists.txt
      ├── build
      ├── bin
      │   └── main
      ├── include
      │   └── Car.h
      │   └── ConcreteObserver.h
      │   └── ConcreteSubject.h
      │   └── Observer.h
      │   └── Subject.h
      │   └── Thread.h
      ├── src
      │   ├── CMakeLists.txt
      │   ├── Car
      │   └── Observer
      │   └── serv_msgs
      │   └── Thread
      └── tst
          ├── CMakeLists.txt
 	  ├── Formula-test.cpp
	  └── main.cpp


/****************Instruction of this API****************/
	
1. Run the API

	Terminal1 $ cd /Vention_path/bin
	          $ ./main

2. Change the position and speed of the cars

	In terminal1:
		     press 'p' charactor in keyboard and folowed by "ENTER" 
                     then following the instruction msg from the terimal
		     after setting the customed config 
                     press 'r' charactor in keyboard and folowed by "ENTER" 
		     To exit the API
                     press 'q' charactor in keyboard and folowed by "ENTER" 

3. Communicating with ROS

	In Terminal1 $ roscore 

	In Terminal2 $ source /vention_path/build/devel/setup.bash
                     $ rostopic echo /Position_msg

	In Terminal3 $ cd /Vention_path/bin
	             $ ./main


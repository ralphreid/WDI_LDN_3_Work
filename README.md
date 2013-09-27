# WDI LONDON SEPTEMBER 2013


## How it works
This repository is for the day to day submissions of the homework of the students. 

Each student has a different folder at the root of the repository. Inside each "student folder", the structure should be one folder per day named like `w1d1` for week 1 day 1. Inside this folder should be:

* a readme.md containing notes from the student about the day. (blockers , reminders....)
* a folder "classwork" where the student puts the work they've done during class
* a folder "homework" containing the code for the homework.

Another folder called "ASSIGNMENTS" at the root of the folder contains the homework assignments for each day.


This structure looks like this :

```
  ASSIGNMENTS
    |-> w1d1.md
    |-> w1d2.md
    | ~~~~
    |-> w12d5.md
  Alice
    |->w1d1
    |   |-> readme.md
    |   |-> classwork
    |   |   |-> topic_1
    |   |   |-> topic_2 
    |   |-> homework
    |       |-> work.rb
    |->w1d2
    |   |-> readme.md
    |   |-> classwork
    |   |   |-> topic_1
    |   |   |-> topic_2 
    |   |-> homework
    |   |   |-> mta_lab.rb
  Bob
    |->w1d1
    |   |-> readme.md
    |   |-> classwork
    |   |   |-> topic_1
    |   |   |-> topic_2 
    |   |-> homework
    |       |-> work.rb
    |->w1d2
    |   |-> readme.md
    |   |-> classwork
    |   |   |-> topic_1
    |   |   |-> topic_2 
    |   |-> homework
    |   |   |-> mta_lab.rb
```



## homework submission

On day 1, all the students fork the project, then they work on separate branches every day. For the homework on week 1 day 1, Alice will work on a branch called `w1d1-alice` and push this branch to her fork. Once pushed, she will do a PR on the master folder.

The PR's will be accepted only if: 

  * the branch name is correct 
  * the readme.md for the day contains comments (blockers, successes, questions the student may have after homeworks)
  * the PR is only about files in the student repository ie: don't put things in other people's folders
  * the homework requirements are met
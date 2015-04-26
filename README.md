# diamond-kata

A friend of mine mentioned this kata to me and I was excited to try it out.  The basics are straightforward:

Given 'a', print "a"

Given 'b', print the following:

    "_a_"
    "b_b"
    "_a_"

Given 'c', print the following:

    "__a__"
    "_b_b_"
    "c___c"
    "_b_b_"
    "__a__"

and so on...

The difficulty is not writing a small program that does what you want, it's in test-driving such a program.  
There are many blog posts about this kata, one of which, by [Alistair Cockburn]((http://alistair.cockburn.us/Thinking+before+programming)),
has the following to say:

>What struck me in Seb’s recounting of people’s approach to the problem is they first get the ‘A’ case working:

        ‘A’

>Then they shuffle around a bit to get the ‘B’ case working:

        . A .
        B . B
        . A .

>And then all the work that they did so far is of no use to them whatsoever when they hit ‘C’, because that’s where 
all the complexity is. In essence, they have to solve the entire problem, and throw away masses of code, when they 
hit ‘C’.

>It reminds me of the story of incremental development and jumping to the moon:  

>Step 1: Go out and buy really good sneakers.  
>Step 2: Do warmup exercises.  
>Step 3: Jump really really really high, like, to the moon.

>This is not the interesting form of incremental development. Can we do better?

So this is my attempt to do better.  

recordings of the code:

#

1.  "Starving Looper"
    https://www.ampled.com/artist/streamerd/post/2011

2.  "Lunar Discovery"
    https://www.ampled.com/artist/streamerd/post/2014

3.  "Hard Shit"
    https://www.ampled.com/artist/streamerd/post/2016

4.  "Low Rider"
    https://www.ampled.com/artist/streamerd/post/2013

5.  "Horny Mystery"
    https://www.ampled.com/artist/streamerd/post/2015

6.  "Rainy Day Pianos"
    https://www.ampled.com/artist/streamerd/post/2051

7.  "Stranging Things"
    /ll be recorded and published before 2022

so far, all made with sonic-pi synthesizer:

https://sonic-pi.net


in addition to sonic-pi's standard sample library used in the first loops, instrumental samples from `Sonatina Symphonic Orchestra`, there as well:

      https://github.com/peastman/sso

# how to use this code?
simply download that and paste the code, then include corresponding samples as well. or just check how it is working and make your own tunes! 

first defined the path to the folder, having those instruments. you can simply create one folder without going to all that; 

however here's how it is, when samples are organised as in per-instrument folder structure (as in original Sonatina file set)

`attention`:  
one tricky thing, you need to rename files, when they are having a bit long names with some characters (eg. #) that sonic-pi throws an err upon.

`good news`
tune and scale namings for those instruments in code are working, you can use those file names as starters `(eg. "violin-e5")`.

here's how we play a sample:

`folderName, "sampleFileName", ...otherParams...`

```
# stranging_things.rb

violins = "< absolute path to violins folder >"
bassClarinets = "< absolute path to bassClarinets folder>"
...


8.times do
      sleep 2
      sample violins, "violin-e5", amp: 1 
      ...
```



in real world, there is no wall between players and instruments. let's reflect that soon by changing this division as well.

`what's next?`

well, for now, as part of learning process and an invitation for collabs, I am leaving things raw and less opinionated, more experimental. 
in fact, if sounds like some tune, I am keeping them a bit `raw`.

will publish new versions of them as they evolve, 

in branches sourcing from those initial code and making of new records on upon merges.

from there, will extend the idea on `NFTs` and `DAOs`.

for a collectively evolving and branching song scenario. 

thinking of creating this `inter-versions/ multi-staking` phenomenon, in time.

so NFTs of those new versions will be published in LocalZines project as well.

checkItOut and link to a slide, describing that, to umbrella project:https://stateful.art.

participants in $genre DAOs will be able initiate new branches around new samples, request new connection to other genres and whatnot.

and those participants are not limited to people and organisations of us. 

`peace, in & out.`

project will also generate versions by reflecting to what nature feels like in different localities and time.

`if you'd like to collaborate, feel free contact me. I`
`I'd be happy to listen to your ideas and projects, and help out as much as I can.`

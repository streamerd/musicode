coding and recordings made with https://sonic-pi.net

basically, if you copy-paste song code and run on sonic-pi you installed on your machine, you'll hear them right away. 

recordings of the code reside @
https://www.ampled.com/artist/streamerd

so far, these are part of the learning and sometimes, going totally experimental and throwing some tunes and configurations.

at the 7th piece, ```storm keeper```, also used a simpl randomisation on amp values. just check ruby-lang for that.
to the end of the file, you'll notice that those amp and sleep times are generated and used as ```a_low_amp``` and ```a_low_amp``` from those arrays.

`simply, anything goes`. 

good news. reading data from nature sounds like a good idea to start soon. 
I want plants and animals all around and even in remotes, have a voice and acknowledgement in our lives and cities. 

awared and bewared, by nature, through art. 

I am quite excited to see them being decisive on how and whether or not devices displaying NFTs will be turned on/off or switch in moods, make some noise or go silent @ galleries or open spaces, wherever they are sound and visible; as in reality.

we have to let them speak up! 

human rights is what we push forward and scale in the world, yet we have to do this in non-anthropocentric way, without going all solely human-centered either.

listen to this song maybe:
Moondog - Enough about human rights
https://www.youtube.com/watch?v=-dLPsw3i_P8

with using stats available online first, and then directly from identified plants in real world; 

in fact to realise there is no nature and outside-of-nature kind of situation.
it is the way we are living or not, in a natural and way, with really organic connections.

long story on that, this is an open call for collabs as well.

as https://stateful.art, will join to Sovereign Nature Initiative's hackathon with Odyssey @ Feb 4-6, 2022.

https://sovereignnature.com/projects/odyssey2022



``` low_amps = [0, 0.1, 0.2, 0.4, 0.6, 0.8]
high_amps = [1, 1.2, 1.4, 1.6, 1.8, 2]

# define sleep times
low_sleep_times = [0, 0.1, 0.2, 0.4, 0.6, 0.8]
high_sleep_times = [1, 1.2, 1.4, 1.6, 1.8, 2]

##| live_loop :pia do
#define a random high and low amper value
a_low_amp = low_amps.shuffle.first
a_high_amp = high_amps.shuffle.first

....

live_loop :crunchy do
  sleep 24
  sync :intro_bass
  sample horns, "horn-e2", amp: a_high_amp
  ```

applied a random selection of amplifiers, from low and highs somehow to add some generative flavour.

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
    
7. "Storm Keeper"
    https://www.ampled.com/artist/streamerd/post/2154

8.  "Stranging Things"
    stays as code for now /ll be recorded and published before 2022


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
checkout the repo and there's also link to a slide:

https://github.com/stateful-art/local-zines


participants in $genre DAOs will be able initiate new branches around new samples, request new connection to other genres and whatnot.

and those participants are not limited to people and organisations of us. 

`peace, in & out.`

project will also generate versions by reflecting to what nature feels like in different localities and time.

`if you'd like to collaborate, feel free contact me. I`
`I'd be happy to listen to your ideas and projects, and help out as much as I can.`

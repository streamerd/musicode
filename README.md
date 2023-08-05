recordings of the code:

#

1.  "Starving Looper"
    https://audius.co/streamerd_/low-rider-431870

2.  "Lunar Discovery"
    https://audius.co/streamerd_/lunar-discovery-431869

3.  "Hard Shit"
    https://audius.co/streamerd_/hard-shit-431872

4.  "Low Rider"
    https://audius.co/streamerd_/low-rider-431870

5.  "Horny Mystery"
    https://audius.co/streamerd_/horny-mystery-431871

6.  "Rainy Day Pianos"
    https://audius.co/streamerd_/rainy-day-pianos

7.  "Rhythmic Surrender"
    https://audius.co/streamerd_/rhythmic-surrender

8.  "Zero-sum Fame"
    https://audius.co/streamerd_/zero-sum-fame

9.  "Knight Wider"
    https://audius.co/streamerd_/knight-wider
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



`if you'd like to collaborate, feel free contact me. `







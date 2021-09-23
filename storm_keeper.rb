# storm keeper

basses = "/Users/streamerd/devel/musicode/Basses"
horns = "/Users/streamerd/devel/musicode/horns"
flutes = "/Users/streamerd/devel/musicode/Flutes"

low_amps = [0, 0.1, 0.2, 0.4, 0.6, 0.8]
high_amps = [1, 1.2, 1.4, 1.6, 1.8, 2]

# define sleep times
low_sleep_times = [0, 0.1, 0.2, 0.4, 0.6, 0.8]
high_sleep_times = [1, 1.2, 1.4, 1.6, 1.8, 2]

##| live_loop :pia do
#define a random high and low amper value
a_low_amp = low_amps.shuffle.first
a_high_amp = high_amps.shuffle.first

live_loop :intro_bass do
  sample basses, "basses-piz-rr1-a1", amp: 2
  sleep 0.4
  sample basses, "basses-piz-rr1-a2", amp: 1
  sleep 0.4
  sample basses, "basses-piz-rr1-a2", amp: 1
  sleep 2
  sample basses, "basses-piz-rr1-a1", amp: 2
  sleep 0.8
  
  sample basses, "basses-piz-rr1-a2", amp: 1
  
end

live_loop :flutely do
  sleep 12
  sync :intro_bass
  sample flutes, "flutes-stc-rr1-a4", amp: 6.4
  sleep 4
  sample flutes, "flutes-stc-rr1-a4", amp: 3.6
  sleep 6
  
  sample flutes, "flutes-stc-rr1-a4", amp: 3.6
  sleep 1
end

live_loop :crunchy do
  sleep 24
  sync ::intro_bass
  sample horns, "horn-e2", amp: a_high_amp
  sleep 2
  sample horns, "horn-g2", amp: a_high_amp
  sleep 1
end

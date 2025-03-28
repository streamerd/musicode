
horns = "/Users/streamerd/devel/musicode/horns/"

violins = "/Users/streamerd/devel/musicode/Violins/"
use_bpm 128


live_loop :x do
  ##| sleep 1.2
  sample :drum_bass_hard, amp: 1.2
  
  sample violins, "violin-c5", amp: 0.4, rate: 0.6
  
  sleep (ring, 4, 8, 8, 12, 12, 16, 32).tick
  sleep 1
  5.times do
    sample :drum_bass_soft, amp: 1
    ##| sleep 0.8
    sleep (ring, 0.6, 0.8, 0.8, 1, 1, 2.4).tick
    
  end
end

live_loop :x_f do
  sync :x
  sleep 36
  
  sample horns, "horn-g3", amp: 2, rate: 1
  sleep 6
  sample violins, "violin-g3", amp: 0.4  , rate: 0.6
  sleep 4
  ##| sample violins, "violin-a4", amp: 0.2, rate: 0.2
  sample violins, "violin-c5", amp: 0.6, rate: 0.2
  
end

##| live_loop :x_f_a do
##|   sync :x
##|   sleep 32
##|   ##| sleep (ring, 1, 1.2, 1.4, 1.6).tick
##|   sample :drum_bass_hard
##|   sleep 1
##|   sample :drum_bass_hard
##| end


live_loop :y do
  sync :x
  sleep 1.8
  play (ring, 80, 76, 68, 64).tick, amp: 1.0
  sleep 0.6
  sample :ambi_piano, amp: 3, attack_level: 2.0
end

live_loop :z do
  sync :y
  sleep 0.6
  play (ring, 76, 76, 64, 64).tick, amp: 1.2
end







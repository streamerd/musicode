
##| live_loop :rythmus do
##|   sleep 2
##|   sample :perc_impact1
##|   sleep 0.6
##|   play 60
##|   sleep 1
##|   play 80
##|   sample :perc_snap
##| end

live_loop :reflektion do
  ##| sleep 1
  ##| 4.times do
  ##|   sample :vinyl_scratch, attack_level: 2
  ##| end
  
  #sync :rythmus
  
  sleep 2
  ##| sample :drum_bass_soft
  ##| sleep 0.6
  ##| sample :drum_cowbell
  ##| sleep 0.6
  ##| sample :vinyl_scratch
  ##| sleep 0.3
  ##| sample :drum_cowbell
  ##| sleep 0.4
  ##| sample :vinyl_scratch
  ##| sleep 0.4
  ##| sample :drum_cowbell
  ##| sleep 0.4
  
  
  ##| sample :vinyl_scratch
  ##| sleep 0.4
  ##| sample :vinyl_scratch
  ##| sleep 0.4
  ##| sample :vinyl_scratch
  ##| sample :vinyl_scratch
  ##| sleep 0.2
  ##| sample :vinyl_scratch
  ##| sleep 0.2
  ##| sample :vinyl_scratch
  ##| sample :vinyl_scratch
  ##| sleep 0.4
  ##| sample :vinyl_scratch
  ##| sleep 0.4
  ##| sample :vinyl_scratch
  ##| sample :vinyl_scratch
  
  
  4.times do
    sleep 1
    sample :tabla_dhec , rate: 2
    sleep 0.3
    sample :ambi_haunted_hum
  end
  
  play 60
  play 48
  
  sample :drum_heavy_kick
  
  sample :drum_heavy_kick
  
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  
  
  sleep 0.4
  sample :vinyl_scratch
  sample :drum_heavy_kick
  sleep 0.2
  sample :vinyl_scratch
  sleep 0.2
  sample :vinyl_scratch
  sample :drum_heavy_kick
  
  sample :vinyl_scratch
  sleep 0.4
  sample :vinyl_scratch
  sleep 0.4
  sample :vinyl_scratch
  sample :drum_heavy_kick
  
  sample :vinyl_scratch
  
  
end

# sample :perc_snap

##| 3.times do
##|   sample :perc_door, rate: 2
##| end

##| live_loop :y do
##|   sleep 2
##|   sync :x
##|   play 48
##|   6.times do
##|     sample :bass_thick_c, rate: 2
##|     sleep 1
##|   end



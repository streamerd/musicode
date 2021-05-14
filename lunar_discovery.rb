# Lunar Discovery

# Lightweight & shallow
# observations and contemplations
# upon the first landings.

# record is here https://soundcloud.com/atyilmaz/lunar-discovery

live_loop :light_notes do
  sleep 1
  play 66
  sleep 0.2
  play 88
  sleep 0.8
  play 44
end

live_loop :x do
  
  4.times do
    sleep 0.5
    sample :drum_bass_hard, rate: 2, attack_level: 1
  end
  
  4.times do
    sample :drum_tom_mid_hard
    sleep 0.4
    sample :drum_bass_hard
  end
  
  sleep 0.4
  sample :drum_bass_hard
  
  sync :light_notes
  
  sleep 4
  sample :ambi_lunar_land , rate: 0.8
  
end
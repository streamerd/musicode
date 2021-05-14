# Hard Shit

# recording:
# https://soundcloud.com/atyilmaz/hard-shit

live_loop  :hard do
  #sample :perc_door, rate: 2
  sleep 2
  sample :drum_bass_hard, rate: 3
  sleep 1.4
  sample :ambi_drone
end

live_loop :shit do
  sleep 2
  sync :hard
  play 48
  6.times do
    sample :bass_thick_c, rate: 2
    sleep 1
  end
  
end
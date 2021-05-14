# starving looper
# made with sonic-pi

live_loop :reflektion do
  sleep 2
  
  2.times do
    sample :bass_dnb_f
    sleep 0.4
    sample :bass_dnb_f
    sleep 0.4
    sample :bass_dnb_f
    sleep 0.4
    
  end
  
  sample :perc_snap
  sleep 0.6
  
  2.times do
    sample :bass_dnb_f
    sleep 0.4
    sample :bass_dnb_f
    sleep 0.4
    sample :bass_dnb_f
    sleep 0.2
    sample :perc_snap
  end
  
end

live_loop :x do
  sleep 1
  sample :ambi_haunted_hum
  
  sleep 4
  sample :glitch_perc1
  sleep 0.4
  sample :glitch_perc1
end

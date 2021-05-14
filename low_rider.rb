
live_loop :low_rider do
  sleep 2
  
  sample :drum_heavy_kick
  
  sample :drum_heavy_kick
  
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  sample :drum_bass_soft
  sample :drum_bass_soft, rate: 2
  sleep 0.2
  sample :drum_bass_soft, rate: 2
  sample :drum_bass_soft
  sleep 0.2
  
  
  3.times do
    sample :bass_dnb_f
    sleep 1.5
  end
  
  sample :ambi_dark_woosh
  
  sample :drum_bass_soft
  sample :drum_bass_soft
  sleep 0.2
  
  sample :drum_heavy_kick
  sample :drum_heavy_kick
  sleep 1
  sample :drum_heavy_kick
  
  sleep 0.3
  sample :drum_heavy_kick
  sleep 0.3
  sample :drum_heavy_kick
  
  3.times do
    sample :bass_dnb_f
    sleep 1.5
    sample :drum_bass_soft
    sleep 0.5
    sleep 0.2
    sample :perc_swoosh
    sample :drum_bass_soft
    sleep 0.2
  end
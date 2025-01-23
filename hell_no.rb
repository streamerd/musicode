microkorg = "/Users/streamerd/devel/musicode/samples/3microkorg"

use_bpm 128  # Classic electronic tempo

# Deep bass foundation
live_loop :deep_bass do
  with_fx :lpf, cutoff: 80 do
    sample microkorg, "MicrodeepBass", amp: 0.7, beat_stretch: 4
    sleep 4
  end
end

# Fat bass sequence
live_loop :fat_bass_groove do
  bass_pattern = ["Micro fat bass 1", "Micro fat bass 4", 
                 "Micro fat bass 7", "Micro fat bass 13"]
  
  bass_pattern.each do |bass|
    with_fx :distortion, distort: 0.3 do
      sample microkorg, bass, amp: 0.6, rate: 1
      sleep 2
    end
  end
end

# Main synth melody
live_loop :synth_lead do
  synth_notes = ["Micro 2", "Micro 5", "Micro 8", "Micro 11"]
  
  with_fx :reverb, room: 0.7 do
    synth_notes.each do |note|
      sample microkorg, note, amp: 0.5
      sleep 1
    end
  end
end

# Rhythmic bass hits
live_loop :rhythm_bass do
  with_fx :slicer, phase: 0.25, wave: 0 do
    sample microkorg, "Mkbass 3", amp: 0.6, beat_stretch: 2
    sleep 2
  end
end

# Atmospheric layers
live_loop :atmosphere do
  with_fx :echo, phase: 0.75, decay: 4 do
    sample microkorg, "Micro 15", amp: 0.4, rate: 0.8
    sleep 8
  end
end

# Random high synth accents
live_loop :synth_sparkles do
  sleep 4
  if one_in(3)
    with_fx :reverb, room: 0.9 do
      sample microkorg, ["Micro 13", "Micro 17"].choose, 
        amp: 0.3, 
        rate: rrand(0.9, 1.1)
    end
  end
  sleep 4
end

# Bass variation every 16 beats
live_loop :bass_variation do
  sleep 16
  with_fx :wobble, phase: 2, wave: 1 do
    sample microkorg, "Micro fat bass 15", 
      amp: 0.6, 
      beat_stretch: 4
  end
  sleep 16
end

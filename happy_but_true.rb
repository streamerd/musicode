microkorg = "/Users/streamerd/devel/musicode/samples/3microkorg"
violins = "/Users/streamerd/devel/musicode/samples/Violins"
basses = "/Users/streamerd/devel/musicode/samples/Basses"
percussion = "/Users/streamerd/devel/musicode/samples/Percussion"

use_bpm 128  # Keep original tempo

# Original Electronic Base

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

# New Orchestral Layers (Starting after 24 seconds)

# Violin melody layer
live_loop :violin_melody do
  sleep 24  # Wait 24 seconds before starting
  
  violin_pattern = ["violin-e4", "violin-g4", "violin-a4", "violin-c5"]
  
  with_fx :reverb, room: 0.9 do
    with_fx :echo, mix: 0.3, phase: 0.75 do
      2.times do
        sample violins, violin_pattern.ring.tick, 
          amp: 0.3, 
          attack: 0.1, 
          release: 0.8
        sleep 2
      end
    end
  end
end

# Orchestral bass complement
live_loop :orchestral_bass do
  sleep 24  # Wait 24 seconds before starting
  
  use_random_seed 456
  bass_notes = ["basses-sus-c2", "basses-sus-f#2", "basses-sus-a2"]
  
  with_fx :reverb, room: 0.8, mix: 0.5 do
    sample basses, bass_notes.choose, amp: 0.4
    sleep 4
  end
end

# Timpani accents
live_loop :timpani_groove do
  sleep 32  # Wait even longer for percussion
  
  sample percussion, "timpani-f-rh-c2", amp: 0.3
  sleep 8
  sample percussion, "timpani-p-rh-a1", amp: 0.2
  sleep 8
end

# Violin harmonics layer
live_loop :violin_harmonics do
  sleep 40  # Wait longer for ethereal elements
  
  with_fx :reverb, room: 0.95, mix: 0.7 do
    if one_in(2)
      sample violins, "violin-a5", 
        amp: 0.2, 
        rate: 0.8,
        attack: 0.5, 
        release: 1.5
    end
  end
  sleep 8
end

# Dramatic orchestral hits
live_loop :dramatic_hits do
  sleep 48  # Wait even longer for dramatic elements
  
  if one_in(3)
    with_fx :reverb, room: 0.9 do
      sample basses, "basses-stc-rr1-c2", 
        amp: 0.4,
        attack: 0.1,
        release: 0.8
      sample percussion, "timpani-roll-crsc-c2", 
        amp: 0.3,
        attack: 0.2,
        release: 1.5
    end
  end
  sleep 16
end

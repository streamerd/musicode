microkorg = "/Users/streamerd/devel/musicode/samples/3microkorg"
violins = "/Users/streamerd/devel/musicode/samples/Violins"
basses = "/Users/streamerd/devel/musicode/samples/Basses"
percussion = "/Users/streamerd/devel/musicode/samples/Percussion"

use_bpm 120  # Slowed down from 128

# Original deep bass foundation
live_loop :deep_bass do
  with_fx :lpf, cutoff: 80 do
    sample microkorg, "MicrodeepBass", amp: 0.7, beat_stretch: 4
    sleep 4
  end
end

# Fat bass sequence from original
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

# New orchestral bass layer
live_loop :orchestral_bass do
  use_random_seed 456
  bass_notes = ["basses-sus-c2", "basses-sus-f#2", "basses-sus-a2"]
  
  with_fx :reverb, room: 0.8, mix: 0.5 do
    sample basses, bass_notes.choose, amp: 0.4
    sleep 4
  end
end

# Violin melody layer
live_loop :violin_melody do
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

# Main synth melody (modified from original)
live_loop :synth_lead do
  synth_notes = ["Micro 2", "Micro 5", "Micro 8", "Micro 11"]
  
  with_fx :reverb, room: 0.7 do
    synth_notes.each do |note|
      sample microkorg, note, amp: 0.4  # Reduced amplitude to make room for strings
      sleep 1
    end
  end
end

# Rhythmic percussion addition
live_loop :percussion_groove do
  sample percussion, "timpani-f-rh-c2", amp: 0.3
  sleep 4
  sample percussion, "timpani-p-rh-a1", amp: 0.2
  sleep 4
end

# Atmospheric layers (modified from original)
live_loop :atmosphere do
  with_fx :echo, phase: 0.75, decay: 4 do
    sample microkorg, "Micro 15", amp: 0.3, rate: 0.8
    sleep 8
    
    # Add violin harmonics occasionally
    if one_in(2)
      sample violins, "violin-a5", amp: 0.2, attack: 0.5, release: 1.5
    end
  end
end

# Bass variation with orchestral complement
live_loop :bass_variation do
  sleep 16
  with_fx :wobble, phase: 2, wave: 1 do
    sample microkorg, "Micro fat bass 15", 
      amp: 0.5, 
      beat_stretch: 4
    
    # Add orchestral bass accent
    sample basses, "basses-stc-rr1-c2", 
      amp: 0.4,
      attack: 0.1,
      release: 0.8
  end
  sleep 16
end

# Optional: Uncomment for dramatic timpani hits
# live_loop :dramatic_hits do
#   sleep 32
#   sample percussion, "timpani-roll-crsc-c2", 
#     amp: 0.4, 
#     attack: 0.2, 
#     release: 1.5
#   sleep 32
# end

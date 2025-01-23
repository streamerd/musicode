microkorg = "/Users/streamerd/devel/musicode/samples/3microkorg"
violins = "/Users/streamerd/devel/musicode/samples/Violins"
tambour = "/Users/streamerd/devel/musicode/samples/Tambour"
basses = "/Users/streamerd/devel/musicode/samples/Basses"

use_bpm 90  # Moderate tempo for a long journey

# Deep bass foundation
live_loop :deep_bass_journey do
  with_fx :lpf, cutoff: 70 do
    sample microkorg, "MicrodeepBass", amp: 0.7, beat_stretch: 8
    sleep 8
  end
end

# Rhythmic tambour pattern
live_loop :tambour_rhythm do
  pattern = [:hit_f, :rest, :hit_mf, :rest, :hit_f, :hit_mf, :rest, :hit_mf]
  
  pattern.each do |hit|
    if hit != :rest
      sample tambour, hit.to_s.gsub("_", "-"), 
        amp: 0.5,
        attack: 0.05,
        release: 0.3
    end
    sleep 1
  end
end

# Violin main theme
live_loop :violin_theme do
  use_random_seed 567
  
  16.times do |i|
    violin_notes = ["violin-a4", "violin-c5", "violin-e5", "violin-g4"]
    
    with_fx :reverb, room: 0.8, mix: 0.6 do
      sample violins, violin_notes[i % 4], 
        amp: 0.4,
        attack: 0.1,
        release: 1.5
      sleep 2
    end
  end
end

# Bass progression
live_loop :bass_progression do
  bass_pattern = [
    "basses-sus-c2", "basses-sus-f#2", 
    "basses-sus-a2", "basses-sus-c2"
  ]
  
  8.times do |i|
    with_fx :reverb, room: 0.7 do
      sample basses, bass_pattern[i % 4], 
        amp: 0.5,
        attack: 0.2,
        release: 2.0
      sleep 4
    end
  end
end

# Long violin phrases
live_loop :violin_phrases do
  use_random_seed 789
  
  4.times do
    with_fx :echo, phase: 0.75, decay: 4 do
      sample violins, ["violin-e4", "violin-a4"].choose,
        amp: 0.3,
        attack: 0.5,
        release: 3.0
      sleep 8
    end
  end
end

# Dramatic middle section
live_loop :dramatic_build do
  # Wait for a while before starting
  sleep 32
  
  12.times do |i|
    with_fx :reverb, room: 0.9 do
      # Increasing intensity
      amp_value = 0.3 + (i * 0.05)
      
      sample violins, "violin-c5",
        amp: amp_value,
        rate: 1 + (i * 0.1),
        attack: 0.2,
        release: 1.0
      
      sample basses, "basses-sus-c2",
        amp: amp_value,
        attack: 0.1,
        release: 0.8
      
      sample tambour, "hit-f",
        amp: amp_value,
        rate: 0.8
      
      sleep [4, 2, 1][i % 3]  # Accelerating rhythm
    end
  end
  
  # Reset with a long pause
  sleep 16
end

# Interweaving violins
live_loop :violin_weave do
  use_random_seed 234
  
  6.times do |i|
    with_fx :echo, phase: 0.5, decay: 2 do
      2.times do
        sample violins, ["violin-g4", "violin-e5", "violin-a4"].ring[i],
          amp: 0.25,
          attack: 0.1,
          release: 0.8
        sleep 1
      end
    end
  end
end

# Optional: Uncomment for additional bass texture
# live_loop :bass_texture do
#   sleep 24  # Wait before starting
#   
#   8.times do |i|
#     with_fx :wobble, phase: 0.5 do
#       sample microkorg, "Micro fat bass 4",
#         amp: 0.4,
#         rate: 0.8,
#         attack: 0.2,
#         release: 1.0
#       sleep 8
#     end
#   end
#   
#   sleep 16  # Rest before repeating
# end 
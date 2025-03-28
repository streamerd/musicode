# Nikriz Peşrev - Ottoman Classical Composition
# Original Tempo: 192 BPM (adjusted for better expression)

use_bpm 72

# Define paths for custom samples
percussion = "/Users/streamerd/devel/musicode/samples/Percussion/"
harp = "/Users/streamerd/devel/musicode/samples/Harp/"
strings = "/Users/streamerd/devel/musicode/samples/Violins/"

# Helper function for Turkish ornamentations
define :ornament do |note, duration|
  play note, release: duration * 0.8, amp: 0.7
  sleep duration * 0.1
  play note + 1, release: duration * 0.2, amp: 0.4
  sleep duration * 0.9
end

# First section (Hane 1)
define :section_one do
  use_synth :saw
  with_fx :reverb, room: 0.7 do
    # First measure
    play_pattern_timed [:D4, :E4, :F4, :G4], [0.25], amp: 0.8
    play_pattern_timed [:A4, :G4], [0.5], amp: 0.8
    
    # Second measure
    play_pattern_timed [:A4, :G4, :F4, :E4], [0.5], amp: 0.8
    
    # Third measure
    play_pattern_timed [:F4, :E4, :D4, :E4, :F4, :G4], [0.25], amp: 0.8
    play :A4, release: 0.5, amp: 0.8
    sleep 0.5
    
    # Fourth measure (repeat of first)
    play_pattern_timed [:D4, :E4, :F4, :G4], [0.25], amp: 0.8
    play_pattern_timed [:A4, :G4], [0.5], amp: 0.8
  end
end

# Teslim section
define :teslim do
  use_synth :saw
  with_fx :reverb, room: 0.8 do
    # First measure of teslim
    play_pattern_timed [:F4, :G4, :A4, :Bb4, :C5, :D5], [0.25], amp: 0.9
    play_pattern_timed [:C5, :Bb4], [0.5], amp: 0.9
    
    # Second measure
    play_pattern_timed [:A4, :G4, :F4, :E4], [0.5], amp: 0.85
    
    # Third measure
    play_pattern_timed [:F4, :G4, :A4, :Bb4], [0.25], amp: 0.9
    play_pattern_timed [:A4, :G4], [0.5], amp: 0.85
  end
end

# Second section (Hane 2)
define :section_two do
  use_synth :saw
  with_fx :reverb, room: 0.7 do
    # Complex melodic pattern from the sheet
    play_pattern_timed [:D4, :E4, :F4, :G4, :A4, :B4], [0.25], amp: 0.8
    play :C5, release: 0.5, amp: 0.8
    sleep 0.5
    
    play_pattern_timed [:B4, :A4, :G4, :F4], [0.5], amp: 0.75
    
    # Continue with the rest of section 2...
    play_pattern_timed [:E4, :F4, :G4, :A4], [0.25], amp: 0.8
    play_pattern_timed [:B4, :A4], [0.5], amp: 0.8
  end
end

# Define the accompaniment
define :accompaniment do
  use_synth :piano
  with_fx :reverb, room: 0.4 do
    # More authentic Turkish makam progression
    play_chord [:D3, :A3, :D4], release: 0.3, amp: 0.9
    sleep 1
    play_chord [:G3, :D4, :G4], release: 0.3, amp: 0.8
    sleep 1
    play_chord [:F3, :C4, :F4], release: 0.3, amp: 0.9
    sleep 1
    play_chord [:E3, :B3, :E4], release: 0.3, amp: 0.8
    sleep 1
  end
end

# Main performance structure
live_loop :nikriz_main do
  # First section
  2.times do
    section_one
  end
  
  # Teslim
  2.times do
    teslim
  end
  
  # Second section
  2.times do
    section_two
  end
  
  # Teslim again
  2.times do
    teslim
  end
end

live_loop :nikriz_accompaniment do
  sync :nikriz_main
  accompaniment
end

# Traditional percussion pattern
live_loop :percussion do
  sync :nikriz_main
  sample percussion, "bass_drum-f", amp: 0.8
  sleep 0.5
  sample percussion, "bass_drum-p", amp: 0.6
  sleep 0.5
  sample percussion, "tambourine-hit-mf", amp: 0.4
  sleep 0.5
  sample percussion, "bass_drum-p", amp: 0.6
  sleep 0.5
end

# Ornamental sounds
live_loop :ornaments do
  sync :nikriz_main
  use_random_seed 42
  if one_in(3)
    sample harp, "harp-d4", rate: 1, amp: 0.6
  end
  sleep 0.5
  if one_in(4)
    sample strings, "violin-a4", rate: 1, amp: 0.4
  end
  sleep 0.5
end
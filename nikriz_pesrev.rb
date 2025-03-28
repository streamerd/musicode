# Nikriz Peşrev - Ottoman Classical Composition
# Tempo: 192 BPM

use_bpm 90

# Define paths for custom samples
percussion = "/Users/streamerd/devel/musicode/samples/Percussion/"
harp = "/Users/streamerd/devel/musicode/samples/Harp/"


# Define the main melody sequence for the first section (hane)
define :section_one do
  use_synth :saw
  with_fx :reverb, room: 0.7 do
    # First measure
    play_pattern_timed [:D4, :E4, :F4, :G4, :A4, :Bb4], [0.25], amp: 0.8
    play :A4, release: 0.5
    sleep 0.5
    play :G4, release: 0.5
    sleep 0.5
    
    # Second measure
    play :A4, release: 0.5
    sleep 0.5
    play :G4, release: 0.5
    sleep 0.5
    play :F4, release: 0.5
    sleep 0.5
    play :E4, release: 0.5
    sleep 0.5
    
    # Third measure
    play_pattern_timed [:F4, :E4, :D4, :E4, :F4, :G4, :A4], [0.25], amp: 0.8
    play :G4, release: 0.5
    sleep 0.5
  end
end

# Define the accompaniment
define :accompaniment do
  use_synth :piano
  with_fx :reverb, room: 0.4 do
    play_chord [:D3, :A3, :D4], release: 0.3, amp: 1.2
    sleep 1
    play_chord [:G3, :D4, :G4], release: 0.3, amp: 1.2
    sleep 1
    play_chord [:F3, :C4, :F4], release: 0.3, amp: 1.2
    sleep 1
    play_chord [:E3, :B3, :E4], release: 0.3, amp: 1.2
    sleep 1
  end
end

# Main performance loop
live_loop :nikriz_main do
  section_one
end

live_loop :nikriz_accompaniment do
  sync :nikriz_main
  accompaniment
end

# Add some traditional percussion using your samples
live_loop :percussion do
  sync :nikriz_main
  sample percussion, "bass_drum-f", amp: 1.2
  sleep 1
  sample percussion, "bass_drum-p", amp: 0.8
  sleep 1
  sample percussion, "bass_drum-f", amp: 1.2
  sleep 1
  sample percussion, "bass_drum-p", amp: 0.8
  sleep 1
end

# Add some ornamental sounds using the Harp samples
live_loop :ornaments do
  sync :nikriz_main
  use_random_seed 42
  if one_in(4)
    sample harp, "harp-d4", rate: 1, amp: 2
  end
  sleep 1
end
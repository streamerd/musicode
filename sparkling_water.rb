piano = "/Users/streamerd/devel/musicode/samples/GrandPiano"
techno = "/Users/streamerd/devel/musicode/samples/techno"
hades2 = "/Users/streamerd/devel/musicode/samples/Hades2"
piccolo = "/Users/streamerd/devel/musicode/samples/Piccolo"
harp = "/Users/streamerd/devel/musicode/samples/Harp"
space = "/Users/streamerd/devel/musicode/samples/space"
misc = "/Users/streamerd/devel/musicode/samples/misc"

use_bpm 70

# Atmospheric synth pad from Hades2
live_loop :atmosphere do
  sample hades2, "Massive-saw-revrb-ovrdrive", rate: 0.5, amp: 0.3
  sleep 8
end

# Gentle piano melody
live_loop :piano_dream do
  notes = ["GPmf C 4", "GPmf E 4", "GPmf G 4", "GPmf B 4"]
  
  notes.each do |note|
    sample piano, note, amp: 0.6
    sleep 2
    
    # Occasionally add a softer note for variation
    if one_in(3)
      sample piano, "GPmp E 3", amp: 0.4
      sleep 0.5
    end
  end
end

# Subtle techno elements
live_loop :rhythm do
  sample techno, "slow-techno-beat_105bpm_D_minor", 
    rate: 0.7, 
    amp: 0.4, 
    beat_stretch: 8
  sleep 8
end

# Ethereal high notes using Hades2
live_loop :sparkles do
  use_random_seed 567
  
  if one_in(4)
    sample hades2, "Midi 001-Auto sampled-084 C5", 
      rate: rrand(0.9, 1.1), 
      amp: 0.3
  end
  
  sleep 2
end

# After 24 seconds, these loops will start:

# Harp arpeggios
live_loop :harp_dreams do
  sleep 24  # Wait for 24 seconds before starting
  
  harp_notes = ["harp-c4", "harp-f#4", "harp-a4", "harp-c5"]
  with_fx :reverb, room: 0.8 do
    harp_notes.each do |note|
      sample harp, note, amp: 0.5
      sleep 1
    end
  end
end

# Piccolo melody
live_loop :piccolo_float do
  sleep 24  # Wait for 24 seconds
  
  use_random_seed 789
  piccolo_notes = ["piccolo-c5", "piccolo-f#5", "piccolo-a5"]
  
  with_fx :echo, phase: 0.75, decay: 2 do
    if one_in(2)
      sample piccolo, piccolo_notes.choose, amp: 0.3
    end
  end
  sleep 4
end

# Space plucks for texture
live_loop :space_texture do
  sleep 24  # Wait for 24 seconds
  
  with_fx :reverb, room: 0.9, mix: 0.6 do
    sample space, "pluck", rate: 0.8, amp: 0.4
    sleep 8
    
    # Occasional space impact
    if one_in(3)
      sample space, "space-impact_D_major", rate: 0.7, amp: 0.3
    end
  end
end

# Dramatic elements after buildup
live_loop :dramatic_hits do
  sleep 32  # Wait even longer for these dramatic elements
  
  if one_in(4)
    with_fx :reverb, room: 0.8 do
      sample misc, "danger-brass-hit_C_minor", rate: 0.8, amp: 0.4
    end
  end
  sleep 8
end

# Optional: Uncomment to add global reverb
# with_fx :reverb, room: 0.8, mix: 0.5 do
#   live_loop :all do
#     sample piano, "GPmf C 3", amp: 0.5
#     sleep 4
#   end
# end


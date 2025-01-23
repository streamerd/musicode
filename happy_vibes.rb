microkorg = "/Users/streamerd/devel/musicode/samples/3microkorg"
violins = "/Users/streamerd/devel/musicode/samples/Violins"
flutes = "/Users/streamerd/devel/musicode/samples/Flutes"
percussion = "/Users/streamerd/devel/musicode/samples/Percussion"
piccolo = "/Users/streamerd/devel/musicode/samples/Piccolo"

use_bpm 48  # Slightly faster, more energetic tempo

##| Upbeat synth base
live_loop :happy_synth do
  synth_notes = ["Micro 2", "Micro 5", "Micro 8", "Micro 11"]
  
  with_fx :reverb, room: 0.6 do
    synth_notes.each do |note|
      sample microkorg, note, amp: 0.5, rate: 1.2  # Higher rate for brighter sound
      sleep 0.5
    end
  end
end

# Bouncy bass line
live_loop :bouncy_bass do
  bass_pattern = ["Micro fat bass 4", "Micro fat bass 7"]
  
  with_fx :wobble, phase: 0.40, wave: 1 do
    bass_pattern.each do |bass|
      sample microkorg, bass, amp: 0.6, rate: 2
      sleep 1
    end
  end
end

# Cheerful percussion
live_loop :happy_beats do
  sample percussion, "glockenspiel-c5", amp: 0.4
  sleep 0.5
  sample percussion, "triangle-opn-rr1", amp: 0.3
  sleep 0.5
  sample percussion, "glockenspiel-e5", amp: 0.4
  sleep 0.5
  sample percussion, "triangle-opn-rr2", amp: 0.3
  sleep 0.5
end

# Flute melody
live_loop :flute_joy do
  use_random_seed 789
  flute_notes = ["flutes-sus-c4", "flutes-sus-e4", "flutes-sus-a4"]
  
  with_fx :echo, phase: 0.25, decay: 2 do
    sample flutes, flute_notes.choose,
      amp: 0.4,
      attack: 0.1,
      release: 0.3
    sleep 2
  end
end

# Piccolo accents
live_loop :piccolo_sparkles do
  sleep 1
  if one_in(2)
    with_fx :reverb, room: 0.7 do
      sample piccolo, ["piccolo-c5", "piccolo-f#5"].choose,
        amp: 0.3,
        rate: rrand(1.0, 1.2)
    end
  end
  sleep 1
end

# Dancing violins
live_loop :violin_dance do
  violin_pattern = ["violin-e4", "violin-a4", "violin-c5", "violin-e5"]
  
  with_fx :reverb, room: 0.6 do
    violin_pattern.each do |note|
      sample violins, note,
        amp: 0.35,
        attack: 0.05,
        release: 0.2
      sleep 0.5
    end
  end
end

# Playful synth arpeggios
live_loop :synth_play do
  with_fx :echo, phase: 0.25, decay: 2 do
    sample microkorg, "Micro 13",
      amp: 0.4,
      rate: [1, 1.2, 1.5].choose
    sleep 4
  end
end

# Bell-like percussion accents
live_loop :bell_accents do
  sleep 2
  sample percussion, "glockenspiel-a4", amp: 0.3
  sleep 2
  sample percussion, "chimes-c5", amp: 0.25
  sleep 4
end

# Optional: Uncomment for additional layered happiness
##| live_loop :extra_joy do
##|   sleep 8
##|   with_fx :reverb, room: 0.8 do
##|     sample percussion, "sleigh_bells-mf",
##|       amp: 0.3,
##|       rate: 1.1
##|   end
##|   sleep 8
##| end

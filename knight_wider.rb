techno = "/Users/streamerd/devel/musicode/techno"

live_loop :tr do
  sample :bass_trance_c, amp: 2.4
  sleep 2
end

live_loop :kick do
  sleep 0.2
  sync :tr
  
  3.times do
    sample :drum_heavy_kick, rate: 2
  end
  
  
  
  3.times do
    sleep 1
    sample techno, "hard-techno-kick", amp: 4
  end
  
end


live_loop :b do
  sync :tr
  use_synth :mod_fm
  
  play 66, amp: 1
  sleep 2
  play 72, amp: 0.8
  sleep 2
  play 80, amp: 0.2
end

live_loop :c do
  use_synth :mod_fm
  sync :b
  sleep 0.5
  play 50, amp: 1
  sleep 1
  play 54, amp: 2
  sleep 0.5
  play 56, amp: 0.6
  
end

live_loop :d do
  sleep 4
  use_synth :kalimba
  sync :c
  
  sample :drum_bass_hard, amp: 4
  sleep 0.4
  sample :drum_bass_hard, amp: 4
  sleep 0.6
  sample :drum_bass_hard, amp: 3.6
  
  sample :drum_bass_hard, amp: 4
  sleep 1
  sample :drum_bass_hard, amp: 4
  
end



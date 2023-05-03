# Zero Sum Fame
techno = "/Users/streamerd/devel/musicode/techno/"

live_loop :x do
  sleep 0.2
  sync :bassic
  ##| sample techno, "techno-shadows_140bpm_D#_major", amp: 2
end

live_loop :bassic do
  sleep 0.5
  2.times do
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.4
    sample techno, "hard-techno-kick", amp: 2
    sample :bass_dnb_f, attack: 0.8
    sleep 0.5
    sleep 1.0
    sleep 0.4
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.6
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.6
    
  end
  sample :bass_dnb_f, attack: 0.8
  sleep 0.5
  sleep 1.0
  sample :bass_dnb_f, attack: 0.8
  sleep 0.5
  sample :bass_dnb_f, attack: 0.8
  sleep 0.5
  
  4.times do
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.4
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.4
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.6
    sample techno, "hard-techno-kick", amp: 2
    sleep 0.6
  end
  sleep 2.2
  sample techno, "hard-techno-kick", amp: 4, sustain: 2
  sleep 0.6
  sample :bass_dnb_f, attack: 1.2
  sleep 1.0
  sample :bass_dnb_f, attack: 1.2
  sleep 1.0
end





harps = "/Users/streamerd/devel/musicode/samples/Harp"
oboes = "/Users/streamerd/devel/musicode/samples/Oboe"
tambour = "/Users/streamerd/devel/musicode/samples/Tambour"

live_loop :tambour do
  
  sample tambour, "hit-f", amp: 4
  sleep 1.2
  sample tambour, "hit-f", amp: 2
  sleep 0.6
  sample tambour, "hit-f", amp: 2
  sleep 0.6
  sample tambour, "hit-f", amp: 2
  sleep 1.2
  sample tambour, "hit-f", amp: 2
  sleep 1.2
end


live_loop :x do
  sync :tambour
  sample harps, "harp-a2", amp: 8
  sleep 0.6
  sample harps, "harp-a2", amp: 8
  sleep 0.6
  sample harps, "harp-a2", amp: 8
  sleep 0.4
  sample harps, "harp-a2", amp: 4
end


live_loop :y do
  sync :x
  sample tambour, "hit-mf", amp: 4
  sleep 0.6
  sample tambour, "hit-mf", amp: 1
  sleep 0.3
  sample tambour, "hit-mf", amp: 1
  sleep 0.3
  sample tambour, "hit-mf", amp: 2
  sleep 0.6
  sample tambour, "hit-mf", amp: 2
  sleep 0.6
end
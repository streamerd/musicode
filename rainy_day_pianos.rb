##| rainy day pianos

pianos = "/Users/streamerd/devel/musicode/GrandPiano"


live_loop :pia do
  sample pianos, "piano-f-a1", amp: 2
  sleep 1
  sample pianos, "piano-f-a3", amp: 2, attack: 0.5
  sleep 1
  
end

live_loop :no do
  sleep 4
  sample pianos, "piano-f-c6", amp: 0.8
end

live_loop :now do
  sleep 6
  sample pianos, "piano-f-c7", amp: 1
end



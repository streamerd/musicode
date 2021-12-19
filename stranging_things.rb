violins = "/Users/streamerd/devel/musicode/violins/"
bassClarinets = "/Users/streamerd/devel/musicode/bassClarinets"

live_loop :va5 do
  sleep 0.5
  sample violins, "violin-e5", amp: 0.4
  sleep 2
  
  live_loop :va5 do
    sleep 0.5
    sample violins, "violin-a5", amp: 0.4
    sleep 2
    sample violins, "violin-a5", amp: 0.4
    sleep 2
    sample violins, "violin-a5", amp: 0.8
    sleep 0.5
  end
  
  live_loop :bcb2 do
    sleep 6
    sample bassClarinets, "bass_clarinet-b2", amp: 0.4
    sleep 2
    sample bassClarinets, "bass_clarinet-b2", amp: 2
    
    
    8.times do
      sleep 2
      sample violins, "violin-e5", amp: 1
      sleep 2
      sample violins, "violin-e5", amp: 1.2
      sleep 2
      sample violins, "violin-e5", amp: 2
      sleep 0.5
      sample violins, "violin-e5", amp: 1.2
      sleep 2
    end
    
    live_loop :bass_clarinet_a do
      sleep 6
      sample bassClarinets, "bass_clarinet-b2", amp: 0.2
      sleep 2
      sample bassClarinets, "bass_clarinet-b2", amp: 0.4
      sleep 3
      sample bassClarinets, "bass_clarinet-b2", amp: 0.6
      sleep 2
      sample bassClarinets, "bass_clarinet-b2", amp: 0.4
      
    end
    
    live_loop :bass_clarinet_b do
      sleep 12
      sample bassClarinets, "bass_clarinet-f3", amp: 0.8
      sleep 2
      sample bassClarinets, "bass_clarinet-f3", amp: 0.8
      sleep 2
      sample bassClarinets, "bass_clarinet-f3", amp: 0.8
      sleep 0.5
    end
    
    
    4.times do
      sleep 1.0
      sample violins, "violin-c4", attack: 1.0, cutoff: 2
      sleep 2.2
      sample violins, "violin-c4", attack: 1.0
      sleep 1.0
      sample violins, "violin-c4", attack: 1.0, cutoff: 2
      sleep 2.2
      sample violins, "violin-c4", attack: 1.0
      sleep 0.5
      
    end
    
    
    
    
    sleep 2
    sample bassClarinets, "bass_clarinet-b2", amp: 0.4
    sleep 0.5
  end
  
  live_loop :bcf3 do
    sleep 29
    sample bassClarinets, "bass_clarinet-f3", amp: 0.8
    sleep 2
    sample bassClarinets, "bass_clarinet-f3", amp: 0.8
    sleep 2
    sample bassClarinets, "bass_clarinet-f3", amp: 0.8
    sleep 0.5
  end
  
  16.times do
    sleep 1.0
    sample :bass_dnb_f, attack: 1.0
    sleep 0.5
    sample :bass_dnb_f, attack: 1.0
    sleep 0.5
    
  end
 
  sample violins, "violin-a5", amp: 0.4
  sleep 2
  sample violins, "violin-a5", amp: 0.8
  sleep 0.5
end

live_loop :bcb2 do
  sleep 6
  sample bassClarinets, "bass_clarinet-b2", amp: 0.4
  sleep 2
  sample bassClarinets, "bass_clarinet-b2", amp: 0.4
  sleep 2
  sample bassClarinets, "bass_clarinet-b2", amp: 0.4
  sleep 0.5
end

live_loop :bcf3 do
  sleep 29
  sample bassClarinets, "bass_clarinet-f3", amp: 0.8
  sleep 2
  sample bassClarinets, "bass_clarinet-f3", amp: 0.8
  sleep 2
  sample bassClarinets, "bass_clarinet-f3", amp: 0.8
  sleep 0.5
end





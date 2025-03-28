

live_loop :c do
    play 80
    sleep 1.2
    play 80
    sleep 0.8
    play 84, amp: 2
    sleep 4.4
    play 90, amp: 1.4
    sleep 0.8
    play 84, amp: 2
    sleep 0.2
    play 80
    sleep 0.6
  
  end
  
  
  live_loop :d do
    sync :c
    play 60
    sleep 1.2
    play 60
    sleep 0.8
    play 64, amp: 2
    ##| sleep 0.4
    sleep 4
    
    play 70, amp: 1.4
    sleep 0.8
    play 64, amp: 2
    sleep 0.2
    play 60
    sleep 0.6
    
  end
  
  
  
  ##| live_loop :b do
  ##|   play 44
  ##|   sleep 2
  ##| end
  
  ##| live_loop :x do
  ##|   sleep 1
  ##|   sample basses, "basses-piz-rr1-d1", amp: 6, attack: 0.2
  ##|   sleep 0.6
  ##|   sample basses, "basses-piz-rr1-d1", amp: 6, attack: 0.2
  
  ##|   sleep 0.5
  ##|   sample basses, "basses-piz-rr1-d1", amp: 6, attack: 0.2
  ##|   sleep 1.2
  ##|   sample basses, "basses-piz-rr1-d1", amp: 6, attack: 0.2
  
  ##|   sleep 1.2
  ##|   sample basses, "basses-piz-rr1-d1", amp: 6, attack: 0.2
  ##| end
  
  ##| live_loop :y do
  
  ##|   sync :x
  ##|   sample harps, "harp-a2", amp: 8, attack: 2.4
  ##|   sleep 0.4
  ##|   sample harps, "harp-a2", amp: 8, attack: 3.2
  ##|   sleep 0.8
  ##|   sample harps, "harp-a2", amp: 8, attack: 2.4
  ##|   sleep 1.2
  ##|   sample harps, "harp-a2", amp: 8, attack: 3.2
  
  ##| end
  
  ##| live_loop :z do
  
  ##|   ##| sync :x
  ##|   sleep 1.2
  ##|   sample harps, "horn-g3", amp: 8, attack: 3.2
  ##|   sleep 1.2
  ##|   sample harps, "horn-g3", amp: 8, attack: 3.2
  ##|   sleep 1.2
  ##|   sample harps, "horn-g3", amp: 8, attack: 3.2
  ##|   sleep 0.4
  ##|   sample harps, "horn-g4", amp: 8, attack: 3.2
  ##|   sleep 0.8
  ##|   sample harps, "horn-g4", amp: 8, attack: 3.2
  ##|   sleep 1
  ##|   sample harps, "horn-g4", amp: 8, attack: 3.2
  ##|   sleep 0.6
  ##|   sample harps, "harp-g4", amp: 4, attack: 3.2
  ##|   sleep 0.4
  ##|   sample harps, "harp-g3", amp: 8, attack: 3.2
  ##|   sleep 0.4
  ##|   sample harps, "harp-g3", amp: 4, attack: 3.2
  ##|   sleep 0.6
  ##|   sample harps, "harp-g4", amp: 8, attack: 2.4
  ##| end
  
  ##| live_loop :t do
  ##|   sleep 2
  ##|   sync :z
  ##|   sleep 1.2
  ##|   sample harps, "harp-c3", amp: 8, attack: 3.2
  ##|   sleep 1.2
  ##|   sample harps, "harp-c3", amp: 4, attack: 3.2
  ##|   sleep 1.2
  ##|   sample harps, "harp-c4", amp: 8, attack: 2.4
  ##|   sleep 0.4
  ##|   sample harps, "harp-c4", amp: 8, attack: 3.2
  ##|   sleep 0.8
  ##|   sample harps, "harp-c3", amp: 8, attack: 2.4
  ##|   sleep 1
  ##|   sample harps, "harp-c3", amp: 8, attack: 3.2
  ##|   sleep 0.6
  ##|   sample harps, "harp-c3", amp: 4, attack: 3.2
  ##|   sleep 0.4
  ##|   sample harps, "harp-c3", amp: 8, attack: 3.2
  ##|   sleep 0.4
  ##|   sample harps, "harp-c3", amp: 4, attack: 3.2
  ##|   sleep 0.6
  ##|   sample harps, "harp-c4", amp: 8, attack: 2.4
  ##| end
  
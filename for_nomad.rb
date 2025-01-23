# Path definitions
oboe = "~/devel/musicode/samples/Oboe"
flutes = "~/devel/musicode/samples/Flutes"
violins = "~/devel/musicode/samples/Violins"
piccolo = "~/devel/musicode/samples/Piccolo"
basses = "~/devel/musicode/samples/Basses"
bass_trombone = "~/devel/musicode/samples/BassTrombone"

# Initial tempo - faster base tempo
use_bpm 96

# Movement 1: "Allegro con Spirito"
define :movement_one do
  puts "Movement 1: Allegro con Spirito begins"
  
  # Opening - Majestic and bold
  in_thread do
    with_fx :reverb, room: 0.7, mix: 0.4 do
      # Strong opening statement
      2.times do
        use_bpm 96
        sample bass_trombone, "bass_trombone-e2",
          amp: 0.6,
          attack: 0.1,
          release: 1.0
        sample basses, "basses-sus-c2",
          amp: 0.5
        sleep 2
      end
      
      # Main theme - Violins with bass support
      4.times do |i|
        use_bpm(i < 2 ? 96 : 102)  # Subtle acceleration
        
        # Principal theme
        ["violin-e4", "violin-g4", "violin-c5", "violin-a4"].each do |note|
          sample violins, note,
            amp: 0.5,
            attack: 0.1,
            release: 0.8
          
          # Bass accompaniment
          sample basses, "basses-piz-rr1-c2",
            amp: 0.4,
            release: 0.5 if i % 2 == 0
          
          sleep 2
        end
        
        # Response with increased energy
        use_bpm(i < 2 ? 98 : 104)
        ["violin-c5", "violin-e5", "violin-g4", "violin-e4"].each do |note|
          sample violins, note,
            amp: 0.45 + (i * 0.1),
            attack: 0.1,
            release: 0.6
          sleep 1
        end
      end
    end
  end
  
  # Bass trombone counterpoint
  in_thread do
    sleep 16  # Wait for main theme
    use_bpm 98
    4.times do
      sample bass_trombone, "bass_trombone-g2",
        amp: 0.4,
        attack: 0.2,
        release: 2.0
      sleep 4
      
      sample bass_trombone, "bass_trombone-c3",
        amp: 0.45,
        attack: 0.2,
        release: 1.5
      sleep 4
    end
  end
  
  # Flute counterpoint with dramatic changes
  in_thread do
    use_bpm 96
    with_fx :reverb, room: 0.8 do
      8.times do |i|
        # Sudden piano section
        use_bpm(i == 4 ? 80 : 96)  # Dramatic slowdown in middle
        sample flutes, "flutes-stc-rr1-c4",
          amp: i == 4 ? 0.3 : 0.4,  # Softer in middle
          attack: 0.1,
          release: 0.8
        sleep 2
        
        # Return to tempo
        use_bpm 96
        sample flutes, "flutes-stc-rr1-e4",
          amp: 0.4,
          attack: 0.2,
          release: 1.5
        sleep 4
      end
    end
  end
  
  sleep 48
end

# Movement 2: "Andante con Brio"
define :movement_two do
  puts "Movement 2: Andante con Brio begins"
  use_bpm 88
  
  # Bass introduction
  in_thread do
    with_fx :reverb, room: 0.9 do
      sample basses, "basses-sus-c2",
        amp: 0.5,
        attack: 0.3,
        release: 3.0
      sleep 4
    end
  end
  
  # Main theme - Oboe with bass support
  in_thread do
    with_fx :reverb, room: 0.8, mix: 0.5 do
      3.times do |i|
        use_bpm(88 + (i * 2))  # Gradual acceleration
        2.times do
          sample oboe, "oboe-e4",
            amp: 0.5,
            attack: 0.2,
            release: 2.0
          sample basses, "basses-sus-c2",
            amp: 0.4
          sleep 4
          
          sample oboe, "oboes-c4",
            amp: 0.45,
            attack: 0.2,
            release: 1.8
          sleep 4
        end
        
        # Dramatic bridge passage
        use_bpm 85  # Slight ritardando
        sample oboe, "oboe-e5",
          amp: 0.4,
          attack: 0.3,
          release: 2.5
        sample bass_trombone, "bass_trombone-e2",
          amp: 0.5
        sleep 4
      end
    end
  end
  
  # Violin accompaniment
  in_thread do
    6.times do
      ["violin-c4", "violin-g4", "violin-e4", "violin-a4"].each do |note|
        sample violins, note,
          amp: 0.35,
          attack: 0.1,
          release: 1.5
        sleep 4
      end
    end
  end
  
  # Flute ornaments
  in_thread do
    sleep 16  # Wait before entering
    4.times do
      if one_in(2)
        sample flutes, "flutes-stc-rr1-a4",
          attack: 0.1,
          release: 0.6
      end
      sleep 4
    end
  end
  
  sleep 64
end

# Movement 3: "Presto giocoso"
define :movement_three do
  puts "Movement 3: Presto giocoso begins"
  use_bpm 112
  
  # Energetic bass foundation
  in_thread do
    8.times do |i|
      use_bpm(112 + (i * 2))  # Gradually getting faster
      sample basses, "basses-stc-rr1-c2",
        amp: 0.5,
        attack: 0.1,
        release: 0.4
      sleep 1
      
      sample bass_trombone, "bass_trombone-g2",
        amp: 0.45
      sleep 2
    end
  end
  
  # Main theme - Violins and Piccolo
  in_thread do
    4.times do |i|
      with_fx :reverb, room: 0.7 do
        # Violin theme
        ["violin-e4", "violin-c5", "violin-g4", "violin-a4"].each do |note|
          sample violins, note,
            amp: 0.5,
            attack: 0.1,
            release: 0.6
          
          # Piccolo doubles an octave higher occasionally
          if i > 1  # Only in later repetitions
            sample piccolo, ["piccolo-c5", "piccolo-f#5"].choose,
              amp: 0.3,
              attack: 0.1,
              release: 0.4
          end
          sleep 2
        end
      end
    end
  end
  
  # Flute countermelody
  in_thread do
    8.times do
      with_fx :reverb, room: 0.8 do
        sample flutes, ["flutes-stc-rr1-e4", "flutes-stc-rr1-a4"].choose,
          amp: 0.4,
          attack: 0.2,
          release: 1.0
        sleep 2
      end
    end
  end
  
  # Oboe interjections
  in_thread do
    16.times do
      sleep 2
      if one_in(3)
        sample oboe, ["oboe-e4", "oboes-c5"].choose,
          amp: 0.4,
          attack: 0.1,
          release: 0.8
      end
      sleep 2
    end
  end
  
  sleep 64
end

# Finale: "Prestissimo con Fuoco"
define :finale do
  puts "Finale: Prestissimo con Fuoco begins"
  use_bpm 120
  
  # Dramatic bass opening
  in_thread do
    with_fx :reverb, room: 0.9 do
      sample basses, "basses-stc-rr1-c2",
        amp: 0.7,
        attack: 0.1,
        release: 1.0
      sample bass_trombone, "bass_trombone-c2",
        amp: 0.6
      sleep 4
    end
  end
  
  # Dramatic violin crescendo
  in_thread do
    with_fx :reverb, room: 0.9, mix: 0.6 do
      4.times do |i|
        ["violin-c5", "violin-e5", "violin-g5", "violin-c6"].each do |note|
          sample violins, note,
            amp: 0.4 + (i * 0.1),
            attack: 0.1,
            release: 0.8
          sleep 1
        end
      end
    end
  end
  
  # Flute and Piccolo flourishes
  in_thread do
    sleep 8
    4.times do
      sample flutes, "flutes-sus-c5",
        amp: 0.5,
        attack: 0.1,
        release: 1.0
      sample piccolo, "piccolo-c6",
        amp: 0.3,
        attack: 0.1,
        release: 0.8
      sleep 4
    end
  end
  
  # Final oboe statement
  in_thread do
    sleep 16
    sample oboe, "oboe-e5",
      amp: 0.6,
      attack: 0.2,
      release: 2.0
    sleep 4
    
    sample oboe, "oboes-c5",
      amp: 0.5,
      attack: 0.1,
      release: 3.0
  end
  
  sleep 24
end

# Main composition control
define :conduct_symphony do
  movement_one
  sleep 4
  
  movement_two
  sleep 4
  
  movement_three
  sleep 2
  
  finale
end

# Start the symphony
conduct_symphony
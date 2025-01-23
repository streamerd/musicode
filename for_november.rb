# Path definitions
oboe = "~/devel/musicode/samples/Oboe"
flutes = "~/devel/musicode/samples/Flutes"
violins = "~/devel/musicode/samples/Violins"
piccolo = "~/devel/musicode/samples/Piccolo"

use_bpm 82  # Bright classical tempo

# Movement 1: "Allegro Grazioso"
define :movement_one do
  puts "Movement 1: Allegro Grazioso begins"
  
  # Main violin melody
  in_thread do
    with_fx :reverb, room: 0.7, mix: 0.4 do
      4.times do
        # Principal theme
        ["violin-e4", "violin-g4", "violin-c5", "violin-a4"].each do |note|
          sample violins, note,
            amp: 0.5,
            attack: 0.1,
            release: 0.8
          sleep 2
        end
        
        # Response phrase
        ["violin-c5", "violin-e5", "violin-g4", "violin-e4"].each do |note|
          sample violins, note,
            amp: 0.45,
            attack: 0.1,
            release: 1.0
          sleep 2
        end
      end
    end
  end
  
  # Flute counterpoint
  in_thread do
    with_fx :reverb, room: 0.8 do
      8.times do
        sample flutes, "flutes-sus-c4",
          amp: 0.4,
          attack: 0.2,
          release: 1.5
        sleep 4
        
        sample flutes, "flutes-sus-e4",
          amp: 0.4,
          attack: 0.2,
          release: 1.5
        sleep 4
      end
    end
  end
  
  sleep 64
end

# Movement 2: "Andante Cantabile"
define :movement_two do
  puts "Movement 2: Andante Cantabile begins"
  
  # Oboe melody
  in_thread do
    with_fx :reverb, room: 0.8, mix: 0.5 do
      3.times do
        2.times do
          sample oboe, "oboe-e4",
            amp: 0.5,
            attack: 0.2,
            release: 2.0
          sleep 4
          
          sample oboe, "oboes-c4",
            amp: 0.45,
            attack: 0.2,
            release: 1.8
          sleep 4
        end
        
        # Bridge passage
        sample oboe, "oboe-e5",
          amp: 0.4,
          attack: 0.3,
          release: 2.5
        sleep 8
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
        sample flutes, "flutes-sus-a4",
          amp: 0.3,
          attack: 0.1,
          release: 1.0
      end
      sleep 8
    end
  end
  
  sleep 96
end

# Movement 3: "Rondo Vivace"
define :movement_three do
  puts "Movement 3: Rondo Vivace begins"
  
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
        sample flutes, ["flutes-sus-e4", "flutes-sus-a4"].choose,
          amp: 0.4,
          attack: 0.2,
          release: 1.0
        sleep 4
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

# Finale: "Presto con Fuoco"
define :finale do
  puts "Finale: Presto con Fuoco begins"
  
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
  
  sleep 32
end

# Main composition control
define :conduct_symphony do
  movement_one
  sleep 4  # Brief pause between movements
  
  movement_two
  sleep 6
  
  movement_three
  sleep 4
  
  finale
end

# Start the symphony
conduct_symphony
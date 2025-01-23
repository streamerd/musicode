# Path definitions - using ~ instead of absolute paths
oboe = "~/devel/musicode/samples/Oboe"
bass_clarinet = "~/devel/musicode/samples/bassClarinets"
harp = "~/devel/musicode/samples/Harp"

# Helper function to list available samples
define :list_samples do |folder|
  puts "Available samples in #{folder}:"
  Dir.glob("#{folder}/*.{wav,WAV}").each do |file|
    puts File.basename(file)
  end
end

# Uncomment these to see available samples
# list_samples(oboe)
# list_samples(bass_clarinet)
# list_samples(harp)

# Example of safer sample loading
define :play_sample_if_exists do |folder, name|
  full_path = "#{folder}/#{name}"
  if File.exist?(full_path)
    sample folder, name
  else
    puts "Warning: Sample not found: #{full_path}"
  end
end

use_bpm 72  # Stately symphonic tempo

# Global variables for movement control
set :movement_1_done, false
set :movement_2_done, false
set :movement_3_done, false
set :finale_started, false

# Movement 1: "Dawn Awakening"
# Gentle harp arpeggios with bass clarinet foundation
define :movement_one do
  puts "Movement 1: Dawn Awakening begins"
  
  in_thread do
    # Opening harp sequence - using actual available files
    with_fx :reverb, room: 0.9, mix: 0.6 do
      2.times do
        ["harp-c4.wav", "harp-f4.wav", "harp-a4.wav", "harp-c5.wav"].each do |note|
          sample harp, note, amp: 0.6, attack: 0.1, release: 1.5
          sleep 2
        end
      end
    end
    
    # Main harp theme
    4.times do
      with_fx :echo, phase: 0.75, decay: 4 do
        sequence = [
          ["harp-c4.wav", "harp-f4.wav"],
          ["harp-a4.wav", "harp-c5.wav"],
          ["harp-f4.wav", "harp-a4.wav"],
          ["harp-c5.wav", "harp-f5.wav"]
        ]
        
        sequence.each do |chord|
          chord.each do |note|
            sample harp, note,
              amp: 0.5,
              attack: 0.1,
              release: 2.0
            sleep 0.5
          end
          sleep 1
        end
      end
    end
  end
  
  # Bass clarinet foundation - using actual files
  in_thread do
    8.times do
      with_fx :reverb, room: 0.8 do
        sample bass_clarinet, "bass_clarinet-d3.wav",
          amp: 0.4,
          attack: 0.3,
          release: 2.0
        sleep 4
        
        sample bass_clarinet, "bass_clarinet-g3.wav",
          amp: 0.4,
          attack: 0.3,
          release: 2.0
        sleep 4
      end
    end
  end
  
  # Wait for movement to complete
  sleep 64
  set :movement_1_done, true
end

# Movement 2: "Pastoral Dialogue"
# Oboe and Bass Clarinet conversation
define :movement_two do
  puts "Movement 2: Pastoral Dialogue begins"
  
  in_thread do
    # Oboe melody - using actual files
    with_fx :reverb, room: 0.8, mix: 0.5 do
      6.times do
        2.times do
          sample oboe, "oboe-e4.wav",
            amp: 0.5,
            attack: 0.1,
            release: 1.5
          sleep 3
          
          sample oboe, "oboe-e5.wav",
            amp: 0.4,
            attack: 0.1,
            release: 1.0
          sleep 2
          
          sample oboe, "oboes-c4.wav",
            amp: 0.5,
            attack: 0.1,
            release: 2.0
          sleep 3
        end
        
        sample oboe, "oboes-c5.wav",
          amp: 0.4,
          attack: 0.2,
          release: 1.5
        sleep 4
      end
    end
  end
  
  # Bass Clarinet response
  in_thread do
    6.times do
      with_fx :reverb, room: 0.9 do
        pattern = [
          "bass_clarinet-b3.wav",
          "bass_clarinet-g3.wav",
          "bass_clarinet-d4.wav",
          "bass_clarinet-f3.wav"
        ]
        
        pattern.each do |note|
          sample bass_clarinet, note,
            amp: 0.45,
            attack: 0.2,
            release: 2.0
          sleep 4
        end
      end
    end
  end
  
  # Harp accompaniment
  in_thread do
    12.times do
      with_fx :echo, phase: 0.5, decay: 2 do
        sample harp, ["harp-c4.wav", "harp-a4.wav", "harp-f4.wav"].choose,
          amp: 0.4,
          attack: 0.1,
          release: 1.5
        sleep 4
      end
    end
  end
  
  # Wait for movement to complete
  sleep 96
  set :movement_2_done, true
end

# Movement 3: "Autumn Contemplation"
# Complex interweaving of all instruments
define :movement_three do
  puts "Movement 3: Autumn Contemplation begins"
  
  in_thread do
    4.times do
      with_fx :reverb, room: 0.9, mix: 0.6 do
        ["bass_clarinet-f2.wav", "bass_clarinet-b2.wav", "bass_clarinet-d3.wav"].each do |note|
          2.times do
            sample bass_clarinet, note,
              amp: 0.5,
              attack: 0.3,
              release: 3.0
            sleep 6
          end
        end
      end
    end
  end
  
  in_thread do
    4.times do |i|
      with_fx :reverb, room: 0.8 do
        3.times do
          sample oboe, "oboe-e4.wav",
            amp: 0.4 + (i * 0.1),
            attack: 0.2,
            release: 2.0
          sleep 4
          
          sample oboe, "oboes-c5.wav",
            amp: 0.35 + (i * 0.1),
            attack: 0.1,
            release: 1.5
          sleep 4
        end
        
        sample oboe, "oboe-e5.wav",
          amp: 0.4,
          attack: 0.3,
          release: 2.5
        sleep 6
      end
    end
  end
  
  # Harp textures
  in_thread do
    8.times do |i|
      with_fx :echo, phase: 0.75, decay: 4 do
        # Ascending pattern
        ["harp-c4.wav", "harp-f4.wav", "harp-a4.wav", "harp-c5.wav"].each do |note|
          sample harp, note,
            amp: 0.45,
            attack: 0.1,
            release: 1.0
          sleep 1
        end
        
        # Descending pattern
        ["harp-a4.wav", "harp-f4.wav", "harp-c4.wav"].each do |note|
          sample harp, note,
            amp: 0.4,
            attack: 0.1,
            release: 1.0
          sleep 1
        end
      end
    end
  end
  
  # Wait for movement to complete
  sleep 128
  set :movement_3_done, true
end

# Finale: "September's Farewell"
define :finale do
  puts "Finale: September's Farewell begins"
  set :finale_started, true
  
  in_thread do
    2.times do
      with_fx :reverb, room: 0.95, mix: 0.7 do
        ["bass_clarinet-g4.wav", "bass_clarinet-d4.wav", "bass_clarinet-b3.wav"].each do |note|
          sample bass_clarinet, note,
            amp: 0.6,
            attack: 0.4,
            release: 3.0
          sleep 6
        end
      end
    end
  end
  
  in_thread do
    sleep 12
    
    2.times do
      sample oboe, "oboe-e5.wav",
        amp: 0.5,
        attack: 0.3,
        release: 2.5
      sleep 8
      
      sample oboe, "oboes-c5.wav",
        amp: 0.45,
        attack: 0.2,
        release: 2.0
      sleep 4
    end
  end
  
  # Final harp cascade
  with_fx :echo, phase: 1, decay: 6 do
    sleep 24
    
    ["harp-c6.wav", "harp-a5.wav", "harp-f5.wav", "harp-c5.wav", "harp-a4.wav", "harp-f4.wav", "harp-c4.wav"].each do |note|
      sample harp, note,
        amp: 0.5,
        attack: 0.1,
        release: 2.0
      sleep 2
    end
  end
end

# Main composition control
define :conduct_symphony do
  movement_one
  
  # Transition to Movement 2
  sleep 4
  
  movement_two
  
  # Transition to Movement 3
  sleep 6
  
  movement_three
  
  # Transition to Finale
  sleep 8
  
  finale
end

# Start the symphony
conduct_symphony
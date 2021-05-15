# Horny Mystery

# record is available at:
# https://soundcloud.com/atyilmaz/horny-mystery

# made with 
# violin, flute and horn samples and sonic-pi
# https://github.com/peastman/sso

# place sample files under a path and provide full path
# to their respective parent folders
# eg. for violin-a4.wav in violins folder,
# sample violins, "violin-a4", [..other opts..]
 

violins = "/Users/streamerd/devel/musicode/violins/"
flutes = "/Users/streamerd/devel/musicode/flutes/"
horns = "/Users/streamerd/devel/musicode/horns/"

live_loop :horns_w_vio do
  sleep 3
  sample horns, "horn-e3", amp: 2
  sleep 0.4
  sample horns, "horn-e3", amp: 2
  sleep 0.2
  sample horns, "horn-e4", amp: 2
  
  sleep 0.2
  sample horns, "horn-g3", amp: 2
  sleep 0.4
  sample horns, "horn-g3", amp: 4, rate: 2, relax_time: 0.5
  sleep 3
  sample violins, "violin-a4", amp: 2, rate: 2, relax_time: 2
end

live_loop :splash do
  sleep 0.5
  sync :horns_w_vio
  3.times do
    sample flutes, "flutes-stc-rr2-c5", amp: 4
    sleep 0.4
    sample flutes, "flutes-stc-rr2-c5", amp: 4
  end
end

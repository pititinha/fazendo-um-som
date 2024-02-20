#fazendo um som

use_bpm 123

live_loop :melodia do
  play (scale :c3, :major)
  sample :ambi_choir, rate: 0.5
  sleep 3
end

live_loop :flibble do
  sample :bd_haus, rate: 1
  sleep 1
end

live_loop :bass do
  sample :bass_dnb_f, rate: 1, decay_level: 1, threshold: 30,
    compress: 1, attack_level: 4
  sleep 2
end

live_loop :melodia do
  sample :bass_trance_c, rate: 1, decay_level: 1, pitch_stretch: 1
  synth :growl, rate: 1, release: 0.5
  sleep 2
end

live_loop :snare do
  sample :drum_snare_soft, rate: 3
  sample :bd_808, rate: 1
  sleep 1
end

live_loop :house do
  sample :drum_bass_soft, rate: 3
  sample :drum_cymbal_open, rate: 7, decay_level: 0.1, pitch: 1
  sample :hat_bdu, rate: 3, threshold: 30, compress: 1, attack: 1
  sleep 2
end

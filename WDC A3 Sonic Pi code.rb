1. times do
  with_fx :reverb, mix: 0.6 do
    chord_notes = (chord :E3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    chord_notes = (chord :F3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    chord_notes = (chord :D3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    chord_notes = (chord :E3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    sleep 2
  end
end

sample :elec_filt_snare
sleep 1

use_bpm 90

live_loop :drums do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 1
end

live_loop :bd do
  sample :elec_soft_kick
  sample :bd_ada, rate: 1
  sleep 0.5
  sample :bd_ada, rate: 1
  sleep 0.25
  sample :bd_haus, rate: 1
  sleep 0.25
  sample :bd_ada, rate: 1
  sleep 0.25
  sample :bd_haus, rate: 1
  sleep 0.25
  sample :bd_ada, rate: 1
  sleep 0.25
  sample :bd_haus, rate: 1
  sleep 0.25
  sample :bd_ada, rate: 1
  sleep 0.5
end

live_loop :synth_pad do
  with_fx :reverb, mix: 0.6 do
    chord_notes = (chord :E3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    sleep 0.5
    chord_notes = (chord :F3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    sleep 0.5
    chord_notes = (chord :D3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    sleep 0.5
    chord_notes = (chord :E3, :minor, num_octaves: 2)
    play_pattern_timed chord_notes, 0.25, release: 2, amp: 0.5
    sleep 2.5
  end
end

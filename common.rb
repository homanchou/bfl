def read_reps(info, desc)
    num = info[:reps] 
   `say "let's do #{num} repetitions.  This should be an intensity of #{info[:level]}.  Ready?  Go."`
    sleep(1)
  1.upto(num) do |i|
    `say "#{i}"`
    sleep(1.2)
    if i == num 
        `say "all done with #{num} repetitions"`
    else
        `say "and."`
    end
    sleep(0.8)
  end
  puts "finished #{num} reps"
end

def reps_with_rest(info, desc)
  read_reps(info, desc)
  `say "let's rest for 60 seconds.  You can add more weight for your next set which is intensity of level #{info[:level] + 1}"`
  sleep(25)
  `say "get ready, your 60 second break is almost over"`
  sleep(10)
  `say "rest is over"`
end

def set(desc)
   `say "let's work on #{desc}"`
  [{reps:12, level:5}, {reps:10, level:6}, {reps:8, level:7}, {reps:6, level:8}].each do |info|
    reps_with_rest(info, desc)
  end
  `say "now for the high intensity, 12 back to back"`
  read_reps({reps: 12, level:9}, desc)
  `say "switch to other #{desc} exercise with no break"`
  read_reps({reps: 12, level: 10}, desc)
  `say "all done with #{desc} exercises."`
end

def run_program(areas)
  program_started = Time.now
  puts program_started
  `say "Timed audio workout started.  Once started, this program cannot be paused."`
  sleep(2)
  areas.each_with_index do |area, index|
      puts "Starting #{area} exercises"
      `say "Get ready for #{area} exercises.  You have 5 seconds to get in position."`
      sleep(4)
      set(area)
      if area == areas.last
          `say "Yay!  You're all done!"`
      else
          `say "get ready to do #{areas[index+1]} next, after this 2 minute break.  You might want to drink some water to stay hydrated."`
          sleep(40)
          `say "one more minute of rest"`
          sleep(50 - 5)
      end
      puts "Time elapsed after #{area} exercises: #{program_started - Time.now}"
  end
end
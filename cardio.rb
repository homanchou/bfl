
def six_seven_eight_nine()
  `say 'one minute at level six'`
  sleep(60)
  `say 'one minute at level seven'`
  sleep(60)
  `say 'one minute at level eight'`
  sleep(60)
  `say 'one minute at level nine'`
  sleep(60)
end

`say "hi, let's do cardio.  You have 5 seconds to get ready"`
  sleep(5)

`say 'two minutes at level 5'`
sleep(60)
`say 'one more minute at level 5'`
sleep(60)
4.times do
    six_seven_eight_nine()
end
`say 'one minute at 10'`
sleep(60)
`say 'cool down at 5'`
sleep(60)
`say 'congratulations your workout is over'`


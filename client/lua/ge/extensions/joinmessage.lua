local M = {}

AddEventHandler('PlayerJoin', function(playerName)
  -- The sound file that will play
  Engine.Audio.playOnce('AudioGui', 'content/audio/player-join.ogg')

  -- Message that will pop up on the top left corner of the screen
  guihooks.message(
    -- This will be the text that is shown
    playerName .. ' just joined',
    -- Amount of seconds that the pop up message will be shown for
    10,
    -- This is the tag for the pop up, when defined, triggering this twice in
    -- short succession will replace the previous pop up.
    -- Change this to "nil" if you want to make sure there is a separate pop up
    -- for each player joining within the timespan that a pop up is shown for.
    'player_join',
    -- Icon to be show next to the text in the pop up
    'people'
  )
end)

return M

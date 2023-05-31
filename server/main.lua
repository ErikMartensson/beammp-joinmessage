local M = {}

function OnPlayerJoin(pid)
  local playerName = MP.GetPlayerName(pid)

  -- Trigger client side event to do fancy effects to show a player has joined,
  -- like playing a sound and show a pop up on screen.
  MP.TriggerClientEvent(-1, 'PlayerJoin', playerName)

  -- Send global message in chat
  MP.SendChatMessage(-1, playerName .. ' just joined')
end

MP.RegisterEvent('onPlayerJoin', 'OnPlayerJoin')

return M

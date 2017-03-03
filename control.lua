script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  player.clear_items_inside()
  if (#game.players <= 1) then
    game.show_message_dialog{text = {"msg-intro2"}}
  else
    player.print({"msg-intro2"})
  end
end)
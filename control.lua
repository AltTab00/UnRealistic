require("config")

local function set_inventory(e)
  local player = game.players[e.player_index]
  player.clear_items_inside()
  player.insert{name="pistol", count=1}
  player.insert{name="ai-unit", count=1}
  if EASY_STARTUP then
    player.insert{name="burner-mining-drill", count=2}
  end
end

local function player_created(e)
  set_inventory(e)
end
local function cutscene_cancelled(e)
  if remote.interfaces["freeplay"] then
    set_inventory(e)
    if (#game.players <= 1) then
      game.show_message_dialog{text = {"msg-intro2"}}
    else
      player.print({"msg-intro2"})
    end
  end
end
script.on_event(defines.events.on_player_created,player_created)
script.on_event(defines.events.on_cutscene_cancelled,cutscene_cancelled)
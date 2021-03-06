-- ProbablyEngine Rotations - https://probablyengine.com/
-- Released under modified BSD, see attached LICENSE.

ProbablyEngine.listener.register("PLAYER_LOGIN", function(...)
  ProbablyEngine.rotation.auto_unregister()
  ProbablyEngine.listener.eventActions["PLAYER_SPECIALIZATION_CHANGED"]("player")
  ProbablyEngine.rotation.add_buttons()
  if not ProbablyEngine.full then
    ProbablyEngine.full_check()
    ProbablyEngine.module.world.add_friendly(UnitGUID("player"), UnitName("player"))
  end
end)

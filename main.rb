#coding : UTF-8

require 'dxruby'
require 'dxrubyex'
require_relative 'player'
require_relative 'pos'
require_relative 'dice'
require_relative 'event'
require_relative 'map'
require_relative 'lib/scene'

Window.width   = 800
Window.height  = 600

Scene.load_scenes
Scene.set_scene(:title)

Window.loop do
  Scene.play
  scene = Scene.current

  if scene.finished?
    case scene
    when Title
      Scene.set_scene(:select_player)
    when SelectPlayer
      Scene.set_scene(:game_start)
    when GameStart
      Scene.set_scene(:game)
    when Game
      Scene.set_scene(:ending)
    when Ending
      break
    end
  end
end

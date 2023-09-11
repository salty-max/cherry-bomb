function _init()
  stars = {}
  make_starfield()

  _upd = update_menu
  _drw = draw_menu

  debug = {}
end

function start_game()
  a_t = 0

  ship = {
    x = 60,
    y = 112,
    vx = 0,
    vy = 0,
    spr = 2
  }
  ship_flm = {32, 33, 34, 35 ,36}
  flm_idx = 1

  muzzle = 0

  bul = {}
  bul_spd = 2

  mobs= {}
  make_mob(60, 30)

  score = 1337
  lives = 1
  max_lives = 3

  _upd = update_game
  _drw = draw_game
end

function _update60()
  _upd()
end

function _draw()
  _drw()

  cursor(4, 4)
  color(12)
  for d in all(debug) do
    print(d)
  end
end
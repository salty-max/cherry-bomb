function move_ship()
  ship.vx = 0
  ship.vy = 0
  ship.spr = 2

  if btn(0) then
    ship.vx = -1
    ship.spr = 1
  elseif btn(1) then
    ship.vx = 1
    ship.spr = 3
  end
  
  if btn(2) then
    ship.vy = -1
  elseif btn(3) then
    ship.vy = 1
  end

  ship.x += ship.vx
  ship.y += ship.vy

  if ship.x < -7 then
    ship.x = 127
  elseif ship.x > 127 then
    ship.x = 0
  end

  if ship.y < -7 then
    ship.y = 127
  elseif ship.y > 127 then
    ship.y = 0
  end
end

function shoot()
  if btnp(4) then
    sfx(0)
    muzzle = 5
    make_bullet(ship.x, ship.y - 6)
  end
end

function make_bullet(x, y)
  add(bul, {
    x = x,
    y = y,
    spr = 1,
    anm = {16, 17}
  })
end

function check_end()
  if lives <= 0 then
    _upd = update_gover
    _drw = draw_gover
  end
end
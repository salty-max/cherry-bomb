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
  if btn(4) then
    if shoot_cd <= 0 then
      sfx(0)
      muzzle = 5
      make_bullet(ship.x, ship.y - 6)
      shoot_cd = 4
    else
      shoot_cd -= 1
    end
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
  return lives <= 0
end
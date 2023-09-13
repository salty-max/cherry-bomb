function update_game()
  a_t += 1
  update_starfield()
  update_ship()
  update_mobs()
  update_bullets()
end

function update_bullets()
  for b in all(bul) do
    if b.y < -8 then
      del(bul, b)
    end

    b.y -= bul_spd

    for m in all(mobs) do
      if collide(b, m) then
        m.hp -= 1
        m.flash = 2
        del(bul, b)
        sfx(3)
      end
    end

    b.spr = 1 + flr((a_t / 6) % #b.anm)
  end
end

function update_ship()
  move_ship()

  if invul <= 0 then
    for m in all(mobs) do
      if collide(m, ship) then
        sfx(1)
        lives -= 1
        invul = 60
        --del(mobs, m)
      end
    end
  else
    invul -= 1 
  end

  check_end()

  shoot()

  -- react flame animation
  flm_idx = 1 + flr((a_t / 4) % #ship_flm)

  -- muzzle flash
  if muzzle > 0 then
    muzzle -= 1
  end
end

function update_mobs()
  for m in all(mobs) do
    m.y += 1

    if m.y > 128 then
      del(mobs, m)
      spawn_mob()
    end

    if m.hp <= 0 then
      sfx(2)
      del(mobs, m)
      score += 10
      explode(m.x + 4, m.y + 4)
      spawn_mob()
    end

    m.spr = 1 + flr((a_t / 12) % #m.anm)
  end
end

function update_starfield()
  for s in all(stars) do
    s.y += s.spd
    if s.y > 128 then
      s.y = 0
      s.x = flr(rnd(128))
      s.spd = rnd(1.5) + 0.5
    end
  end
end

function update_menu()
  update_starfield()

  if btnp(5) then
    start_game()
  end
end

function update_gover()
  update_starfield()

  if btnp(5) then
    start_game()
  end
end
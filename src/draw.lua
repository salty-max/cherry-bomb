function draw_game()
  cls(0)
  draw_starfield()
  draw_ship()
  draw_mobs()
  draw_bullets()
  draw_explos()
  draw_ui()
end

function draw_ship()
  if muzzle > 0 then
    circfill(ship.x + 3, ship.y - 2, muzzle, 7)
  end

  if invul <= 0 then
    draw_spr(ship)
    spr(ship_flm[flm_idx], ship.x, ship.y + 7)
  else
    if sin(frm / 6) < 0 then
      draw_spr(ship)
      spr(ship_flm[flm_idx], ship.x, ship.y + 7)
    end
  end
end

function draw_mobs()
  for m in all(mobs) do
    if m.flash > 0 then
      m.flash -= 1
      for i = 1, 15 do
        pal(i, 7)
      end
    end
    draw_spr(m)
    pal()
  end
end

function draw_bullets()
  for b in all(bul) do
    draw_spr(b)
  end
end

function draw_ui()
  local scr_txt = "score: " .. score
  print(scr_txt, 127 - (2 + #scr_txt * 4), 4, 12)

  for i = 1, max_lives do
    local s = 64
    if lives < i then
      s = 65
    end
    spr(s, 4 + (i - 1) * 9, 4)
  end
end

function draw_starfield()
  for s in all(stars) do
    local c = 6
    if s.spd < 1 then
      c = 1
    elseif s.spd  < 1.5 then
      c = 13
    end
    pset(s.x, s.y, c)
  end
end

function draw_spr(s)
  if s.anm then
    spr(s.anm[s.spr], s.x, s.y)
  else
    spr(s.spr, s.x, s.y)
  end
end

function draw_explos()
  for ex in all(explos) do
    ex.age += 0.2
    spr(80 + flr(ex.age) * 2, ex.x, ex.y, 2, 2)

    if ex.age > 5 then
      del(explos, ex)
    end
  end
end

function draw_menu()
  cls(0)
  draw_starfield()
  spr(192, 64 - 8 * 6, 32, 12, 2)
  print_center("press ❎ to start", 80, blink())
  spr(255, 116, 116)
end

function draw_gover()
  cls(0)
  draw_starfield()
  print_center("game over", 32, 8)
  print_center("score: "..score, 50, 6)
  print_center("press ❎ to start", 80, blink())
end
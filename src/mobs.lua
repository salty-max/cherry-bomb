function make_mob(x, y)
  add(mobs, {
    x = x,
    y = y,
    spr = 1,
    anm = {128, 129, 130, 131}
  })
end

function spawn_mob()
  make_mob(rnd(120), -7)
end
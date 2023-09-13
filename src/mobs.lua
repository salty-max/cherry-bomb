function make_mob(idx, x, y)
  local m = {
    name = d_mobs.name[idx],
    x = x,
    y = y,
    hp = d_mobs.hp[idx],
    max_hp = d_mobs.hp[idx],
    atk = d_mobs.atk[idx],
    spr = 1,
    flash = 0,
    anm = {}
  }

  for i = 0, 3 do
    add(m.anm, d_mobs.sp[idx] + i)
  end

  add(mobs, m)
end

function spawn_mob()
  make_mob(1, rnd(120), -7)
end
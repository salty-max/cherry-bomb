function make_starfield()
  for i = 1, 100 do
    add(stars, {
      x = flr(rnd(128)),
      y = flr(rnd(128)),
      spd = rnd(1.5) + 0.5
    })
  end
end

function explode(x, y)
  add(parts, {
    x = x,
    y = y,
    sx = 0,
    sy = 0,
    r = 8,
    age = 0,
    max_age = 0
  })
  for i = 1, 30 do
    add(parts, {
      x = x,
      y = y,
      sx = (rnd() - 0.5) * 4,
      sy = (rnd() - 0.5) * 4,
      r = 1 + rnd(4),
      age = rnd(2),
      max_age = 10 + rnd(20)
    })
  end
end
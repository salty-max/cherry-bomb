function make_starfield()
  for i = 1, 100 do
    add(stars, {
      x = flr(rnd(128)),
      y = flr(rnd(128)),
      spd = rnd(1.5) + 0.5
    })
  end
end

function explode(col, x, y)
  -- detonation particles
  add(parts, {
    x = x,
    y = y,
    sx = 0,
    sy = 0,
    r = 10,
    age = 0,
    max_age = 0,
    col = col
  })

  -- explosion particles
  for i = 1, 30 do
    add(parts, {
      x = x,
      y = y,
      sx = (rnd() - 0.5) * 4,
      sy = (rnd() - 0.5) * 4,
      r = 1 + rnd(4),
      age = rnd(2),
      max_age = 10 + rnd(20),
      col = col
    })
  end

  -- sparks
  make_sparks(x, y, 20)

  make_shwave(x, y, 20, 1.5, 7)
end

-- Returns particle color depending on its age (red scheme)
function page_red(age)
  local col = 7
  if age > 20 then
    col = 5
  elseif age > 15 then
    col = 2
  elseif age > 12 then
    col = 8
  elseif age > 10 then
    col = 9
  elseif age > 7 then
    col = 10
  end

  return col
end

-- Returns particle color depending on its age (blue scheme)
function page_blue(age)
  local col = 7
  if age > 20 then
    col = 1
  elseif age > 15 then
    col = 13
  elseif age > 12 then
    col = 12
  elseif age > 10 then
    col = 12
  elseif age > 7 then
    col = 6
  end

  return col
end

function make_shwave(x, y, max_r, spd, col)
  add(shwaves, {
    x = x,
    y = y,
    r = 3,
    spd = spd,
    max_r = max_r,
    col = col
  })
end

function make_sparks(x, y, n, col)
  for i = 1, n do
    add(parts, {
      x = x,
      y = y,
      sx = (rnd() - 0.5) * 8,
      sy = (rnd() - 0.5) * 8,
      age = rnd(2),
      r = 1 + rnd(4),
      spark = true,
      max_age = 10 + rnd(20),
      col = col and col or 7
    })
  end
end
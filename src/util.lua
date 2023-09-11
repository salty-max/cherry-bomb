function print_center(s, y, c)
  print(s, 64 - (#s / 2) * 4, y, c)
end

function blink()
  return 5 + min(abs(sin(time() / 2) * 4), 1)
end

function collide(a, b)
  local ax, ax2, ay, ay2 = a.x, a.x + 7, a.y, a.y + 7
  local bx, bx2, by, by2 = b.x, b.x + 7, b.y, b.y + 7
  return ax < bx2 and ax2 > bx and ay < by2 and ay2 > by 
end
radius = as.double(readline('Radius:'))

if (radius >= 0) {
  surface = round(4 * pi * (radius ^ 2), 2)
  
  volume = round(4 / 3 * pi * (radius ^ 3), 2)
  
  cat(
    'A sphere with a radius of',
    radius,
    'unit will have the approximate surface area of',
    surface,
    'square unit and an approximate volume of',
    volume,
    'cubic unit'
  )
} else {
  print('Error: radious cannot be negative.')
}

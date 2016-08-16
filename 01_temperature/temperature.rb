def ftoc(temperature_f)
  (temperature_f - 32) * 5.0 / 9.0
end

def ctof(temperature_c)
  return temperature_c * 9.0 / 5.0 + 32
end

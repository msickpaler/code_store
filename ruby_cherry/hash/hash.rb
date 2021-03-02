# frozen_string_literal: true

UNITS = { m: 1, in: 39.37, ft: 3.28 }.freeze
def convert_length(length, from: :m, to: :m)
  p (length / UNITS[from] * UNITS[to]).round(2)
end

convert_length(1, from: :m, to: :in) #=>39.37
convert_length(15, from: :in, to: :m) #=>0.38
convert_length(35_000, from: :ft, to: :m) #=>10670.73

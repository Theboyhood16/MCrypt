#Array.new(128 * 1000 * 1000) {(rand(93) + 34).chr}.join
#Array.new(128 * X * Y) {range.sample().chr}.join

def generate_key(string_length, strings_per_char)

  range = [*34..126]
  
  return (Array.new(128) {Array.new(strings_per_char) {Array.new(string_length) {range.sample().chr}.join }}).map.with_index { |x, i| [i, x] }.to_h

 end

generate_key(1000, 1000)

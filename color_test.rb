require_relative 'color'

String.include(Color)

puts "\n Instance method color"

puts "Je suis axel !".color
puts "Je suis vert !".color :green
puts "Je suis une erreur".color 42
puts "je suis tres rouge".color :lred

puts "\n Class method color"

puts Color::color "Je suis un test"
puts Color::color "Je suis un test vert", :green
puts Color::color "Je suis une erreur", 42
puts Color::color "Je suis tres rouge", :lred

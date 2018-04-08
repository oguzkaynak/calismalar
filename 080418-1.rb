# puts "Selam" if !true
#
# unless true
#   puts "Selam"
# end
#
# for (i=0; i<=10; i=i+1) {
#   console.log("Merhaba")
# }

0.upto 10 do |sayac|
  puts "Selam #{sayac}"
end

# downto

# Aralıklar (Range)
(1..10).each do |i|
  puts i
end

sayac = 1
while sayac < 10
  puts sayac
  sayac = sayac + 1
end

sayac = 15
until sayac < 10
  puts "until #{sayac}"
  sayac -= 1
end

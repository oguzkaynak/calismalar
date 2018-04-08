yanit = "E"
until yanit == "H"
  print "1. sayıyı girin: "
  sayi1= gets.to_f
  print "2. sayıyı girin: "
  sayi2= gets.to_f
  puts "Sayıların toplamı #{sayi1 + sayi2}"
  print "Tekrar denemek ister misin?(E/H): "
  yanit = gets.chomp
end

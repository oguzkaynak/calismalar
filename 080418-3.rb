sayi = rand(50)
puts "hadi bir oyun oynayalım"
print "1 ile 50 arasında bir sayı söyle: "

def karsilastir(sayi, tahmin)
  if sayi > tahmin
    print "arttır: "
  else
    print "azalt: "
  end
end

until (tahmin = gets.to_i) == sayi
  karsilastir(sayi, tahmin)
end

puts "tebrikler"

koşul ? doğruysa : değilse

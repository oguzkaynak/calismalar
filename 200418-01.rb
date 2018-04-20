=begin
Veri Türleri
- Numeric
  - Integer
  - Float
  - Rational
  - Complex
- String
  - Tek tırnak
  - Çift tırnak
  - Metin içine gömme(embedding)
- Boolean
  - false (false veya nil)
  - true (geri kalan herşey true)
  - nil
- Symbol
- Compound Data Types
  - Array (Dizi)
  - Hash (Sözlük)
- Object Oriented Programming
  - Class
  - Object
  - Inheritance
  - Mixin
  - Module
=end


uzman = {
  "ad" => "Oğuz",
  "soyad" => "Kaynak",
  "uzmanlik" => "Network Creation and Cracking, Hacking, blah blah",
  "yas" => 18,
  "kadın mı" => false,
  "programlama dilleri" => ["Ruby", "C", "Assembly", "Python", "Japonca"]
}

uzman = {
  :ad => "Oğuz",
  :soyad => "Kaynak",
  :uzmanlik => "Network Creation and Cracking, Hacking, blah blah",
  :yas => 18,
  :"kadın mı" => false,
  :"programlama dilleri" => ["Ruby", "C", "Assembly", "Python", "Japonca"]
}

uzman = {
  ad: "Oğuz",
  soyad: "Kaynak",
  uzmanlik: "Network Creation and Cracking, Hacking, blah blah",
  yas: 18,
  "kadın mı": false,
  "programlama dilleri": ["Ruby", "C", "Assembly", "Python", "Japonca"]
}





uzmanlar = [
  {
    ad: "Sıtkı",
    soyad: "Bağdat",
    alan: "Ruby"
  },
  {
    ad: "Oğuz",
    soyad: "Kaynak",
    alan: "Hacking"
  },
  {
    ad: "Linus",
    soyad: "Torvalds",
    alan: "System Programming"
  },
  {
    ad: "Bill",
    soyad: "Gates",
    alan: "Trading"
  }
]

  uzmanlar.each do |uzman|
    puts "#{uzman[:ad]} #{uzman[:soyad].upcase}, #{uzman[:alan].downcase} alanında uzman bir kişiliktir."
  end

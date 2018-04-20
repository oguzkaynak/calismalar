adaylar = [
  {
    ad: "Rana Kömürcü",
    yas: 27,
    diller: ["ruby","python","c++"],
    referans_puani: 6.0
  },
  {
    ad: "sıtkı bagdat",
    yas: 40,
    diller: ["ruby","python","c++"],
    referans_puani: 10.0
  },
  {
    ad: "oguz kaynak",
    yas: 23,
    diller: ["ruby","python","c++","c","java"],
    referans_puani: 17.5
  },
  {
    ad: "kamil dönmez",
    yas: 27,
    diller: ["ruby","python",],
    referans_puani: 6.0
  },
  {
    ad: "aşkım balım",
    yas: 27,
    diller:["c++","java"],
    referans_puani: 9.0
  }
]

adaylar.each do |aday|
  if aday[:yas] > 18 && aday[:yas] < 35
    aday[:yas_puani] = 1
  else
    aday[:yas_puani] = 0
  end

  if aday[:diller].count >= 5
    aday[:dil_puani] = 1
  else
    aday[:dil_puani] = 0
  end

  aday[:dil_puani] += 1 if aday[:diller].include? "ruby"
  aday[:dil_puani] += 1 if aday[:diller].include? "python"
  aday[:dil_puani] += 1 if aday[:diller].include? "c++"

  aday[:toplam_puan] = aday[:yas_puani] + aday[:dil_puani] + aday[:referans_puani]
end

adaylar.sort_by {|aday| aday[:toplam_puan]}.last(3).reverse.each do |kazanan_aday|
  puts "Sayın #{kazanan_aday[:ad].split.map {|i| i.capitalize}.join(" ")}, ön elemeyi #{kazanan_aday[:toplam_puan]} puan ile kazandınız. Tebrikler!"
end

class Lottery
  # Sabitler
  NUMBERS_COUNT_IN_THE_COLUMN = 6
  MIN_LIMIT = 1
  MAX_LIMIT = 49

  # Constructor - Oluşturucu veya Yapıcı
  def initialize
    # Örnek Değişkenleri - instance variables
    @columns_count = 2
    @columns = []
  end

  # public - Her yerden erişilebilir
  def create_coupon
    # Kaç tane kolon gerekliyse o kadar create_column metodunu çalıştır
    # @columns_count adedince create_column metodunu çağır
    @columns_count.times do
      create_column
    end
  end

  def print_coupon
    pp @columns
  end

  # Bu metotlara sadece sınıfın içinden erişilebilir
  private
  def create_column
    column = []
    # Kolonu oluştur ve @columns dizisine at
    # Kolonu oluştururken kolondaki sayı adedi kadar create_random_number
    # metodunu çalıştır
    # NUMBERS_COUNT_IN_THE_COLUMN adedince create_random_number metodunu çağır
    # Tekrarlanan sayıları önle
    until column.size == NUMBERS_COUNT_IN_THE_COLUMN
      random_number = create_random_number
      column << random_number unless column.include? random_number
    end

    # Oluşturulan colonu @columns dizisine ekle
    @columns << column.sort
  end

  def create_random_number
    # Belirlenen sınırlar içerisinde rastgele bir sayı bul
    # MIN_LIMIT ile MAX_LIMIT arasında bir sayı bul ve döndür
    rand(MIN_LIMIT..MAX_LIMIT)
  end
end

lot = Lottery.new
lot.create_coupon
lot.print_coupon

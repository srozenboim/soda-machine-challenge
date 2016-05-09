class SodaMachine
  attr_accessor :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  else
    return true
  end



  def sell(soda_brand)
    if find_soda(soda_brand) == true
      @cash += @sodas[soda_brand]
      @sodas.delete(soda_brand)
    else
      return nil
    end

  end

end


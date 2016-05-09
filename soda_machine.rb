class SodaMachine
  attr_accessor :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  #look for soda_brand in the sodas array, return the soda_brand if it's there
  def find_soda(soda_brand)
    if @sodas.include?(soda_brand.downcase) == true
      soda_brand
    else
      return nil
    end
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


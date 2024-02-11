class Array
  attr_accessor :split_by_parity

  def split_by_parity
    partition(&:even?)
  end
end

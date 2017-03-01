require_relative 'transaction'

module Statement
  attr_accessor :date, :amount

  def statement
    header
    table
  end

  private
  def header
    print col("date:") + col("credit:") + col("debit:") + col("balance:"), "\n"
  end

  def table
    @history.reverse.each_with_index { |x, i|
      print col(x.date) + amounts(x.amount), calculate(x.amount, i), "\n"
    }
  end

  def amounts(amount)
    amount > 0 ? col(amount.to_s) + col : col + col((-1*amount).to_s)
  end

  def calculate(x, idx)
    col(data[0..(data.length-idx-1)].inject(0,&:+).to_s)
  end

  def data
    return @history.collect {|x| x.amount}
  end

  def space(x=1)
    space = ""
    x.times { space << " " }
    return space
  end

  def col(value=" ")
    return "#{space}#{value}#{space(10 - value.length)}||"
  end
end

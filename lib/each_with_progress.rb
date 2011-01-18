module Enumerable
  def each_with_progress(&block)
    out = STDERR
    count = self.count
    self.each_with_index do |element,i|
      out.print sprintf("%s", ewp_makeProgress(i,count)) + "\r"
      block.call element
    end
    out.print sprintf("%s",ewp_makeProgress(count, count)) + "\r"
  end

  protected
  def ewp_makeProgress(iteration, total)
    percent = (Float(iteration) / Float(total)) * 100
    percent = (( percent / 1).round * 1).to_i
    number_of_bars = percent / 5
    progress = ""
    for i in 0..number_of_bars do
      progress = progress + "="
    end
    for i in 0..(19 - number_of_bars) do
      progress = progress + " "
    end
    if percent < 10 && percent != 100
      progress = progress + " "
    end
    return percent.to_s + "% |" + progress + "| " + iteration.to_s + "/" + total.to_s
  end
end

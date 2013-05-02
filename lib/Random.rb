class Random

  WORDS = ["hello","goodbye","poop","what","this","yuck"]

  def self.getRandomNumber()
    nums = [1,2,3,4,5,6]
    return nums.sample
  end

  def self.getRandomColor
    return '#' + "%06x" % (rand * 0xffffff)
  end
end

class Wordship

  def self.getRandomNumber()
    scale = [25, 50, 75, 100]
    return scale.sample
  end
end

class Mapping

	MYWALDOS = [
		["waldo1.jpg", "157px", "135px", "26px", "18px"],
		["waldo2.jpg", "425px", "195px", "21px", "10px"],
		["waldo3.jpg", "490px", "255px", "27px", "14px"],
		["waldo4.jpg", "968px", "25px", "16px", "9px"],
		["waldo5.jpg", "730px", "240px", "16px", "15px"],
		["waldo6.jpg", "257px", "545px", "21px", "16px"],
		["waldo7.jpg", "694px", "260px", "9px", "8px"],
		["waldo8.jpg", "854px", "205px", "22px", "10px"],
	]

	def initialize
		@yettoplay = MYWALDOS
		@current = []
		@played = []
	end

	# Every time the browser refreshes, it will load new picture
	# Start with first picture in array, take out element(shift), show in view(current), then push to @played

	def beginGame
		@current = @yettoplay.shift
		return @current
	end

	def winGame
		@played.push(@current)
	end

	def playGame
		@yettoplay.each do |w|
			return beginGame
		end
	end
end
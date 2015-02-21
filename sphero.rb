require 'artoo'


connection :sphero, :apaptor => :sphero, :port => '/dev/tty.Sphero-WRR-AMP-SPP'
device :sphero, :driver => :sphero

work do
	@rolling = false

	every(3.seconds) do
		puts "Rolling"
		sphero.roll 90, rand(360)
	end
end

def find_the_gingers(input)
	ret = []
	input.each do |x, y|
		if y == :red
			ret << x
		end
	end
	ret
end

Dupont_family = {
	"matthew" => :red,
	"mary" => :blonde,
	"virginia" => :brown,
	"gaetan" => :red,
	"fred" => :red,
}

p find_the_gingers Dupont_family

class CssBlock
	attr_reader :selector, :properties


	def initialize(selector, properties= {})

		@selector = selector
		@properties = properties
	end

	def set(key, value= nil)
		new_properties = if key.is_a?(Hash)
			key
		elsif !value.nil?
			{
				key=>value
			}
		else
			raise "Either provide a Hash of values, or a key and value."
		end

		self.class.new(self.selector, self.properties.merge(new_properties))
	end

	def to_s

		serialised_properties = self.properties.inject([]) do |acc, (k,v)|
			acc + ["#{k}: #{v}"]
		end


		"#{self.selector} { #{serialised_properties.join("; ") } }"
	end


end


puts CssBlock.new("#div1 .class a").set({ "color" => "#000", "text-decoration" => "underline"})


@bloque = CssBlock.new("div2 .class b").set({"background-color" => "green", "position" =>" absolute", "prueba" =>" prueba"})

puts @bloque

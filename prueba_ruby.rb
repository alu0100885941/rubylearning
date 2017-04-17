def module_split(module_path, separator = "::")
	modules= module_path.split(separator)
	modules.length.downto(1).map { |n| modules.first(n).join(separator) }
end

puts module_split("W::X::Y::Z")

Template = {
	mod_path = ModPath,
	save_path = SavePath .. "Template.txt",
	localization_path = ModPath .. "localization/",
	mod_options_path = ModPath .. "mod_options.txt",
	options = {
		toggle = false
	}
}

function Template:save()
	local file = io.open(self.save_path, "w+")
	if file then
		file:write(json.encode(self.options))
		file:close()
	end
end

function Template:load()
	local file = io.open(self.save_path, "r")
	if file then
		self.options = json.decode(file:read("*a"))
		file:close()
	end
end

function Template:set_option(name, value)
	self.options[name] = value
end

function Template:option(name)
	return self.options[name]
end

Template:load()
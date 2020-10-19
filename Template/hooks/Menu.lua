Hooks:Add("MenuManagerInitialize", "Template_menu", function ()
	function MenuCallbackHandler:Template_toggle(item)
		Template:set_option("toggle", item:value() == "on")
	end

	function MenuCallbackHandler:Template_back()
		Template:save()
	end

	MenuHelper:LoadFromJsonFile(Template.mod_options_path, Template, Template.options)
end)
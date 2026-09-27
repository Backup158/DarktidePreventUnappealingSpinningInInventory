return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`prevent_unappealing_spinning_in_inventory` encountered an error loading the Darktide Mod Framework.")

		new_mod("prevent_unappealing_spinning_in_inventory", {
			mod_script       = "prevent_unappealing_spinning_in_inventory/scripts/mods/pusi/pusi",
			mod_data         = "prevent_unappealing_spinning_in_inventory/scripts/mods/pusi/pusi_data",
			mod_localization = "prevent_unappealing_spinning_in_inventory/scripts/mods/pusi/pusi_localization",
		})
	end,
	version = "1.0.0",
	packages = {},
}

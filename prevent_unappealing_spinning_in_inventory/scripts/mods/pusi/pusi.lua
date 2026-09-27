local mod = get_mod("prevent_unappealing_spinning_in_inventory")

-- #########################################
-- Hooks
-- #########################################
--[[
-- This is keeping the rotation persistent after backing out of the menu
mod:hook_safe(CLASS.ViewElementInventoryWeaponPreview, "init", function (self, ...)
    self._keep_rotation = false
end)
]]

-- UI Weapon Spawner activates the autospin in UIWeaponSpawner.update()
-- That calls _auto_spin_values to figure out where to spin the gun next
-- Instead of trying to surgically remove the rotation from there, I'm just going to eliminate the values and make it spit out the same thing every thing, causing no change
mod:hook_origin(CLASS.UIWeaponSpawner, "_auto_spin_values", function (self, ...)
    return 0, 0
end)
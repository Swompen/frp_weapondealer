# frp_weapondealer

This is a script for QBCore framework.

In your qb-core-> Server -> player.lua add the following:
PlayerData.metadata["wepdealerrep"] = PlayerData.metadata["wepdealerrep"] ~= nil and PlayerData.metadata["wepdealerrep"] or 0


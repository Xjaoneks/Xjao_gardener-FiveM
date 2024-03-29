ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()

local GardBlip = AddBlipForCoord(-949.2358, 332.3828, 70.3398)
SetBlipSprite(GardBlip,280)
SetBlipColour(GardBlip, 2)
SetBlipDisplay(GardBlip, 4)
SetBlipAsShortRange(GardBlip, true)

BeginTextCommandSetBlipName('GardBlip')
AddTextEntry('GardBlip','Gardnerer job')
AddTextComponentSubstringPlayerName('GardBlip')
EndTextCommandSetBlipName(GardBlip)

end)

isHavingAjob = false

local option ={
	label = "Talk with manager",
	name = "gardener",
	distance = 5,
	icon = "fa-solid fa-scissors",
	onSelect = function()
		lib.registerContext({
			id = "gardenjob",
			title = "Gardener",
			options = { 
			{ 
				title = "Start working",
				icon = "fa-solid fa-inbox",
				onSelect = function()
						if isHavingAjob then

							lib.notify({
								title = "Manager",
								description = "You need to complete your job",
								type = "error"
							})

							else 

							lib.notify({
								title = "Manager",
								description = "You can start working",
								type = "success"
							})
							local test = vec3(-970.6332, 319.0799, 70.4962)
							testblip = AddBlipForCoord(test.x,test.y,test.z)
												SetBlipSprite(testblip,133)
												SetBlipColour(testblip,11)
												SetBlipDisplay(testblip, 4)
												SetBlipAsShortRange(testblip, true)
												BeginTextCommandSetBlipName("testblip")
												AddTextEntry("testblip","Bush")
												AddTextComponentSubstringPlayerName('testblip')
												EndTextCommandSetBlipName(testblip)
								exports.ox_target:addBoxZone({
								name = "test",
								coords = test,
								size = vec3(5,5,5),
								rotation = 324,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@world_human_gardener_plant@male@base",
														clip = "base",
														flag = "33"
													},
													prop = {
														model = `prop_cs_trowel`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test") TriggerServerEvent("GiveReward") RemoveBlip(testblip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(testblip)
												 end
											end
										}
											}

							})
							local test2 = vec3(-946.5764, 340.6733, 71.5569)
							test2blip = AddBlipForCoord(test2.x,test2.y,test2.z)
												SetBlipSprite(test2blip,133)
												SetBlipColour(test2blip,11)
												SetBlipDisplay(test2blip, 4)
												SetBlipAsShortRange(test2blip, true)
												BeginTextCommandSetBlipName("test2blip")
												AddTextEntry("test2blip","Bush")
												AddTextComponentSubstringPlayerName('test2blip')
												EndTextCommandSetBlipName(test2blip)
							exports.ox_target:addBoxZone({
								name = "test2",
								coords = test2,
								size = vec3(5,5,5),
								rotation = 141.4226,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@world_human_gardener_plant@male@base",
														clip = "base",
														flag = "33"
													},
													prop = {
														model = `prop_cs_trowel`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test2") TriggerServerEvent("GiveReward") RemoveBlip(test2blip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(test2blip)
												 end
											end
										}
											}

							})
							local test3 = vec3(-956.3531, 322.7000, 71.2877)
							test3blip = AddBlipForCoord(test3.x,test3.y,test3.z)
												SetBlipSprite(test3blip,133)
												SetBlipColour(test3blip,11)
												SetBlipDisplay(test3blip, 4)
												SetBlipAsShortRange(test3blip, true)
												BeginTextCommandSetBlipName("test3blip")
												AddTextEntry("test3blip","Bush")
												AddTextComponentSubstringPlayerName('test3blip')
												EndTextCommandSetBlipName(test3blip)
							exports.ox_target:addBoxZone({
								name = "test3",
								coords = test3,
								size = vec3(5,5,5),
								rotation = 94.8554,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@lo_res_idles@",
														clip = "world_human_gardener_leaf_blower_lo_res_base",
													},
													prop = {
														model = `prop_leaf_blower_01`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test3") TriggerServerEvent("GiveReward") RemoveBlip(test3blip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(test3blip)
												 end
											end
										}
											}

							})
							local test4 = vec3(-967.1298, 337.2740, 71.4294)
							test4blip = AddBlipForCoord(test4.x,test4.y,test4.z)
												SetBlipSprite(test4blip,133)
												SetBlipColour(test4blip,11)
												SetBlipDisplay(test4blip, 4)
												SetBlipAsShortRange(test4blip, true)
												BeginTextCommandSetBlipName("test4blip")
												AddTextEntry("test4blip","Bush")
												AddTextComponentSubstringPlayerName('test4blip')
												EndTextCommandSetBlipName(test4blip)
							exports.ox_target:addBoxZone({
								name = "test4",
								coords = test4,
								size = vec3(5,5,5),
								rotation = 155.8636,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@world_human_gardener_plant@male@base",
														clip = "base",
														flag = "33"
													},
													prop = {
														model = `prop_cs_trowel`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test4") TriggerServerEvent("GiveReward") RemoveBlip(test4blip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(test4blip)
												 end
											end
										}
											}

							})
							local test5 = vec3(-1006.0609, 308.0308, 68.3213)
							test5blip = AddBlipForCoord(test5.x,test5.y,test5.z)
												SetBlipSprite(test5blip,133)
												SetBlipColour(test5blip,11)
												SetBlipDisplay(test5blip, 4)
												SetBlipAsShortRange(test5blip, true)
												BeginTextCommandSetBlipName("test5blip")
												AddTextEntry("test5blip","Bush")
												AddTextComponentSubstringPlayerName('test65blip')
												EndTextCommandSetBlipName(test5blip)
							exports.ox_target:addBoxZone({
								name = "test5",
								coords = test5,
								size = vec3(5,5,5),
								rotation = 311.2000,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@lo_res_idles@",
														clip = "world_human_gardener_leaf_blower_lo_res_base",
													},
													prop = {
														model = `prop_leaf_blower_01`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test5") TriggerServerEvent("GiveReward") RemoveBlip(test5blip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(test5blip)
												 end
											end
										}
											}

							})
							local test6 = vec3(-986.2417, 305.3724, 69.1924)
							test6blip = AddBlipForCoord(test6.x,test6.y,test6.z)
												SetBlipSprite(test6blip,133)
												SetBlipColour(test6blip,11)
												SetBlipDisplay(test6blip, 4)
												SetBlipAsShortRange(test6blip, true)
												BeginTextCommandSetBlipName("test6blip")
												AddTextEntry("test6blip","Bush")
												AddTextComponentSubstringPlayerName('test6blip')
												EndTextCommandSetBlipName(test6blip)
							exports.ox_target:addBoxZone({
								name = "test6",
								coords = test6,
								size = vec3(5,5,5),
								rotation = 143.2252,
								debug = false,
								options = {
											{
												name = "animace",
												event = "ox_target:debug",
												icon = "fa-solid fa-trowel",
												label = "Start working",
												onSelect = function()
												if lib.progressBar({
													duration = 5000,
													label = "Working...",
													useWhileDead = false,
													canCancel = true,
													disable = {
														car = true,
													},
													anim = {
														dict = "amb@world_human_gardener_plant@male@base",
														clip = "base",
														flag = "33"
													},
													prop = {
														model = `prop_cs_trowel`,
														pos = vec3(0.0, 0.0, 0.0),
														rot = vec3(0.0, 0.0, 0.0),
														bone = 28422
													},
												}) then exports.ox_target:removeZone("test6") TriggerServerEvent("GiveReward") RemoveBlip(test6blip) else lib.notify( {title = "Manager", description = "Do your job properly!", type = "error"} ) RemoveBlip(test6blip)
												 end
											end
										}
											}

							})

							isHavingAjob = true

						end
				end
			},
			{
				title = "End your job",
				icon = "fa-solid fa-hand",
				onSelect = function ()
					if isHavingAjob then
					lib.notify({
						title = "Manager",
						description = "You completed your job",
						type = "inform"
					})  RemoveBlip(testblip) RemoveBlip(test2blip) RemoveBlip(test3blip) RemoveBlip(test4blip) RemoveBlip(test5blip) RemoveBlip(test6blip) exports.ox_target:removeZone("test") exports.ox_target:removeZone("test2") exports.ox_target:removeZone("test3") exports.ox_target:removeZone("test4") exports.ox_target:removeZone("test5") exports.ox_target:removeZone("test6")

					isHavingAjob = false

					end
				end
			}
					  }
		})
		lib.showContext("gardenjob")
	end
}

local pedCoords = vector4(-949.2358, 332.3828, 70.3398, 359.9878)
local pedmodel = "s_m_m_gardener_01"

local point = lib.points.new({ 
    coords = vec3(pedCoords.x,pedCoords.y,pedCoords.z),
    distance = 500,
})

function point:onEnter()
	lib.requestModel(pedmodel, 500)
	gardenped =CreatePed(
		   1, 
		   joaat(pedmodel),
		   pedCoords.x,pedCoords.y,pedCoords.z, pedCoords.w,
		   false, 
		   true
	   )
	   SetEntityInvincible(
	   gardenped,
	   true
   )
   
   SetBlockingOfNonTemporaryEvents(
    gardenped, 
	   true
   )
   FreezeEntityPosition(gardenped,true)
   SetPedCanBeTargetted(gardenped, false)
   SetEntityAsMissionEntity(gardenped, true, true)
   TaskStartScenarioInPlace(gardenped, "WORLD_HUMAN_GUARD_STAND",0,false) 
   
   exports.ox_target:addLocalEntity(gardenped,option)
end

function point:onExit()
	DeletePed(gardenped)
end

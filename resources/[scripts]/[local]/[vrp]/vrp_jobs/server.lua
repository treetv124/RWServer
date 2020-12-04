
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_jobs")

vRPpp = nil
TriggerEvent('vRP:getSharedObject', function(obj) 
	vRPpp = obj 
end)

RegisterServerEvent('vRP:setTaxi')
AddEventHandler('vRP:setTaxi', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "택시"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 택시기사입니다!",})
end)

RegisterServerEvent('vRP:setConstructor')
AddEventHandler('vRP:setConstructor', function(job)
	local user_id = vRP.getUserId({source})
   local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "트럭 기사"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 트럭기사입니다!",})
end)

RegisterServerEvent('vRP:setMiner')
AddEventHandler('vRP:setMiner', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "택배"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 택배기사입니다!",})
end)

RegisterServerEvent('vRP:setDelivery')
AddEventHandler('vRP:setDelivery', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "배달부"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 배달부입니다!",})
end)

RegisterServerEvent('vRP:setBankdriver')
AddEventHandler('vRP:setBankdriver', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "현금호송원"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 현금수송원입니다!",})
end)

RegisterServerEvent('vRP:setMedical')
AddEventHandler('vRP:setMedical', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "의료수송원"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 의약품 수송원입니다!",})
end)

RegisterServerEvent('vRP:setEscorta')
AddEventHandler('vRP:setEscorta', function(job)
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
	vRP.addUserGroup({user_id, "어부"})
	vRPclient.notifyPicture(user_id,{"CHAR_ALL_PLAYERS_CONF",1, "리얼월드", false,"당신은 어부입니다!",})
end)
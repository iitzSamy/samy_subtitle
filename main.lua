local function Subtitle(name, name_color, text, time)
	SendNUIMessage({
		type = "subtitle",
		name = name,
		name_color = name_color,
		text = text,
		time = time,
	})
end

exports('Subtitle', Subtitle)

--[[
CreateThread(function()
	Wait(1000)
	exports.samy_subtitles:Subtitle(
		'Inner Voice', -- Name
		'#f7b257', -- Name Color
		'Estoy empezando a tener frio...', -- Subtitle
		5000 -- Screen Time
	)
end)
]]--

--[[
Wait(8000)
exports.samy_subtitles:Subtitle( 'Inner Voice', '#f7b257', 'Should this be a test?', 5000)
]]--

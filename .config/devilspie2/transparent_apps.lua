local target_apps = {
	"[Mm]icrosoft [Tt]eams",
	"Geary",
	"gedit",
	"Messenger",
	"Skype",
	"[Ss]potify",
	"Sublime Merge",
	"Sublime Text",
	"Visual Studio Code"
}

local current_app = get_application_name()
for _, app in ipairs(target_apps) do
	if string.find(current_app, app) then
		set_window_opacity(0.95)
		break
	end
end

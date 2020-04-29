local target_apps = {
	"Chat | Microsoft Teams",
	"Geary",
	"gedit",
	"Messenger",
	"Skype",
	"spotify",
	"Spotify",
	"Sublime Merge",
	"Sublime Text",
	"Visual Studio Code"
}

local current_app = get_application_name()
for _, app in ipairs(target_apps) do
	if current_app == app then
		set_window_opacity(0.95)
		break
	end
end

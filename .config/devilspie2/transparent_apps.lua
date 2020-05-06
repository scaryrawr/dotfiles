local target_apps = {
	"Electron Fiddle",
	"Geary",
	"gedit",
	"Messenger",
	"Microsoft Teams",
	"Skype",
	"Spotify",
	"Sublime Merge",
	"Sublime Text",
	"System Monitor",
	"Tweaks",
	"Visual Studio Code"
}

local current_app = get_application_name()
for _, app in ipairs(target_apps) do
	if string.find(current_app, app) then
		set_window_opacity(0.95)
		break
	end
end

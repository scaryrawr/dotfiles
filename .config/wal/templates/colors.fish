# Using `cat ~/.cache/wal/sequences` in fish ends up causing
# issues for other tools like fzf (noticeable when using reload)

# Colors numbers based off agnoster default Colors
set color_virtual_env_bg {color7.strip}
set color_virtual_env_str {color0.strip}
set color_user_bg {color0.strip}
set color_user_str {color3.strip}
set color_dir_bg {color4.strip}
set color_dir_str {color0.strip}
set color_hg_changed_bg {color3.strip}
set color_hg_changed_str {color0.strip}
set color_hg_bg {color2.strip}
set color_hg_str {color0.strip}
set color_git_dirty_bg {color3.strip}
set color_git_dirty_str {color0.strip}
set color_git_bg {color2.strip}
set color_git_str {color0.strip}
set color_svn_bg {color2.strip}
set color_svn_str {color0.strip}
set color_status_nonzero_bg {color0.strip}
set color_status_nonzero_str {color1.strip}
set color_status_superuser_bg {color0.strip}
set color_status_superuser_str {color3.strip}
set color_status_jobs_bg {color0.strip}
set color_status_jobs_str {color14.strip}

set fish_color_normal {foreground.strip}
set fish_color_command {color13.strip}
set fish_color_param {color14.strip}
set fish_color_redirection {foreground.strip}
set fish_color_comment {color9.strip}
set fish_color_error {color9.strip} --bold
set fish_color_escape {color14.strip}
set fish_color_operator {color14.strip}
set fish_color_quote brown
set fish_color_autosuggestion 555 {color11.strip}
set fish_color_valid_path --underline

set fish_color_cwd {color10.strip}
set fish_color_cwd_root {color9.strip}
set fish_color_match {color14.strip}
set fish_color_search_match --background={color13.strip}
set fish_pager_color_prefix {color14.strip}
set fish_pager_color_completion {foreground.strip}
set fish_pager_color_description 555 {color11.strip}
set fish_pager_color_progress {color14.strip}
set fish_color_history_current {color14.strip}

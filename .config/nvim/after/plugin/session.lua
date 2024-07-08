local session = require('auto-session')
session.setup {
	log_level = "error",
	auto_session_allowed_dirs = { "~/src/*" },
}

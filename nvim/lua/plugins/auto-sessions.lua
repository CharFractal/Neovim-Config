local auto_session_status, auto_session = pcall(require, "auto-session")
if not auto_session_status then
  print("Failed to load auto-session")
  return
end

auto_session.setup({
  auto_restore_enabled = false,  -- Set to true if you want to test auto-restore functionality
  auto_session_suppress_dirs = { "/home/username/", "/home/username/Dev/", "/home/username/Downloads", "/home/username/Documents", "/home/username/Desktop/" },
})


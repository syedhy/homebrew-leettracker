cask "leettracker" do
  version "1.0.1-beta"
  sha256 "4e889ae9174515e7140419009e3deec3f2ad1f242c102453ec15764ed9e77276"

  url "https://github.com/syedhy/LeetTracker/releases/download/v#{version}/LeetTracker-1.0.1-beta-macOS.zip"
  name "LeetTracker"
  desc "macOS LeetCode progress tracker with desktop widgets"
  homepage "https://github.com/syedhy/LeetTracker"

  app "LeetTracker-1.0.1-beta-macOS/LeetTracker.app"

  uninstall launchctl: "com.hyder.LeetTracker.background-refresh"

  zap trash: [
    "~/Library/LaunchAgents/com.hyder.LeetTracker.background-refresh.plist",
    "~/Library/Logs/LeetTracker",
    "~/Library/Application Support/LeetTracker",
    "~/Library/Application Support/LeetTrackerShared",
    "~/Library/Group Containers/group.com.hyder.LeetTracker",
    "~/Library/Preferences/com.hyder.LeetTracker.plist",
    "~/Library/Preferences/group.com.hyder.LeetTracker.plist",
  ]
end

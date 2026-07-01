cask "leettracker" do
  version "1.0.0-beta"
  sha256 "52b64b29062d2b7011e0b246ac574e5c1e44b6be774f52bbcfc38af16957606d"

  url "https://github.com/syedhy/LeetTracker/releases/download/v#{version}/LeetTracker-1.0-macOS.zip"
  name "LeetTracker"
  desc "macOS LeetCode progress tracker with desktop widgets"
  homepage "https://github.com/syedhy/LeetTracker"

  app "LeetTracker.app"

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

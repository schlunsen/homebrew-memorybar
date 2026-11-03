cask "memorybar" do
  version "1.1.0"
  sha256 "009b7ca1f8732760ea6d3c8b63223599b107ba23d3eefa219cf73ce801031727"

  url "https://github.com/schlunsen/MemoryBar/releases/download/v#{version}/MemoryBar-#{version}-macos.zip"
  name "MemoryBar"
  desc "Menu bar app showing CPU, RAM and optional disk usage"
  homepage "https://github.com/schlunsen/MemoryBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MemoryBar.app"

  uninstall quit: "com.memorybar.app"

  zap trash: "~/Library/Preferences/com.memorybar.app.plist"
end

cask "quickpass" do
  version "0.1.1"
  sha256 "a9f86d47b07ceac68534fc376faa1bfa37f2bb6aa07bbb5254c8f8b6f65c0b7d"

  url "https://github.com/jessekhach/QuickPass/releases/download/v#{version}/QuickPass-#{version}.dmg"
  name "QuickPass"
  desc "Keyboard-driven quick access for Apple Passwords"
  homepage "https://github.com/jessekhach/QuickPass"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "QuickPass.app"

  uninstall quit: "com.jkcreativestudios.quickpass"

  zap trash: [
    "~/Library/Application Support/QuickPass",
    "~/Library/Caches/com.jkcreativestudios.quickpass",
    "~/Library/HTTPStorages/com.jkcreativestudios.quickpass",
    "~/Library/Preferences/com.jkcreativestudios.quickpass.plist",
  ]
end

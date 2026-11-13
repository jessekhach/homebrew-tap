cask "quickpass" do
  version "0.1.5"
  sha256 "6ab6972f18e6e650280a390c0ef6b30156d127008a56c511807cd50878e08a83"

  url "https://github.com/jessekhach/QuickPass/releases/download/v#{version}/QuickPass-#{version}.dmg"
  name "QuickPass"
  desc "Keyboard-driven quick access for Apple Passwords"
  homepage "https://github.com/jessekhach/QuickPass"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "QuickPass.app"

  uninstall quit: "com.jkcreativestudios.quickpass"

  zap trash: [
    "~/Library/Application Support/QuickPass",
    "~/Library/Caches/com.jkcreativestudios.quickpass",
    "~/Library/HTTPStorages/com.jkcreativestudios.quickpass",
    "~/Library/Preferences/com.jkcreativestudios.quickpass.plist",
  ]
end

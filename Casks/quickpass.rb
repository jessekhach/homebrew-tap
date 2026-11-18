cask "quickpass" do
  version "0.1.6"
  sha256 "0b9fd767b60ce1aead18659858174101f9dc26a50437bad3bebf358b4cf69d47"

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

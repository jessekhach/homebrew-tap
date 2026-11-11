cask "quickpass" do
  version "0.1.0"
  sha256 "a38a4166bf8dd6bdbbda98ee3552305688e1cce8be3837c7b1df6584ba291551"

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

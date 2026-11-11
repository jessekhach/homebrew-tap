cask "quickpass" do
  version "0.1.4"
  sha256 "70e80449154ee81c533932e7297bd02d8fdba4c8dc14f35bf6e9db09b030c4f3"

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

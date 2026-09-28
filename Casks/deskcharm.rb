cask "deskcharm" do
  version "0.1.2"
  sha256 "27139aadbc25f225945ab614ca2ec7d57cae23e5b75ac66ef89909746684c72f"

  url "https://github.com/winsongr/deskcharm/releases/download/v#{version}/Deskcharm-#{version}.zip"
  name "Deskcharm"
  desc "Lucky charm that hangs from the top of the screen"
  homepage "https://github.com/winsongr/deskcharm"

  depends_on macos: :sonoma

  app "Deskcharm.app"

  uninstall quit: "app.deskcharm"

  zap trash: [
    "~/Library/Preferences/app.deskcharm.plist",
  ]
end

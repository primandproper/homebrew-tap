cask "docent" do
  version "0.1.0"
  sha256 "a02f5876ce8797918ee11c324034e63495ec6aceb901cbdb3f6c42b49b40e5a9"

  url "https://github.com/primandproper/docent/releases/download/v#{version}/Docent-v#{version}.zip"
  name "Docent"
  desc "Guided tours of code that span several repos"
  homepage "https://github.com/primandproper/docent"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Docent.app"
  # One binary, two faces: the app's own executable is the CLI.
  binary "#{appdir}/Docent.app/Contents/MacOS/docent"

  zap trash: [
    "~/.config/docent",
    "~/Library/Logs/docent",
  ]
end

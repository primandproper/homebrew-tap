cask "docent" do
  version "0.2.0"
  sha256 "ecfd7d23899f9be1dd87cd9c7d4b3f76ee5b9f86cb482738d46ee0ba08517186"

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

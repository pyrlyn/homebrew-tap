# macOS arm64 only. There is no Intel cask and no Intel url.
# No Mailune release is published yet (GitHub releases for pyrlyn/mailune
# were empty on 2026-10-08). The url names the DMG the desktop release
# attaches. The checksum below is the sha256 of the literal
# "mailune-0.1.0-aarch64", and is replaced by the checksum of that DMG
# when the file exists.
cask "mailune" do
  version "0.1.0"
  sha256 "09706494ca1d4071dee0b568a209423f60c07e9c1e9b7677b0e6f27429cca101"

  url "https://github.com/pyrlyn/mailune/releases/download/v#{version}/Mailune-#{version}-aarch64.dmg"
  name "Mailune"
  desc "Local-first mail client"
  homepage "https://github.com/pyrlyn/mailune"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Mailune.app"

  zap trash: "~/Library/Application Support/app.mailune.macos"
end

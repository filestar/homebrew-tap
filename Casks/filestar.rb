# Created by ftools channels (Bosma Interactive AB). Do not edit by hand: the next release overwrites it.
cask "filestar" do
  version "30.9.0.0"
  sha256 "663574a07c8dafc910b651ae7701d3cbe2aab38d9567df76cd100b422059f13e"

  url "https://release.filestar.com/releases/#{version}/Filestar.#{version}.osx-universal.pkg"
  name "Filestar"
  desc "Convert, compress and transform any file"
  homepage "https://filestar.com/"

  livecheck do
    url "https://release.filestar.com/releases/latest-production.xml"
    regex(/architecture="osx-x64"\s+version="(\d+(?:\.\d+)+)"/i)
  end

  # Filestar updates itself; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :monterey

  pkg "Filestar.#{version}.osx-universal.pkg"

  # Tells the installer it came from Homebrew: it tags the install and does not open the app.
  preflight do
    File.write("/tmp/com.filestar.install-channel", "homebrew\n")
  end

  uninstall quit:    "com.filestar.macos",
            pkgutil: ["com.Filestar.pkg.Filestar", "com.Filestar.pkg.Filestar.arm64"],
            delete:  "/usr/local/bin/filestarcli"

  # Like the Windows uninstaller, the client key (~/.config/com.filestar.macos/.clientkey) is kept.
  zap trash: "~/Library/Application Support/com.filestar.macos"
end

class Spx < Formula
  desc "Writes Apple Music current song to a file to display in OBS"
  homepage "https://github.com/DanielSincere/SincereMusicText"
  url "https://github.com/DanielSincere/SincereMusicText/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "658fdc3dea04f3da9ef3e73aa546ad864866c0ecd74b38bd13283db5584429e8"
  # curl -sL $url | sha256sum
  license "MIT"

  depends_on xcode: ["16.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/SincereMusicText"
  end

  test do
    # Test by showing the help text
    system "#{bin}/SincereMusicText", "--help"
  end
end

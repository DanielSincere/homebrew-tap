class Spx < Formula
  desc "NPX for Swift"
  homepage "https://github.com/DanielSincere/SPX"
  url "https://github.com/DanielSincere/SPX/archive/refs/tags/1.2.0.tar.gz"
  sha256 "431da0464a82c64ac5cbda3239b4d9f28ac89d28e6ab8c70e99c8aafb99fc16e"
  # curl -sL $url | sha256sum
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/spx"
  end

  test do
    # Test by showing the version
    system "#{bin}/spx", "-v"
  end
end

class Swish < Formula
  desc "Swift script runner"
  homepage "https://github.com/FullQueueDeveloper/Swish"
  url "https://github.com/FullQueueDeveloper/Swish/archive/refs/tags/1.0.3.tar.gz"
  sha256 "2a8c80fe20b6d39929d2075aaf4cf8d329f831be865f5eb3e7c7ba7004bec753"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    # Test by showing the version
    system "#{bin}/swish", "-v"
  end
end

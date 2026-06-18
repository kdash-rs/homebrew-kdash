
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.1/kdash-macos-arm64.tar.gz"
    sha256 "91e8a15f3bf87ca58744dd22c27939f2d98be22212dceeff4d7b9ac93f1c477c"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.1/kdash-macos.tar.gz"
    sha256 "4b973906c2ced7abac12a0470d24049fb9740e5895f10fc9112838e6faceb3e8"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.1/kdash-linux-musl.tar.gz"
    sha256 "faa0b64168e5cf241c531d35f1a99c7a08d6a52e0079704164fa369e0c67b416"
  end
  version "v2.0.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end
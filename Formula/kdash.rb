
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-macos-arm64.tar.gz"
    sha256 "c738361518310ce809ca68ddc26e8677e84c83fe0c4a5d916dc6f673168cc463"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-macos.tar.gz"
    sha256 "d99b986489764aa6017c1eb9c42d0282dc86bca54a380afc0d21bb8134969fc1"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-linux-musl.tar.gz"
    sha256 "8096cd2d050e1743f972b48d4a90607dd82dd56d3a08ca349df8f505fd692e2d"
  end
  version "v1.0.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end
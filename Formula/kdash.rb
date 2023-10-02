
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.4/kdash-macos.tar.gz"
    sha256 "dfb1f56477492255342c1fef37629789eaedb923edbac2c72712a6a134f755e3"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.4/kdash-linux-musl.tar.gz"
    sha256 "814d6aca2681e2f56987eb4d7f5e9d7064f282583a05d5bbab487771ba65ea5f"
  end
  version "v0.4.4"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end
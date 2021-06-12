
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.2/kdash-macos.tar.gz"
    sha256 "876a2f91c14ea8eb49c668226ca08dd5770a3b918030d4edc7ac561c2c8bcb7a"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.2/kdash-linux-musl.tar.gz"
    sha256 "b30ac0065a046602df9368e95463c1f1fa16156c2f1d8d8f24b47600f09be53f"
  end
  version "v0.1.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end
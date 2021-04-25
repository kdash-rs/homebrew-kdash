# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.3/kdash-macos.tar.gz"
    sha256 "f9d4107a027514e136b2e74474bca76af96987d15879dcbaabbabec4aee39395"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.3/kdash-linux.tar.gz"
    sha256 "4774c6540be48d020faa06b6172a46cceb9e033663566e0ab174e8475d5ac0f3"
  end
  version "0.0.3"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end

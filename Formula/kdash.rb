
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.5/kdash-macos.tar.gz"
    sha256 "44227820ed9d663f71ed42815ad407e22ed21e61491eef3d28f0b9126b8a8b7f"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.5/kdash-linux-musl.tar.gz"
    sha256 "401888d7aa97468c5042ba7485876096484f188e72f21704e2f9b56b1095ac44"
  end
  version "v0.0.5"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end
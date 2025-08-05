class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "d1e5450c84b4b5ca3d2f2f1693cf1f4aded32e466885d62d359b804931792277"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end
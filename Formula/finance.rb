class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ddc63b6a60fc7ac195352a4e1d529d33309fba6aded5378bb7b28e0081f9cc14"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end
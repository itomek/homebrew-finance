class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/releases/download/v0.1.4/finance-0.1.4.tar.gz"
  sha256 "11413cdadd91fdabadc94aba4bb6f6607b404ad08ddc398e0021729b5c5c3e79"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end
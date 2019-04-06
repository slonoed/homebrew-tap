require "language/node"

class Jsref < Formula
  desc "JavaScript refactoring language server"
  homepage "https://github.com/slonoed/jsref#readme"
  url "https://registry.npmjs.org/@slonoed/jsref/-/jsref-1.0.3.tgz"
  version "1.0.3"
  sha256 "848663d2a1e22122bcbd61bd5d0c221a188b0b7fc6b3f348bcfe2b3d470e0648"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end

require "language/node"

class Jsref < Formula
  desc "JavaScript refactoring language server"
  homepage "https://github.com/slonoed/jsref#readme"
  url "https://registry.npmjs.org/@slonoed/jsref/-/jsref-1.0.10.tgz"
  version "1.0.10"
  sha256 "0cece1fc524187c4ac807d58a5b270e89068831be16d6590fd8169962a34eddf"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end

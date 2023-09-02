class Hth < Formula
  desc "Tool to organize and use AI prompts"
  homepage "https://github.com/slonoed/here-to-help"
  url "https://github.com/slonoed/here-to-help/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c7d264c4f48cccea4da65c172f2cb7c0591e2097c69b26b72e8e269c207a4256"
  license "The Unlicense"

  depends_on "python@3.9"
  depends_on "fzf"

  def install
    # Install Python dependencies
    system "pip3", "install", "--prefix=#{libexec}", "."

    # Generate executable
    system "python3", *Language::Python.setup_install_args(prefix)

    # Create a wrapper script
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", PYTHONPATH: "#{libexec}/lib/python3.9/site-packages")
  end

  test do
    system "#{bin}/hth", "--version"
  end
end


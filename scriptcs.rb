# https://github.com/c0ntinuum/homebrew-scriptcs
# brew install https://raw.github.com/c0ntinuum/homebrew-scriptcs/master/scriptcs.rb

# require 'formula'

class Scriptcs < Formula

  url 'https://github.com/scriptcs/scriptcs.git', :tag => 'v0.13.3'
  homepage 'https://github.com/scriptcs/scriptcs'
  depends_on 'mono' => :recommended

  script 'scriptcs.sh'
  tests 'tests.csx'

  def install
    system './build.sh'
    libexec.install Dir['src/ScriptCs/bin/Release/*']
    (libexec/script).write <<-EOS.undent
    #!/usr/bin/env bash
    mono /usr/local/opt/scriptcs/libexec/scriptcs.exe $@
    EOS
    (libexec/script).chmod 0755
    bin.install_symlink libexec/script => 'scriptcs'
  end

  test do
    (testpath/tests).write('Console.WriteLine("{0}, {1}!", "Hello", "world");')
    assert_equal "OK", `scriptcs #{tests}`.strip
  end

end

# https://github.com/c0ntinuum/homebrew-scriptcs
# brew install https://raw.github.com/c0ntinuum/homebrew-scriptcs/master/scriptcs.rb

# require 'formula'

class Scriptcs < Formula

    url 'https://github.com/scriptcs/scriptcs.git', :tag => "v0.13.3"
    homepage 'https://github.com/scriptcs/scriptcs'
    depends_on "mono" => :recommended

    def install
        system "./build.sh"
        libexec.install Dir["src/ScriptCs/bin/Release/*"]
        (libexec/"scriptcs.sh").write <<-EOS.undent
#!/usr/bin/env bash
mono /usr/local/opt/scriptcs/libexec/scriptcs.exe $@
        EOS
        (libexec/"scriptcs.sh").chmod 0755
        bin.install_symlink libexec/"scriptcs.sh" => "scriptcs"
    end

end

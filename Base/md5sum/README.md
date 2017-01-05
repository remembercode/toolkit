# md5
md5sum verify

规则:
Rules:

    sha1sum.bat 待验证文件 要验证的sha1字符串
    sha1sum.bat file_to_verify sha1_to_verify

    sha1sum.bat 待验证文件 只包含单行要验证的sha1字符串的文件
    sha1sum.bat file_to_verify file_contains_sha1_one_line_to_verify

示例:
Examples:

    sha1sum.bat 0004.gpg4win-2.3.3.exe gpg4win-2.3.3.exe.sha1
    sha1sum.bat 0004.gpg4win-2.3.3.exe 67e13c4f90ff6a70ad57bd31af64a238c9315308
    sha1sum.bat 0004.gpg4win-2.3.3.exe 67E13C4F90FF6A70AD57BD31AF64A238C9315308
    sha1sum.bat "0004.gpg4win-2.3.3.exe" "67E13C4F90FF6A70AD57BD31AF64A238C9315308"

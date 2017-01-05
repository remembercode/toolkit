# md5sum 
verify md5


使用规则:  

Rules:

    md5sum.bat 待验证文件 待验证md5字符串
    md5sum.bat file_to_verify md5_to_verify

    md5sum.bat 待验证文件 只包含一行待验证md5字符串的文件
    md5sum.bat file_to_verify file_contains_md5_in_one_line_to_verify

示例:  

Examples:

    md5sum.bat 0004.gpg4win-2.3.3.exe gpg4win-2.3.3.exe.md5
    md5sum.bat 0004.gpg4win-2.3.3.exe 17a2b75f3ee06908b9d82f3d892baf82
    md5sum.bat 0004.gpg4win-2.3.3.exe 17A2B75F3EE06908B9D82F3D892BAF82
    md5sum.bat "0004.gpg4win-2.3.3.exe" "17A2B75F3EE06908B9D82F3D892BAF82"

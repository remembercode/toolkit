# sha512sum 
verify sha512

规则:  

Rules:

    sha512sum.bat 待验证文件 要验证的sha512字符串
    sha512sum.bat file_to_verify sha512_to_verify

    sha512sum.bat 待验证文件 只包含单行要验证的sha512字符串的文件
    sha512sum.bat file_to_verify file_contains_sha512_one_line_to_verify

示例:  

Examples:

    sha512sum.bat README.md README.md.sha512
    sha512sum.bat README.md 8e7ade2776f22239867cf6ca9773538ba7fd8ddcbd3c216c530945607ff0bbadf8ae4a620403ca6001ed77ba37679ab2e84a40d77984ad13652589a8a635ebc5
    sha512sum.bat README.md 8e7ade2776f22239867cf6ca9773538ba7fd8ddcbd3c216c530945607ff0bbadf8ae4a620403ca6001ed77ba37679ab2e84a40d77984ad13652589a8a635ebc5
    sha512sum.bat "README.md" "8e7ade2776f22239867cf6ca9773538ba7fd8ddcbd3c216c530945607ff0bbadf8ae4a620403ca6001ed77ba37679ab2e84a40d77984ad13652589a8a635ebc5"
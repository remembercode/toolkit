# sha256sum 
verify sha256

规则:  

Rules:

    sha256sum.bat 待验证文件 要验证的sha256字符串
    sha256sum.bat file_to_verify sha256_to_verify

    sha256sum.bat 待验证文件 只包含单行要验证的sha256字符串的文件
    sha256sum.bat file_to_verify file_contains_sha256_one_line_to_verify

示例:  

Examples:

    sha256sum.bat README.md README.md.sha256
    sha256sum.bat README.md 71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716
    sha256sum.bat README.md 71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716
    sha256sum.bat "README.md" "71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716"
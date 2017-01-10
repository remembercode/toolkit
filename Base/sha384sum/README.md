# sha384sum 
verify sha384

规则:  

Rules:

    sha384sum.bat 待验证文件 要验证的sha384字符串
    sha384sum.bat file_to_verify sha384_to_verify

    sha384sum.bat 待验证文件 只包含单行要验证的sha384字符串的文件
    sha384sum.bat file_to_verify file_contains_sha384_one_line_to_verify

示例:  

Examples:

    sha384sum.bat README.md README.md.sha384
    sha384sum.bat README.md 71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716
    sha384sum.bat README.md 71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716
    sha384sum.bat "README.md" "71b055b35bfbf71414827edc71e6aebcb3e176861f992c96d2d8864301537716"
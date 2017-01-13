# maven 
maven as jar dependencies management tool


## 1. 下载<br/><br/>1. Download

* [Maven官方下载页面](http://maven.apache.org/download.cgi)
* [Maven official download page](http://maven.apache.org/download.cgi)
* [预编译二进制压缩包 3.3.9版本，截止 2016.12.30 最新版](http://apache.fayea.com/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip)
* [Binary zip archive : apache-maven-3.3.9-bin.zip, latest on 2016.12.30](http://apache.fayea.com/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip)
* [二进制压缩包 apache-maven-3.3.9-bin.zip MD5 值](https://www.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip.md5)
* [apache-maven-3.3.9-bin.zip MD5 Value](https://www.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip.md5)
* [apache-maven-3.3.9-bin.zip 公钥](https://www.apache.org/dist/maven/KEYS)
* [apache-maven-3.3.9-bin.zip public KEYS](https://www.apache.org/dist/maven/KEYS)
* [apache-maven-3.3.9-bin.zip 签名 : apache-maven-3.3.9-bin.zip.asc](https://www.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip.asc)
* [apache-maven-3.3.9-bin.zip, Signature : apache-maven-3.3.9-bin.zip.asc](https://www.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip.asc)

## 2. 验证签名<br/><br/>2. Verify Signature
	gpg --import KEYS
	gpg --verify apache-maven-3.3.9-bin.zip.asc apache-maven-3.3.9-bin.zip
		gpg: Signature made 11/11/15 00:44:20 中国标准时间 using DSA key ID BB617866
		gpg: Good signature from "Sarel Jason van Zyl <jason@maven.org>" [unknown]
		gpg: WARNING: This key is not certified with a trusted signature!
		gpg:          There is no indication that the signature belongs to the owner.
		Primary key fingerprint: FB11 D4BB 7B24 4678 337A  AD8B C7BF 26D0 BB61 7866

## 3. 检查环境<br/><br/>3. Check environment
	重新打开一个 cmd
	Open a new command prompt (Winkey + R then type cmd)
	
	输入 echo %JAVA_HOME%
	type echo %JAVA_HOME%
	
	显示 C:\Program Files\Java\jdk1.8.0_112
	show C:\Program Files\Java\jdk1.8.0_112
	
## 4. 解压并配置环境变量并验证<br/><br/>4. Extract, Add to PATH, Verify 
	Win + Pause 快捷键打开系统属性
	Win + Pause shorcut to open up the system properties
	
	选择高级系统设置
	select the “Advanced” tab
	
	选择环境变量
	select the “Environment Variables” button
	
	新增环境变量 C:\App\apache-maven-3.3.9\bin 到 PATH
	adding or selecting the PATH variable in the user variables with the value C:\App\apache-maven-3.3.9\bin

	重新打开一个 cmd 输入 mvn -v 验证安装成功
	Open a new command prompt (Winkey + R then type cmd) and run mvn -v to verify the installation.

		Apache Maven 3.3.9 (bb52d8502b132ec0a5a3f4c09453c07478323dc5; 2015-11-11T00:41:47+08:00)
		Maven home: C:\App\apache-maven-3.3.9\bin\..
		Java version: 1.8.0_112, vendor: Oracle Corporation
		Java home: C:\Program Files\Java\jdk1.8.0_112\jre
		Default locale: zh_CN, platform encoding: GBK
		OS name: "windows 10", version: "10.0", arch: "amd64", family: "dos"

# eclipse 
eclipse java ide


## 1. 下载<br/><br/>1. Download

* [Eclipse 官方下载页面](https://www.eclipse.org/downloads/)
* [Eclipse official download page](https://www.eclipse.org/downloads/)
* [Eclipse 开发者集成版官方下载页面](https://www.eclipse.org/downloads/eclipse-packages/)
* [Eclipse Developer Builds official download page](https://www.eclipse.org/downloads/eclipse-packages/)
* [Eclipse IDE for Java EE Developers 官方下载页面](http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/neon2)
* [Eclipse IDE for Java EE Developers official download page](http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/neon2)
* [eclipse-jee-neon-2-win32.zip](http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-win32.zip&mirror_id=466)
* `eclipse-jee-neon-2-win32.zip sha512 958b5c0a6cfce8d8db31b617bb1196a74978ea7d522aeddc7a0952b61f38b7ee574d7e1af830eff03d5785ec04d16fb1f4257dc6ce379ccfe7ef053ecaa37b2b`


* [eclipse-jee-neon-2-win32-x86_64.zip](http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-win32-x86_64.zip&mirror_id=466)
* `eclipse-jee-neon-2-win32-x86_64.zip sha512 2d13569d6ad2df257ca01713e3a90486fe3c2c09fc569da9781532eca88a12c4c82104d15de47cbef93506c5d090d28a677900e5d9ae0d0e916623571c073c1b`


## 2. 验证sha512<br/><br/>2. Verify Signature
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

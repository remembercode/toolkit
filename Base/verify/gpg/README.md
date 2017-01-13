# Gunpg 
	验证签名
	verify signature

## 1. 下载<br/><br/>1. Download

* [Gnupg 官网](https://www.gnupg.org/)
* [Gnupg Official Web Site](https://www.gnupg.org/)
* [gpg4win 官网](https://www.gpg4win.org/download.html)
* [gpg4win Official Web Site](https://www.gpg4win.org/download.html)
* [gpg4win-2.3.3.exe 下载地址](https://files.gpg4win.org/gpg4win-2.3.3.exe)
* [gpg4win-2.3.3.exe download url](https://files.gpg4win.org/gpg4win-2.3.3.exe)

## 2. 安装<br/><br/>2. Install
	默认安装
	Default Install

## 3. 使用<br/><br/>3. Usage
	Example: gpg4win-2.3.3.exe
	
### 3.1. 下载公钥<br/><br/>3.1. Download public key
* public key : [Intevation-Distribution-Key-2016.asc](https://ssl.intevation.de/Intevation-Distribution-Key-2016.asc)
* public key : [Intevation-Distribution-Key.asc](https://ssl.intevation.de/Intevation-Distribution-Key.asc)
* public key : [OpenVAS-Transfer-Integrity.asc](https://ssl.intevation.de/OpenVAS-Transfer-Integrity.asc)

### 3.2. 导入公钥<br/><br/>3.1. Import public key
	Win + R ，输入 cmd 打开命令行窗口
	Win + R, type cmd to Open command shell window
	
	gpg ­­--import Intevation-Distribution-Key-2016.asc
	gpg ­--­import Intevation-Distribution-Key.asc
	gpg ­--­import OpenVAS-Transfer-Integrity.asc

### 3.3. 验证文件签名<br/><br/>3.3. Verify file signature
	Win + R ，输入 cmd 打开命令行窗口
	Win + R, type cmd to Open command shell window
	
	gpg ­­--verify gpg4win-2.3.3.exe.sig gpg4win-2.3.3.exe






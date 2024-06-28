# NTUST CSIE SummerCAMP / Linux + Git + Cloud

放心 這堂課不會當掉 1/3 的人<br>
Red.

## **注意，本次課程需要用到以下平台帳號，請在課程前或中途註冊完成。**

- [Google](https://support.google.com/accounts/answer/27441?hl=zh-Hant)
- [GitHub](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home)
- [Tryhackme](https://tryhackme.com/signup)
    - 進入後若要提供身份識別選擇學生並填寫自己的學校就好

## Resources

- [Canva Link](https://www.canva.com/design/DAGIAo9zk20/KtEzCBRLwyN9b-Xs1foggg/edit?utm_content=DAGIAo9zk20&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
- [Tryhackme Linux](https://tryhackme.com/r/room/tutorial)
- [Slido 有問題都能問](https://app.sli.do/event/qkuSYULsD2bD6ReaKJ3FEZ)
- [資工營 課程進度追蹤](https://docs.google.com/spreadsheets/d/1YSkF8HAro4OvF_UlGPb95OWya3zgEPq4vOHYAPZ5uho/edit?usp=sharing)
- [Git Download](https://git-scm.com/download/win)
    - 選擇 Standalone Installer 的 64bit 版本, 安裝只要一路按 next 就好

# Linux

**進入 AttackBox 以後執行以下的指令**

```bash
useradd meow
usermod -aG sudo meow
passwd meow # 按下 enter 以後輸入任何你想要的密碼
su meow
```

## Linux Knowledges

- Directories
    - `~` - 家目錄 (`/home/{username}`)
    - `.` - 當前資料夾
    - `..` - 上一層資料夾
- Permissions
    - `rwxrwxrwx` = `擁有人/擁有組/其他人`
    - r = Read / w = Write / x = eXecute
    - r = 4 (100) / w = 2 (010) / x = 1 (001)
    - `rwx` = 7 (111) (4+2+1)
    - `rw-` = 6 (110) (4+2)
    - `r-x` = 5 (101) (4+1)
    - `r--` = 4 (100) (4)

## Linux Commands

- Commonly Used
    - **ls** - 列出當前資料夾的檔案
        - `ls -la`
    - **cd** - 進入資料夾
        - `cd {directory}`
    - **pwd** - 確認目前在哪個資料夾
    - **clear** - 清除 Terminal 的輸出
- File Operations
    - **cat** - 讀取檔案
        - `cat {file}`
    - **head** - 讀取檔案的前面一點部分
        - `head {file}`
    - **mkdir** - 建立資料夾
        - `mkdir {directory}`
    - **touch** - 建立檔案
        - `touch {fileName}`
    - **mv** - 移動檔案或改名字
        - `mv {fileSrc} {fileDst}`
        - `mv {oldName} {newName}`
    - **cp** - 複製檔案
        - `cp {fileSrc} {fileDst}`
    - **rm** - 刪除檔案或資料夾
        - `rm {file}`
        - `rm -rf {directory}`
- Permissions
    - **whoami** - 查看目前身分
    - **id** - 查看目前身分 但是更詳細
    - **sudo** - 用 root 身分執行命令 出現提示時輸入當前使用者的密碼
        - `sudo {command}`
        - `sudo su`
    - **chmod** - 更改檔案或是資料夾權限
        - `chmod {permission(rwxrwxrwx)} {file/dir}`
    - **chown** - 更改檔案或是資料夾擁有人
        - `sudo chown {owner}:{group} {file/dir}`
- Special
    - **nano** - 檔案編輯器
        - `nano {file}`
    - **apt** - 套件管理工具
        - `sudo apt install {package}`

## Linux Commandline Lab

- [Answer](https://github.com/aifred0729-TW/NTUST-CSIE_SummerCAMP-2024/blob/main/Commandline_Lab.sh)

### 任務描述

- 在使用者家目錄下建立資料夾 "NTUST"
- 建立 "NTUST-root" 資料夾並只能以 root 權限訪問
- 建立 "NTUST-me" 資料夾並只能讓自己訪問
- 複製 /etc/passwd 到 NTUST-me 內
- 將 NTUST-me 內的 passwd 複製一份成 root-passwd
- 把 root-passwd 移動到 NTUST-root 內並只能以 root 訪問
- 使用 apt 安裝 Python 或任何你想安裝的套件

### 資料夾架構

```
~ ->
- NTUST ->
- - NTUST-me ->
- - - passwd
- - NTUST-root ->
- - - root-passwd
```

## Linux Web Server Lab

**安裝完 apache2 以後記得執行以下命令**
```
sudo systemctl start apache2
```

- [Answer](https://github.com/aifred0729-TW/NTUST-CSIE_SummerCAMP-2024/blob/main/WebServer_Lab.sh)

### 任務描述

- 安裝 Apache2
- 在 /var/www/html 下找到 index.html 並隨便修改
- 在網頁根目錄下建立 secret 資料夾
- 在 secret 資料夾內建立一個 index.html
- 在 secret 資料夾內的 index.html 加入自己的內容

### 資料夾架構

```
/var/www/html ->
- index.html
- secret ->
- - index.html
```

### Extra Miles

- 用 PHP 寫出一個網站並成功讓 Apache2 運行

# Git

## Git Command

- [Example Command](https://github.com/aifred0729-TW/NTUST-CSIE_SummerCAMP-2024/blob/main/GitCommand.bat)

所有指令都按照下面格式進行

```
git {options}
```

- **init** - 初始化 .git 目錄
    - `git init`
- **remote** - 遠端 Repo
    - `git remote {option} {name} {URL}`
    - `git remote add origin https://github.com/aifred0729-TW/NTUST-CSIE_SummerCAMP-2024.git`
- **pull** - 更新本地 Repo
    - `git pull`
- **checkout** - Branch 相關
    - `git checkout {option} {branch}`
    - `git checkout main`
- **add** - 新增檔案到 Index
    - `git add {file}`
    - `git add .`
- **commit** - 新增變更
    - `git commit {option}`
    - `git commit -m "Message"`
- **push** - 推送到遠端 Repo
    - `git push {option}`
    - `git push`
    - `git push -u origin main`

## Git Security Issues

#### **絕對不要對外公開 .git 資料夾**

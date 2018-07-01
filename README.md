![](https://github.com/toolbuddy/papoGen/blob/master/design/badge.png)

# *papoGen* DEMO

本專案將透過 *papoGen* 來快速生成一個網頁，使用者可以透過 CLI 指令來做產生；以下會展示如何使用、以及指令參數的意義。
* `src/` - 存放生成來源，並透過目前支援的「主題」(i.e., *Paper.css* 與 *papoGen.css*) 的資料夾分類。
* `out/` - 存放生成結果。

> * [*papoGen* @npm](https://www.npmjs.com/package/papogen)
> * [papoGen @GitHub](https://github.com/toolbuddy/papoGen)
> * [papoGen.css @GitHub](https://github.com/toolbuddy/papoGen.css)

---
## 開始使用

### 事前環境準備

1. 安裝 Node.js
    * Debian/Ubuntu Linux 安裝 Node.js
        ```bash
        » source <(curl -s https://raw.githubusercontent.com/toolbuddy/ssfw/master/install_nodejs.sh)
        ```
    * macOS 安裝 Node.js
        * 開啟 [Node.js](https://nodejs.org/en/) 官方網站。
        * 下載 Node.js 版本：[macOS (x64) 8.11.3 LTS Installer](https://nodejs.org/dist/v8.11.3/node-v8.11.3.pkg)。
        * 請參考 [Node.js 安裝教學]()
    * Windows 安裝 Node.js
        * 開啟
        * 下載 Node.js 版本：
            * [Windows (x86) 8.11.3 LTS Installer](https://nodejs.org/dist/v8.11.3/node-v8.11.3-x86.msi)
            * [Windows (x64) 8.11.3 LTS Installer](https://nodejs.org/dist/v8.11.3/node-v8.11.3-x64.msi)
        * 請參考 [Node.js 安裝教學]()
2. 安裝 *papoGen*
    透過 **npm** 安裝 [*papoGen*](https://www.npmjs.com/package/papogen)
    ```bash
    » [sudo] npm install -g papogen
    ```
    * 說明：關於 *papoGen* 的操作指令可以由以下指令列出輔助說明。
        ```bash
        » papogen -h
        » papogen --help
        ```
3. 下載 [*papoGen* DEMO 專案](https://github.com/yungshenglu/papoGen-demo)
    ```bash
    » git clone https://github.com/yungshenglu/papoGen-demo
    ```
    * 說明：
        * `out/` - 存放生成的結果
        * `src/` - 存放生成的來源
            * `paper/` - 存放使用 *Paper.css* 作為主題的來源
                * `json/`
                * `md/`
                * `yaml/`
            * `papogen/` - 存放使用 *papoGen.css* 作為主題的來源
                * `json/`
                * `yaml/`
        * `papogen.sh` - 
        * `README.md` - 本說明文件
4. 完成前置作業，可以開始體驗 *papoGen*！

---
## *papoGen* 指令說明

* 指令格式
	```bash
	» papogen -s [--src] <src_path> \
            -o [--out] <out_path> \
            -t [--title] <title> \
            -g [--gen] <type> \
            -m [--model] <name> \
            --theme <theme> \
	        -h [--help]
	```

    | 選項 | 選項值 | 說明 |
    |---|---|---|
    | `-s [--src]` | URL | 生成來源的資料夾 URL |
    | `-o [--out]` | URL | 生成結果的資料夾 URL |
    | `-t [--title]` | 字串文字 | 網頁的標頭名稱 |
    | `-g [--gen]` | `md` / `json` / `yaml` | 生成來源的檔案格式 |
    | `-m [--model]` | `md_doc`* / `doc` / `resume` / `papogen`+ | 欲使用的模板來生成網頁 |
    | `--theme` | `paper`# / `papogen`+ | 欲使用的主題來生成網頁 |
    | `-h [--help]` | 無 | 列出 *papoGen* 輔助說明 |
    
    * `md_doc`*: 目前唯一支援 Markdown 的模板。
    * `paper`#: 預設主題。
    * `papogen`+: 目前唯一支援 `papogen` 主題的模板。注意，如果已經給定模板為 `papogen` (即：`-m papogen`)，則 *papoGen＊ 會自動預設主題為 `papogen` (即：`--theme papogen`)，可以不需要再做設定。

//**(注意！ 以下練習都是在這個 `example/` 資料夾中做的演示！)**

---
## Let's *papoGen*!

* 目標：**使用 YAML 快速生成個人履歷。**
    * [如何編輯 YAML 格式？](https://github.com/toolbuddy/papoGen/blob/master/test/json/README.md) (與 JSON 格式最相近！)
    * 使用主題：*papoGen.css*。
* 步驟：
    1. 準備素材
        * 請下載您的 Facebook 大頭照 (或正方形的照片)。
        * 將您的大頭照命名為 `avatar.png` 取代 `./src/avatar.png`。
    2. 生成範例網頁：
        * *papoGen* 生成指令：
            ```bash
            » papogen -s src/papogen/ -o out/yaml -g yaml -m papogen
            ```
        * 生成完畢後，可以至 `./out/papogen/` 瀏覽生成的範例網頁。
            * `./out/papogen/res/` - 存放網頁所使用到的圖檔。
            * `./out/papogen/asset/` - 存放網頁所使用到的 CSS、字型等資源檔。
        * 瀏覽完畢後請將 `./out/papogen` 整個資料夾刪除 (驗證確實有生成用)。
    3. 開啟檔案 `./src/papogen/yaml/profile.yaml`。
        * 姓名：將行數 25 的 `/* NAME */` 改為您的姓名。
        * 目前職位：將行數 28 的 `/* SUBJECT */` 改為您的職位。
        * EMAIL：將行數 55 的 `/* EMAIL */` 改為您的電子信箱。
        * 社群連結：
            * 將行數 79 的 `/* GITHUB */` 改為您的 GitHub 帳號連結。
            * 亦可自行新增連結喔！(選做)
                * 參考行數 78 - 82 自行新增。
                * 符號都是請參照 [Font Awesome](https://fontawesome.com/)，使用時只需要輸入官方給定的「符號名稱」，符號名稱中間的 `-` 請以「空白」取代。若符號有 `-alt`，請以 `alternate` 取代，
    4. 開啟檔案 `./src/papogem/yaml/resume.yaml`
        * 個人簡介：將行數 8 的 `/* ABOUT_YOU */` 改為您的自我介紹。
        * 工作經歷：此處以「表格」的方式呈現，而呈現方式為每一個直欄的方式紀錄。
            * 在行數 16 的 `attr` 中新增 `selectable: true` 與 `sample: true`。
            * 將行數 20 的 `/* COMPANY_1 */` 改為您的公司名稱。`/* COMPANY_2 */` 以此類推。
            * 將行數 26 的 `/* POSITION_1 */` 改為您的公司名稱。`/* POSITION_2 */` 以此類推。
        * 能力與興趣：此處以「直觀統計數字的方式」呈現。每一個統計數字都是數值 (`value`) 與名稱 (`content`) 的組合。
            * 行數 37 的 `color: blue` 為控制該時間軸的顏色，以下為 *papoGen.css* 定義好的顏色，可以改為以下試試看：
                ```yaml
                color: red / orange / yellow / green / blue / navy / purple / pink / brown / grey
                ```
            * 將行數 41 的 `/* SKILL */` 改為您的最擅長的能力或技術明稱。
            * 將行數 40 - 42 的 `value` 與行數 43 `label` 的順序對調，改為先 `label` 再 `value`。
            * 行數 45 - 49 與行數 51 - 55 為搭配一個符號的呈現方式，在此以 GitHub 貢獻次數作為示範，可自行修改練習。
        * 學歷：此處以時間軸 (Timeline) 的方式來呈現。注意的是，時間軸是有先後順序的，所以在 `data: []` 中每個元素順序就是時間軸「由上至下」的順序。
            * 行數 64 的 `color: navy` 為控制該時間軸的顏色，以下為 *papoGen.css* 定義好的顏色，可以改為以下試試看：
                ```yaml
                color: red / orange / yellow / green / blue / navy / purple / pink / brown / grey
                ```
            * 將行數 67 - 70 的 `/* YOUR_SCHOOL */` 改為您的學歷。
        * 圖片呈現：此模板支援同時多個圖片呈現。
            * 行數 80 的 `size: tiny` 為控制該圖片組的圖片大小，可以改為以下試試看：
                ```yaml
                size: mini / tiny / small / big / large / huge / massive
                ```
            * 若想要圖片有邊緣有圓角的效果：請在該 `attr` 中新增 `rounded: true`。
            * 行數 83 - 92 的 `url` 為每一張圖片的相對路徑，可自行修改練習。
        * 程式碼、數學式呈現：行數 106 - 110 與行數 118 - 121。
    5. 完成以上修改後，可以生成自己的靜態網頁！
        ```bash
        » papogen -s src/papogen/ -o out/yaml -g yaml -m papogen
        ```
    6. 查看生成結果：請查看 `./out/papogen/index.html`。

---
## *papoGen* 支援的生成方式

### Markdown (Recommended)

* 範例指令：
    ```bash
    » papogen -s src/md -o out/md -g md -m md_doc
    ```
* 選項說明：
    * `-s` 指定了來源，這邊因為要使用 Markdown 格式，所以使用 `test/md` 底下的所有檔案
    * `-o` 則是指定輸出的位置，這邊會輸出一份靜態網頁（可以透過 `google-chrome-stable out/md/index.html` 或是 `firefox out/md/index.html` 來做開啟 ）
    * `-g` 則是指定我們要用的來源格式，這邊我們要用的是 Markdown 格式，所以給予 `md` 的值
    * `-m` 這邊則是指定網站的版型，目前 Markdown 的支援只有 `md_doc`，也就是 document 的格式 （支援版型可以參考根目錄中 `lib/template/` 裡頭的 `Pug.js`）
* 額外內容：
    * `-t` 可以指定產生網頁的標題
    * `--theme` 可以指定 CSS theme template (正在籌備其他 CSS 主題當中)

### JSON

* 範例指令：
    ```bash
    # 產生 document 版型 - doc
    » papogen -s src/json -o out/json -m doc
    # 產生 resume 版型 - resume
    » papogen -s src/json -o out/json -m resume
    ```
* 選項說明：
    * `-s` 指定了來源，這邊因為要使用 JSON 格式，所以使用 `test/json` 底下的所有檔案
    * `-o` 則是指定輸出的位置，這邊會輸出一份靜態網頁
    * 由於 *papogen* 預設是以 JSON 格式來做輸出，所以如果要產生 JSON 格式，可以不需要指定！
    * `-m` 這邊則是指定網站的版型，JSON 格式目前支援兩種 - `doc`, `resume`，可以依據需求做指定
* 額外內容：
    * `-t` 可以指定產生網頁的標題
    * `--theme` 可以指定 CSS theme template (正在籌備其他 CSS 主題當中)

> [如何編輯 JSON 格式？](https://github.com/toolbuddy/papoGen/blob/master/test/json/README.md)

### YAML

* 範例指令：
    ```bash
    # 產生 document 版型 - doc
    » papogen -s src/yaml -o out/yaml -m doc -g yaml
    # 產生 resume 版型 - resume
    » papogen -s src/yaml -o out/yaml -m resume -g yaml
    ```
* 選項說明：
    * `-s` 指定了來源，這邊因為要使用 YAML 格式，所以使用 `test/yaml` 底下的所有檔案
    * `-o` 則是指定輸出的位置，這邊會輸出一份靜態網頁
    * `-g` 由於 *papoGen* 預設是以 YAML 格式來做輸出，所以如果要產生 yaml 格式，就必須透過 `-g yaml` 來做指定
    * `-m` 這邊則是指定網站的版型，YAML 格式目前支援兩種 - `doc`, `resume`，可以依據需求做指定
* 額外內容：
    * `-t` 可以指定產生網頁的標題
    * `--theme` 可以指定 CSS theme template (正在籌備其他 css 主題當中)

> [如何編輯 YAML 格式？](https://github.com/toolbuddy/papoGen/blob/master/test/json/README.md) (與 JSON 格式最相近！)

---
## *papoGen* 透過指令產生腳本範本

* 在 `0.0.12` 版開始，可以支援透過 *papoGen* 產生可支援的腳本格式！
* 利用 `papogen -h` 來列出有所支援的元件後，便可以利用 `<script>` 以及 `<format>` 的組合來產生腳本；
    * 組合方式： `<script>`/`<format>`
    * `<script>` 目前支援 JSON / YAML / Markdown。
    * `<format>` 則有多種，可以透過 `papogen -h` 來做察看。
* 示範指令
    * 產生一個 JSON 格式中 `text` 樣式的腳本到目前的工作目錄
        ```bash
        $ papogen -c json/text -o .
        ```
    * 多個樣式 (生成 `text.json`, `list.json`, 以及 `table.json`)
        ```bash
        $ papogen -c json/text/list/table -o .
        ```
    * 全部範本都做生成
        ```bash
        $ papogen -c json/all -o .
        ```

---
## Authors

* [David Lu](https://github.com/yungshenglu), yungshenglu1994@gmail.com

> If you have any problem, please feel free to ask me.
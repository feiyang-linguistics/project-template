# 原始碼說明文件

- `rawdata/`: 存放原始資料
- `data/`: 資料分析後所產出的資料

## Rscript 說明

要重製此專案，請依序執行下列 Rscript

1. `preprocess.R`
    - 資料清理，產出資料儲存於 `data/`
2. `analysis.R`
    - 從 `data/` 讀取清理過之資料，進行簡單 EDA
3. `visualize.R`
    - 繪製漂亮圖片，用於報告展演呈現
    - 產生的圖片儲存於 `report/fig/`
4. `compile_report.R`
    - 將 `report/` 內的 `report.Rmd` 以及 `poster.Rmd` 輸出成 PDF

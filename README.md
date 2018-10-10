# NLU for WeatherBot

## 功能
基于 Rasa NLU 为 WeatherBot 提供 NLU 服务。

## 依赖
python >= 3.5

## 安装
```bash
pip install -r ./requirements.txt
```

## 下载数据
从 [https://github.com/howl-anderson/MITIE_Chinese_Wikipedia_corpus](https://github.com/howl-anderson/MITIE_Chinese_Wikipedia_corpus/releases) 下载，解压缩后放置到 `data/total_word_feature_extractor.dat`


## 训练模型
```bash
./train_NLU.bash
```

## 启动服务
```bash
./run_server.bash
```

## TODO
* 使用 [duckling](https://github.com/facebook/duckling) 做时间和日期的识别,效果将更加 Robust 和准确
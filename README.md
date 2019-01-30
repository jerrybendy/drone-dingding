# drone-dingding
A drone notification plugin for Ali Dingding

## Before start

Frist, you should add a Dingding robot in your group chat. See [HERE](https://open-doc.dingtalk.com/docs/doc.htm?spm=a219a.7629140.0.0.51614a97Ab1nto&treeId=257&articleId=105735&docType=1) for the detail.

在开始之前，你需要前往钉钉创建一个自定义机器人。[这篇文档](https://open-doc.dingtalk.com/docs/doc.htm?spm=a219a.7629140.0.0.51614a97Ab1nto&treeId=257&articleId=105735&docType=1)可以告诉你如何添加一个自定义机器人。

If you create robot done, you would get a webhook address, like below. The `xxxxxxxx` after `access_token=` is your access token.

当你创建完自定义机器人后，将会得到一个 WebHook 地址。在 `access_token=` 后面的一串字符（如 `xxxxxxxx`）即是你的 access token。

```
https://oapi.dingtalk.com/robot/send?access_token=xxxxxxxx
```

## Usage

For drone 0.8

```yml
pipline:
  dingding:
    image: jerrybendy/drone-dingding
    token: <Your dingding access token>
    text: Hello dingding
```

For drone 1.0

```yml
steps:
- name: dingding
  image: jerrybendy/drone-dingding
  settings:
    token: <Your dingding access token>
    text: Hello dingding
```
.class public Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDKSample.WXPayEntryActivity"


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->confirmWXPay()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private confirmWXPay()Landroid/os/Bundle;
    .locals 14

    .prologue
    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, "server":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 124
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 125
    .local v4, "out":Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "b":Landroid/os/Bundle;
    const-string v10, "result"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v10, "voucher"

    const-string v11, "0"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    new-instance v8, Ljava/net/Socket;

    const-string v10, "www.games1717.com"

    const v11, 0xca05

    invoke-direct {v8, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v7    # "server":Ljava/net/Socket;
    .local v8, "server":Ljava/net/Socket;
    const/16 v10, 0x2710

    :try_start_1
    invoke-virtual {v8, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 131
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const-string v13, "utf8"

    invoke-direct {v11, v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v11, 0x1

    invoke-direct {v5, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .end local v4    # "out":Ljava/io/PrintWriter;
    .local v5, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "utf8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v10, "5"

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadWXOrderNo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "voucher":Ljava/lang/String;
    const-string v10, "done"

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v10, "result"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v10, "voucher"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 145
    if-eqz v3, :cond_0

    .line 147
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 153
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 156
    :cond_1
    if-eqz v8, :cond_8

    .line 158
    :try_start_5
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 165
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "server":Ljava/net/Socket;
    .end local v9    # "voucher":Ljava/lang/String;
    .restart local v7    # "server":Ljava/net/Socket;
    :cond_2
    :goto_1
    return-object v0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const-string v10, "result"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v10, "voucher"

    const-string v11, "0"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    if-eqz v2, :cond_3

    .line 147
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 154
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 156
    :cond_4
    if-eqz v7, :cond_2

    .line 158
    :try_start_8
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 159
    :catch_1
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 145
    :goto_4
    if-eqz v2, :cond_5

    .line 147
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 153
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 154
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 156
    :cond_6
    if-eqz v7, :cond_7

    .line 158
    :try_start_a
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 164
    :cond_7
    :goto_6
    throw v10

    .line 148
    :catch_3
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "server":Ljava/net/Socket;
    .restart local v9    # "voucher":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_1

    .line 144
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "server":Ljava/net/Socket;
    .end local v9    # "voucher":Ljava/lang/String;
    .restart local v8    # "server":Ljava/net/Socket;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "server":Ljava/net/Socket;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "server":Ljava/net/Socket;
    :catchall_3
    move-exception v10

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_4

    .line 140
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v8    # "server":Ljava/net/Socket;
    :catch_7
    move-exception v1

    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "server":Ljava/net/Socket;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "server":Ljava/net/Socket;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "server":Ljava/net/Socket;
    .restart local v7    # "server":Ljava/net/Socket;
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->setContentView(I)V

    .line 44
    const-string v0, "wxc79e0b0d12c90ae1"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 45
    iget-object v0, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 168
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 53
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 57
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 61
    const-string v1, "MicroMsg.SDKSample.WXPayEntryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPayFinish, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 63
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v1, :cond_1

    .line 64
    new-instance v0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;-><init>(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;Landroid/os/Looper;)V

    .line 93
    .local v0, "hconfirm":Landroid/os/Handler;
    new-instance v1, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;-><init>(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;Landroid/os/Handler;)V

    .line 111
    invoke-virtual {v1}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->start()V

    .line 120
    .end local v0    # "hconfirm":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 114
    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->finish()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->finish()V

    goto :goto_0
.end method

.class Lcom/zf/dsmfj/OnePayActivity$7;
.super Ljava/lang/Thread;
.source "OnePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity;->BuyVoucher(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/OnePayActivity;

.field private final synthetic val$halipay:Landroid/os/Handler;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$7;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    iput-object p2, p0, Lcom/zf/dsmfj/OnePayActivity$7;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/zf/dsmfj/OnePayActivity$7;->val$halipay:Landroid/os/Handler;

    .line 273
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 275
    const/4 v12, 0x0

    .line 276
    .local v12, "server":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 277
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 279
    .local v9, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v13, Ljava/net/Socket;

    const-string v14, "www.games1717.com"

    const v15, 0xca05

    invoke-direct {v13, v14, v15}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v12    # "server":Ljava/net/Socket;
    .local v13, "server":Ljava/net/Socket;
    const/16 v14, 0x2710

    :try_start_1
    invoke-virtual {v13, v14}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 281
    new-instance v10, Ljava/io/PrintWriter;

    new-instance v14, Ljava/io/BufferedWriter;

    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    const-string v17, "utf8"

    invoke-direct/range {v15 .. v17}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v15, 0x1

    invoke-direct {v10, v14, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    .end local v9    # "out":Ljava/io/PrintWriter;
    .local v10, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    const-string v16, "utf8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v14, "6"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->val$type:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "orderInfo":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "orderNo":Ljava/lang/String;
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    invoke-static {v14}, Lcom/zf/dsmfj/OnePayActivity;->access$5(Lcom/zf/dsmfj/OnePayActivity;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 288
    .local v1, "alipay":Lcom/alipay/sdk/app/PayTask;
    const/4 v14, 0x1

    invoke-virtual {v1, v7, v14}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v11

    .line 289
    .local v11, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v2, "b":Landroid/os/Bundle;
    const-string v14, "orderNo"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->val$halipay:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 292
    .local v6, "msg":Landroid/os/Message;
    iput-object v11, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    invoke-virtual {v6, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->val$halipay:Landroid/os/Handler;

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 300
    if-eqz v5, :cond_0

    .line 302
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 308
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 309
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 311
    :cond_1
    if-eqz v13, :cond_8

    .line 313
    :try_start_5
    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v12, v13

    .line 320
    .end local v1    # "alipay":Lcom/alipay/sdk/app/PayTask;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "orderInfo":Ljava/lang/String;
    .end local v8    # "orderNo":Ljava/lang/String;
    .end local v11    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    :cond_2
    :goto_1
    return-void

    .line 295
    .end local v6    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->val$halipay:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 298
    .restart local v6    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zf/dsmfj/OnePayActivity$7;->val$halipay:Landroid/os/Handler;

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    if-eqz v4, :cond_3

    .line 302
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 308
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 309
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 311
    :cond_4
    if-eqz v12, :cond_2

    .line 313
    :try_start_8
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 314
    :catch_1
    move-exception v3

    .line 316
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 303
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 305
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 299
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v14

    .line 300
    :goto_4
    if-eqz v4, :cond_5

    .line 302
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 308
    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    .line 309
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 311
    :cond_6
    if-eqz v12, :cond_7

    .line 313
    :try_start_a
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 319
    :cond_7
    :goto_6
    throw v14

    .line 303
    :catch_3
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 316
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 303
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v1    # "alipay":Lcom/alipay/sdk/app/PayTask;
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "orderInfo":Ljava/lang/String;
    .restart local v8    # "orderNo":Ljava/lang/String;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "server":Ljava/net/Socket;
    :catch_5
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 316
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_1

    .line 299
    .end local v1    # "alipay":Lcom/alipay/sdk/app/PayTask;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "orderInfo":Ljava/lang/String;
    .end local v8    # "orderNo":Ljava/lang/String;
    .end local v11    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v13    # "server":Ljava/net/Socket;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "server":Ljava/net/Socket;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "server":Ljava/net/Socket;
    :catchall_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_4

    .line 295
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v13    # "server":Ljava/net/Socket;
    :catch_7
    move-exception v3

    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "server":Ljava/net/Socket;
    :catch_8
    move-exception v3

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v12    # "server":Ljava/net/Socket;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "server":Ljava/net/Socket;
    :catch_9
    move-exception v3

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13    # "server":Ljava/net/Socket;
    .restart local v12    # "server":Ljava/net/Socket;
    goto :goto_2
.end method

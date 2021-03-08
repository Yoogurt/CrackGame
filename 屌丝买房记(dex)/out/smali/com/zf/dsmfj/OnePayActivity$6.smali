.class Lcom/zf/dsmfj/OnePayActivity$6;
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

.field private final synthetic val$hwx:Landroid/os/Handler;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$6;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    iput-object p2, p0, Lcom/zf/dsmfj/OnePayActivity$6;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/zf/dsmfj/OnePayActivity$6;->val$hwx:Landroid/os/Handler;

    .line 207
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 209
    const/16 v16, 0x0

    .line 210
    .local v16, "server":Ljava/net/Socket;
    const/4 v6, 0x0

    .line 211
    .local v6, "in":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 213
    .local v11, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v17, Ljava/net/Socket;

    const-string v20, "www.games1717.com"

    const v21, 0xca05

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v16    # "server":Ljava/net/Socket;
    .local v17, "server":Ljava/net/Socket;
    const/16 v20, 0x2710

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 215
    new-instance v12, Ljava/io/PrintWriter;

    new-instance v20, Ljava/io/BufferedWriter;

    new-instance v21, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    const-string v23, "utf8"

    invoke-direct/range {v21 .. v23}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .end local v11    # "out":Ljava/io/PrintWriter;
    .local v12, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf8"

    invoke-direct/range {v20 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 217
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v20, "4"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/OnePayActivity$6;->val$type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "appid":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, "partnerid":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, "prepayid":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "packageValue":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "noncestr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 226
    .local v19, "timestamp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, "sign":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "orderNo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/OnePayActivity$6;->val$hwx:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 229
    .local v8, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v4, "b":Landroid/os/Bundle;
    const-string v20, "appid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v20, "partnerid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v20, "prepayid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v20, "packageValue"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v20, "noncestr"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v20, "timestamp"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v20, "sign"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v20, "orderNo"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/OnePayActivity$6;->val$hwx:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 249
    if-eqz v7, :cond_0

    .line 251
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 257
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 258
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    .line 260
    :cond_1
    if-eqz v17, :cond_8

    .line 262
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 269
    .end local v3    # "appid":Ljava/lang/String;
    .end local v9    # "noncestr":Ljava/lang/String;
    .end local v10    # "orderNo":Ljava/lang/String;
    .end local v13    # "packageValue":Ljava/lang/String;
    .end local v14    # "partnerid":Ljava/lang/String;
    .end local v15    # "prepayid":Ljava/lang/String;
    .end local v17    # "server":Ljava/net/Socket;
    .end local v18    # "sign":Ljava/lang/String;
    .end local v19    # "timestamp":Ljava/lang/String;
    .restart local v16    # "server":Ljava/net/Socket;
    :cond_2
    :goto_1
    return-void

    .line 241
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 242
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/OnePayActivity$6;->val$hwx:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 244
    .restart local v8    # "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 245
    .restart local v4    # "b":Landroid/os/Bundle;
    const-string v20, "bill"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/OnePayActivity$6;->val$hwx:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    if-eqz v6, :cond_3

    .line 251
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 257
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 258
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 260
    :cond_4
    if-eqz v16, :cond_2

    .line 262
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 263
    :catch_1
    move-exception v5

    .line 265
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 252
    .local v5, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 254
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 248
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v20

    .line 249
    :goto_4
    if-eqz v6, :cond_5

    .line 251
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 257
    :cond_5
    :goto_5
    if-eqz v11, :cond_6

    .line 258
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 260
    :cond_6
    if-eqz v16, :cond_7

    .line 262
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 268
    :cond_7
    :goto_6
    throw v20

    .line 252
    :catch_3
    move-exception v5

    .line 254
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 263
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 265
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 252
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v11    # "out":Ljava/io/PrintWriter;
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v3    # "appid":Ljava/lang/String;
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v9    # "noncestr":Ljava/lang/String;
    .restart local v10    # "orderNo":Ljava/lang/String;
    .restart local v12    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "packageValue":Ljava/lang/String;
    .restart local v14    # "partnerid":Ljava/lang/String;
    .restart local v15    # "prepayid":Ljava/lang/String;
    .restart local v17    # "server":Ljava/net/Socket;
    .restart local v18    # "sign":Ljava/lang/String;
    .restart local v19    # "timestamp":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 254
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 265
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto :goto_1

    .line 248
    .end local v3    # "appid":Ljava/lang/String;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "noncestr":Ljava/lang/String;
    .end local v10    # "orderNo":Ljava/lang/String;
    .end local v13    # "packageValue":Ljava/lang/String;
    .end local v14    # "partnerid":Ljava/lang/String;
    .end local v15    # "prepayid":Ljava/lang/String;
    .end local v16    # "server":Ljava/net/Socket;
    .end local v18    # "sign":Ljava/lang/String;
    .end local v19    # "timestamp":Ljava/lang/String;
    .restart local v17    # "server":Ljava/net/Socket;
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v11    # "out":Ljava/io/PrintWriter;
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v12    # "out":Ljava/io/PrintWriter;
    .restart local v17    # "server":Ljava/net/Socket;
    :catchall_2
    move-exception v20

    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto :goto_4

    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v11    # "out":Ljava/io/PrintWriter;
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "out":Ljava/io/PrintWriter;
    .restart local v17    # "server":Ljava/net/Socket;
    :catchall_3
    move-exception v20

    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto :goto_4

    .line 241
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v17    # "server":Ljava/net/Socket;
    :catch_7
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto :goto_2

    .end local v11    # "out":Ljava/io/PrintWriter;
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v12    # "out":Ljava/io/PrintWriter;
    .restart local v17    # "server":Ljava/net/Socket;
    :catch_8
    move-exception v5

    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto/16 :goto_2

    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v11    # "out":Ljava/io/PrintWriter;
    .end local v16    # "server":Ljava/net/Socket;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "out":Ljava/io/PrintWriter;
    .restart local v17    # "server":Ljava/net/Socket;
    :catch_9
    move-exception v5

    move-object v11, v12

    .end local v12    # "out":Ljava/io/PrintWriter;
    .restart local v11    # "out":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "server":Ljava/net/Socket;
    .restart local v16    # "server":Ljava/net/Socket;
    goto/16 :goto_2
.end method

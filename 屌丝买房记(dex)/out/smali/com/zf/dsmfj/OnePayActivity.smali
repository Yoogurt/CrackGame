.class public Lcom/zf/dsmfj/OnePayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OnePayActivity.java"


# instance fields
.field hconfirmali:Landroid/os/Handler;

.field private self:Lcom/zf/dsmfj/OnePayActivity;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private BuyVoucher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v1, Lcom/zf/dsmfj/OnePayActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/zf/dsmfj/OnePayActivity$4;-><init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/os/Looper;)V

    .line 149
    .local v1, "hwx":Landroid/os/Handler;
    new-instance v0, Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/zf/dsmfj/OnePayActivity$5;-><init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/os/Looper;)V

    .line 206
    .local v0, "halipay":Landroid/os/Handler;
    const-string v2, "wx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    new-instance v2, Lcom/zf/dsmfj/OnePayActivity$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/zf/dsmfj/OnePayActivity$6;-><init>(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 270
    invoke-virtual {v2}, Lcom/zf/dsmfj/OnePayActivity$6;->start()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v2, "alipay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Lcom/zf/dsmfj/OnePayActivity$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/zf/dsmfj/OnePayActivity$7;-><init>(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 321
    invoke-virtual {v2}, Lcom/zf/dsmfj/OnePayActivity$7;->start()V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/zf/dsmfj/OnePayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/zf/dsmfj/OnePayActivity;->BuyVoucher(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/OnePayActivity;->confirmAlipay(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/zf/dsmfj/OnePayActivity;)Lcom/zf/dsmfj/OnePayActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity;->self:Lcom/zf/dsmfj/OnePayActivity;

    return-object v0
.end method

.method private confirmAlipay(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .param p1, "orderNo"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, "server":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 327
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 328
    .local v4, "out":Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "b":Landroid/os/Bundle;
    const-string v10, "result"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v10, "voucher"

    const-string v11, "0"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :try_start_0
    new-instance v8, Ljava/net/Socket;

    const-string v10, "www.games1717.com"

    const v11, 0xca05

    invoke-direct {v8, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v7    # "server":Ljava/net/Socket;
    .local v8, "server":Ljava/net/Socket;
    const/16 v10, 0x2710

    :try_start_1
    invoke-virtual {v8, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
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

    .line 335
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

    .line 336
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_3
    const-string v10, "7"

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, "voucher":Ljava/lang/String;
    const-string v10, "done"

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string v10, "result"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v10, "voucher"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 348
    if-eqz v3, :cond_0

    .line 350
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 356
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 357
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 359
    :cond_1
    if-eqz v8, :cond_8

    .line 361
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

    .line 368
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "server":Ljava/net/Socket;
    .end local v9    # "voucher":Ljava/lang/String;
    .restart local v7    # "server":Ljava/net/Socket;
    :cond_2
    :goto_1
    return-object v0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const-string v10, "result"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v10, "voucher"

    const-string v11, "0"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 348
    if-eqz v2, :cond_3

    .line 350
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 357
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 359
    :cond_4
    if-eqz v7, :cond_2

    .line 361
    :try_start_8
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 362
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 347
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 348
    :goto_4
    if-eqz v2, :cond_5

    .line 350
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 356
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 357
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 359
    :cond_6
    if-eqz v7, :cond_7

    .line 361
    :try_start_a
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 367
    :cond_7
    :goto_6
    throw v10

    .line 351
    :catch_3
    move-exception v1

    .line 353
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 364
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 351
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

    .line 353
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 364
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

    .line 347
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

    .line 343
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

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 371
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 372
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 373
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 374
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 377
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v9, 0x7f030020

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->setContentView(I)V

    .line 53
    iput-object p0, p0, Lcom/zf/dsmfj/OnePayActivity;->self:Lcom/zf/dsmfj/OnePayActivity;

    .line 54
    invoke-virtual {p0}, Lcom/zf/dsmfj/OnePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 55
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "type"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    .line 56
    const-string v0, "http://www.games1717.com:50104"

    .line 57
    .local v0, "URL":Ljava/lang/String;
    const v9, 0x7f070014

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 58
    .local v4, "img":Landroid/widget/ImageView;
    const v9, 0x7f070099

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 59
    .local v8, "tname":Landroid/widget/TextView;
    const v9, 0x7f0700ac

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 60
    .local v7, "tamount":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 61
    const-string v9, "\u4e70\u623f\u4ee3\u91d1\u523810\u4e07"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const-string v9, "1.00"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v9, 0x7f02012e

    invoke-static {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    :goto_0
    const v9, 0x7f0700ad

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 81
    .local v1, "balipay":Landroid/widget/Button;
    const v9, 0x7f0700ae

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 82
    .local v3, "bwx":Landroid/widget/Button;
    new-instance v9, Lcom/zf/dsmfj/OnePayActivity$1;

    invoke-direct {v9, p0, v1, v3}, Lcom/zf/dsmfj/OnePayActivity$1;-><init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v9, Lcom/zf/dsmfj/OnePayActivity$2;

    invoke-direct {v9, p0, v1, v3}, Lcom/zf/dsmfj/OnePayActivity$2;-><init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v9, 0x7f070007

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 105
    .local v6, "r2":Landroid/widget/RelativeLayout;
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    const v9, 0x7f0700af

    invoke-virtual {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    .local v2, "bclose":Landroid/widget/Button;
    new-instance v9, Lcom/zf/dsmfj/OnePayActivity$3;

    invoke-direct {v9, p0}, Lcom/zf/dsmfj/OnePayActivity$3;-><init>(Lcom/zf/dsmfj/OnePayActivity;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void

    .line 65
    .end local v1    # "balipay":Landroid/widget/Button;
    .end local v2    # "bclose":Landroid/widget/Button;
    .end local v3    # "bwx":Landroid/widget/Button;
    .end local v6    # "r2":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v9, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    const-string v10, "10"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 66
    const-string v9, "\u4e70\u623f\u4ee3\u91d1\u5238120\u4e07"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v9, "10.00"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v9, 0x7f02012f

    invoke-static {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v9, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    const-string v10, "50"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 71
    const-string v9, "\u4e70\u623f\u4ee3\u91d1\u5238700\u4e07"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v9, "50.00"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v9, 0x7f020131

    invoke-static {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v9, p0, Lcom/zf/dsmfj/OnePayActivity;->type:Ljava/lang/String;

    const-string v10, "98"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    const-string v9, "\u4e70\u623f\u4ee3\u91d1\u52381500\u4e07"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v9, "98.00"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v9, 0x7f020130

    invoke-static {p0, v9}, Lcom/zf/dsmfj/OnePayActivity;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

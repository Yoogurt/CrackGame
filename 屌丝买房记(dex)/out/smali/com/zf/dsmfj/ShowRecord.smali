.class public Lcom/zf/dsmfj/ShowRecord;
.super Landroid/app/Activity;
.source "ShowRecord.java"


# instance fields
.field private houseimgressucc:[I

.field private housename:[Ljava/lang/String;

.field private housenbr:I

.field private housesuccmsg:[Ljava/lang/String;

.field private instance:Lcom/zf/dsmfj/ShowRecord;

.field private record_date:[Ljava/lang/String;

.field private record_succnbr:[Ljava/lang/String;

.field private s_button:I

.field private s_selgoods:I

.field private selhouse:I

.field private soundon:Z

.field private sp:Landroid/media/SoundPool;

.field private tface:Landroid/graphics/Typeface;

.field private wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private PlaySound(I)V
    .locals 7
    .param p1, "soundid"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 275
    iget-boolean v0, p0, Lcom/zf/dsmfj/ShowRecord;->soundon:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord;->sp:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 277
    :cond_0
    return-void
.end method

.method private ReadRecord()V
    .locals 10

    .prologue
    .line 174
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data2"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 177
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 179
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 182
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v8, p0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_3

    .line 211
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 213
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 219
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 221
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 228
    .end local v7    # "i":I
    :cond_2
    :goto_3
    return-void

    .line 183
    .restart local v7    # "i":I
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 184
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 187
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 189
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v8, p0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    if-ge v7, v8, :cond_0

    .line 190
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 191
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 195
    .end local v7    # "i":I
    :cond_5
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    :try_start_5
    iget v8, p0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    if-lt v7, v8, :cond_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 208
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 198
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_6
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 199
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_7

    .line 200
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 201
    :cond_7
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 202
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 203
    :cond_8
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 204
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    .line 205
    iget-object v8, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 197
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 208
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "i":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    if-eqz v0, :cond_a

    .line 213
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v5, :cond_2

    .line 221
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 222
    :catch_1
    move-exception v2

    .line 224
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 211
    :goto_8
    if-eqz v0, :cond_b

    .line 213
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 219
    :cond_b
    :goto_9
    if-eqz v5, :cond_c

    .line 221
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 227
    :cond_c
    :goto_a
    throw v8

    .line 214
    :catch_3
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    :catch_5
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "i":I
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "i":I
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_8

    .line 208
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "i":I
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "i":I
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6
.end method

.method private ReadShareUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 230
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data9"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 233
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 234
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 235
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 236
    const-string v8, ""

    .line 263
    :goto_0
    return-object v8

    .line 237
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 238
    const-string v8, ""

    goto :goto_0

    .line 240
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 246
    if-eqz v1, :cond_2

    .line 248
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 254
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 256
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 263
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    if-eqz v0, :cond_4

    .line 248
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 254
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 256
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 257
    :catch_1
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 245
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 246
    :goto_5
    if-eqz v0, :cond_5

    .line 248
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 254
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 256
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 262
    :cond_6
    :goto_7
    throw v8

    .line 249
    :catch_3
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 249
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 245
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 243
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private WechatShare(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "flag"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "des"    # Ljava/lang/String;
    .param p4, "imgres"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 153
    .local v4, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    invoke-direct {p0}, Lcom/zf/dsmfj/ShowRecord;->ReadShareUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v4}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 155
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 156
    iput-object p3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 157
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    const/4 v5, 0x2

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    invoke-virtual {p0}, Lcom/zf/dsmfj/ShowRecord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02011a

    invoke-static {v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "thumb":Landroid/graphics/Bitmap;
    invoke-static {v3, v9}, Lcom/zf/dsmfj/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 163
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 164
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 165
    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 166
    if-nez p1, :cond_0

    .line 167
    iput v8, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 171
    const-string v5, "buddy"

    const-string v6, "\u5df2\u53d1\u51fa\u6d88\u606f\u5230\u5fae\u4fe1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 169
    :cond_0
    iput v9, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/ShowRecord;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/zf/dsmfj/ShowRecord;->s_button:I

    return v0
.end method

.method static synthetic access$1(Lcom/zf/dsmfj/ShowRecord;I)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/ShowRecord;->PlaySound(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/zf/dsmfj/ShowRecord;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/zf/dsmfj/ShowRecord;->selhouse:I

    return-void
.end method

.method static synthetic access$3(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zf/dsmfj/ShowRecord;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/zf/dsmfj/ShowRecord;->selhouse:I

    return v0
.end method

.method static synthetic access$5(Lcom/zf/dsmfj/ShowRecord;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/zf/dsmfj/ShowRecord;->s_selgoods:I

    return v0
.end method

.method static synthetic access$6(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord;->housename:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord;->housesuccmsg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zf/dsmfj/ShowRecord;)[I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord;->houseimgressucc:[I

    return-object v0
.end method

.method static synthetic access$9(Lcom/zf/dsmfj/ShowRecord;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zf/dsmfj/ShowRecord;->WechatShare(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 266
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 268
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 269
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 272
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    .line 71
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/ShowRecord;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 75
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 76
    .local v8, "b":Landroid/os/Bundle;
    const-string v3, "housenbr"

    const/16 v5, 0xa

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    .line 77
    const-string v3, "soundon"

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zf/dsmfj/ShowRecord;->soundon:Z

    .line 78
    const-string v3, "housename"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->housename:[Ljava/lang/String;

    .line 79
    const-string v3, "houseimgressucc"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->houseimgressucc:[I

    .line 80
    const-string v3, "housesuccmsg"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->housesuccmsg:[Ljava/lang/String;

    .line 82
    new-instance v3, Landroid/media/SoundPool;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x64

    invoke-direct {v3, v5, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->sp:Landroid/media/SoundPool;

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v6, 0x7f040001

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/ShowRecord;->s_button:I

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v6, 0x7f04000a

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/ShowRecord;->s_selgoods:I

    .line 86
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    .line 87
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/ShowRecord;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v5, "fonts/GirlType.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    .line 90
    const v3, 0x7f030021

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->setContentView(I)V

    .line 91
    const v3, 0x7f070096

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 92
    .local v12, "ihead2":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v5, 0x7f020002

    invoke-static {v3, v5}, Lcom/zf/dsmfj/ShowRecord;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    const v3, 0x7f070091

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 94
    .local v11, "ibottom":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v5, 0x7f020003

    invoke-static {v3, v5}, Lcom/zf/dsmfj/ShowRecord;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    const v3, 0x7f070009

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 96
    .local v19, "ttitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    const v3, 0x7f0700b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 98
    .local v17, "thousename":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    const v3, 0x7f07003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 100
    .local v16, "tdate":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    const v3, 0x7f0700b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 102
    .local v18, "tsuccnbr":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    const v3, 0x7f070094

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 105
    .local v9, "bexit":Landroid/widget/Button;
    new-instance v3, Lcom/zf/dsmfj/ShowRecord$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zf/dsmfj/ShowRecord$1;-><init>(Lcom/zf/dsmfj/ShowRecord;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/ShowRecord;->ReadRecord()V

    .line 112
    const v3, 0x7f0700b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 113
    .local v14, "list":Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "listitem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Lcom/zf/dsmfj/SpecialAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v5, 0x7f03001e

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v20, "housename"

    aput-object v20, v6, v7

    const/4 v7, 0x1

    const-string v20, "bg"

    aput-object v20, v6, v7

    const/4 v7, 0x2

    const-string v20, "date"

    aput-object v20, v6, v7

    const/4 v7, 0x3

    const-string v20, "succnbr"

    aput-object v20, v6, v7

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v2 .. v7}, Lcom/zf/dsmfj/SpecialAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V

    .line 115
    .local v2, "lia":Lcom/zf/dsmfj/SpecialAdapter;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/ShowRecord;->housenbr:I

    if-lt v10, v3, :cond_0

    .line 129
    invoke-virtual {v14, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    new-instance v3, Lcom/zf/dsmfj/ShowRecord$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zf/dsmfj/ShowRecord$2;-><init>(Lcom/zf/dsmfj/ShowRecord;)V

    invoke-virtual {v14, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const-string v5, "wxc79e0b0d12c90ae1"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/ShowRecord;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v5, "wxc79e0b0d12c90ae1"

    invoke-interface {v3, v5}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 150
    return-void

    .line 116
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "housename"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/ShowRecord;->housename:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    if-eqz v10, :cond_1

    const/4 v3, 0x3

    if-eq v10, v3, :cond_1

    const/4 v3, 0x6

    if-eq v10, v3, :cond_1

    const/16 v3, 0x9

    if-eq v10, v3, :cond_1

    const/16 v3, 0xc

    if-ne v10, v3, :cond_3

    .line 120
    :cond_1
    const-string v3, "bg"

    const v5, 0x7f020004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_2
    :goto_1
    const-string v3, "date"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/ShowRecord;->record_date:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "succnbr"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/ShowRecord;->record_succnbr:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 121
    :cond_3
    const/4 v3, 0x1

    if-eq v10, v3, :cond_4

    const/4 v3, 0x4

    if-eq v10, v3, :cond_4

    const/4 v3, 0x7

    if-eq v10, v3, :cond_4

    const/16 v3, 0xa

    if-eq v10, v3, :cond_4

    const/16 v3, 0xd

    if-ne v10, v3, :cond_5

    .line 122
    :cond_4
    const-string v3, "bg"

    const v5, 0x7f020005

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_5
    const/4 v3, 0x2

    if-eq v10, v3, :cond_6

    const/4 v3, 0x5

    if-eq v10, v3, :cond_6

    const/16 v3, 0x8

    if-eq v10, v3, :cond_6

    const/16 v3, 0xb

    if-eq v10, v3, :cond_6

    const/16 v3, 0xe

    if-ne v10, v3, :cond_2

    .line 124
    :cond_6
    const-string v3, "bg"

    const v5, 0x7f020006

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :array_0
    .array-data 4
        0x7f0700a0
        0x7f070000
        0x7f07003c
        0x7f0700a1
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 279
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f060001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 280
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 282
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 283
    new-instance v1, Lcom/zf/dsmfj/ShowRecord$3;

    invoke-direct {v1, p0}, Lcom/zf/dsmfj/ShowRecord$3;-><init>(Lcom/zf/dsmfj/ShowRecord;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 294
    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    const v2, 0x7f070096

    invoke-virtual {p0, v2}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, "ihead2":Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/zf/dsmfj/ShowRecord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "ibottom":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 67
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .param p1, "dialogid"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 300
    new-instance v6, Lcom/zf/dsmfj/ShowRecord$4;

    invoke-direct {v6, p0, p2}, Lcom/zf/dsmfj/ShowRecord$4;-><init>(Lcom/zf/dsmfj/ShowRecord;Landroid/app/Dialog;)V

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    const v6, 0x7f03000a

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 318
    const/high16 v6, 0x7f070000

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 319
    .local v3, "ibg":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    const v7, 0x7f020019

    invoke-static {v6, v7}, Lcom/zf/dsmfj/ShowRecord;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    const v6, 0x7f070014

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 321
    .local v4, "isuccimg":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/zf/dsmfj/ShowRecord;->instance:Lcom/zf/dsmfj/ShowRecord;

    iget-object v7, p0, Lcom/zf/dsmfj/ShowRecord;->houseimgressucc:[I

    iget v8, p0, Lcom/zf/dsmfj/ShowRecord;->selhouse:I

    aget v7, v7, v8

    invoke-static {v6, v7}, Lcom/zf/dsmfj/ShowRecord;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    const v6, 0x7f07000a

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 323
    .local v5, "tbuyhnote":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/zf/dsmfj/ShowRecord;->housesuccmsg:[Ljava/lang/String;

    iget v7, p0, Lcom/zf/dsmfj/ShowRecord;->selhouse:I

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v6, p0, Lcom/zf/dsmfj/ShowRecord;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    const v6, 0x7f070003

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 326
    .local v0, "bbuyhok":Landroid/widget/Button;
    new-instance v6, Lcom/zf/dsmfj/ShowRecord$5;

    invoke-direct {v6, p0, p2}, Lcom/zf/dsmfj/ShowRecord$5;-><init>(Lcom/zf/dsmfj/ShowRecord;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v6, 0x7f07000c

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 333
    .local v1, "bsharefriend":Landroid/widget/Button;
    new-instance v6, Lcom/zf/dsmfj/ShowRecord$6;

    invoke-direct {v6, p0}, Lcom/zf/dsmfj/ShowRecord$6;-><init>(Lcom/zf/dsmfj/ShowRecord;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    const v6, 0x7f07000d

    invoke-virtual {p2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 342
    .local v2, "bsharetimeline":Landroid/widget/Button;
    new-instance v6, Lcom/zf/dsmfj/ShowRecord$7;

    invoke-direct {v6, p0}, Lcom/zf/dsmfj/ShowRecord$7;-><init>(Lcom/zf/dsmfj/ShowRecord;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

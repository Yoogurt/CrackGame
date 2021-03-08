.class public Lcom/zf/dsmfj/GameStory;
.super Landroid/app/Activity;
.source "GameStory.java"


# instance fields
.field private instance:Lcom/zf/dsmfj/GameStory;

.field private step:I

.field private tface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ChangeHintLeft(I)V
    .locals 14
    .param p1, "change"    # I

    .prologue
    .line 180
    new-instance v6, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/"

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v6, "fpath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 183
    .local v7, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 184
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 185
    .local v9, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 186
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v12, ""

    .line 187
    .local v12, "status":Ljava/lang/String;
    const-string v11, "0"

    .line 189
    .local v11, "left":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 191
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 192
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 193
    :cond_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v7    # "fr":Ljava/io/FileReader;
    .local v8, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 195
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 196
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v11

    .line 200
    if-eqz v1, :cond_2

    .line 202
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 208
    :cond_2
    :goto_0
    if-eqz v8, :cond_c

    .line 210
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 217
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-nez v12, :cond_4

    .line 218
    const-string v12, ""

    .line 219
    :cond_4
    if-nez v11, :cond_5

    .line 220
    const-string v11, "0"

    .line 221
    :cond_5
    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 222
    const-string v11, "0"

    .line 224
    :cond_6
    :try_start_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, p1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v11

    .line 230
    :goto_2
    :try_start_6
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    .end local v9    # "fw":Ljava/io/FileWriter;
    .local v10, "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 232
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    invoke-virtual {v3, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 234
    invoke-virtual {v3, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 238
    if-eqz v3, :cond_7

    .line 240
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 246
    :cond_7
    :goto_3
    if-eqz v10, :cond_10

    .line 248
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 255
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :cond_8
    :goto_4
    return-void

    .line 197
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 200
    if-eqz v0, :cond_9

    .line 202
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 208
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_6
    if-eqz v7, :cond_3

    .line 210
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_1

    .line 211
    :catch_1
    move-exception v4

    .line 213
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 203
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 205
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 199
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 200
    :goto_7
    if-eqz v0, :cond_a

    .line 202
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 208
    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 210
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 216
    :cond_b
    :goto_9
    throw v13

    .line 203
    :catch_3
    move-exception v4

    .line 205
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 211
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 213
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 203
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    .line 205
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 213
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 225
    :catch_7
    move-exception v4

    .line 226
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const-string v11, "0"

    goto :goto_2

    .line 235
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 236
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 238
    if-eqz v2, :cond_d

    .line 240
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 246
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    if-eqz v9, :cond_8

    .line 248
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_4

    .line 249
    :catch_9
    move-exception v4

    .line 251
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 241
    .local v4, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 238
    :goto_c
    if-eqz v2, :cond_e

    .line 240
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 246
    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 248
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 254
    :cond_f
    :goto_e
    throw v13

    .line 241
    :catch_b
    move-exception v4

    .line 243
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 249
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 241
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_d
    move-exception v4

    .line 243
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 249
    .end local v4    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 237
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .line 235
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_f
    move-exception v4

    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_a

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_10
    move-exception v4

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_a

    .line 199
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v13

    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catchall_5
    move-exception v13

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .line 197
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_11
    move-exception v4

    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_12
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5
.end method

.method private SetHint(Z)V
    .locals 14
    .param p1, "flag"    # Z

    .prologue
    .line 108
    new-instance v6, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/"

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "fpath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 111
    .local v7, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 112
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 113
    .local v9, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 114
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v12, ""

    .line 115
    .local v12, "status":Ljava/lang/String;
    const-string v11, "0"

    .line 117
    .local v11, "left":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 118
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 119
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 121
    :cond_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v7    # "fr":Ljava/io/FileReader;
    .local v8, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 123
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 124
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v11

    .line 128
    if-eqz v1, :cond_2

    .line 130
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 136
    :cond_2
    :goto_0
    if-eqz v8, :cond_b

    .line 138
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 145
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-nez v12, :cond_4

    .line 146
    const-string v12, ""

    .line 147
    :cond_4
    if-nez v11, :cond_5

    .line 148
    const-string v11, "0"

    .line 150
    :cond_5
    :try_start_5
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    .end local v9    # "fw":Ljava/io/FileWriter;
    .local v10, "fw":Ljava/io/FileWriter;
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 152
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_c

    .line 153
    :try_start_7
    const-string v13, "hinton"

    invoke-virtual {v3, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 157
    invoke-virtual {v3, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 161
    if-eqz v3, :cond_6

    .line 163
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 169
    :cond_6
    :goto_3
    if-eqz v10, :cond_10

    .line 171
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 178
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :cond_7
    :goto_4
    return-void

    .line 125
    :catch_0
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 128
    if-eqz v0, :cond_8

    .line 130
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    if-eqz v7, :cond_3

    .line 138
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v4

    .line 141
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 131
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 128
    :goto_7
    if-eqz v0, :cond_9

    .line 130
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 136
    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 138
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 144
    :cond_a
    :goto_9
    throw v13

    .line 131
    :catch_3
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 141
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 131
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 141
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 155
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :cond_c
    :try_start_f
    const-string v13, "intoff"

    invoke-virtual {v3, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_2

    .line 158
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 159
    .end local v10    # "fw":Ljava/io/FileWriter;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :goto_a
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 161
    if-eqz v2, :cond_d

    .line 163
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 169
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    if-eqz v9, :cond_7

    .line 171
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_4

    .line 172
    :catch_8
    move-exception v4

    .line 174
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 164
    .local v4, "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 161
    :goto_c
    if-eqz v2, :cond_e

    .line 163
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 169
    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 171
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 177
    :cond_f
    :goto_e
    throw v13

    .line 164
    :catch_a
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 172
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 174
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 164
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_c
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 172
    .end local v4    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v4

    .line 174
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 160
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .line 158
    :catch_e
    move-exception v4

    goto :goto_a

    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_f
    move-exception v4

    move-object v9, v10

    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_a

    .line 127
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v13

    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catchall_5
    move-exception v13

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .line 125
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_10
    move-exception v4

    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_11
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/GameStory;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/zf/dsmfj/GameStory;->step:I

    return v0
.end method

.method static synthetic access$1(Lcom/zf/dsmfj/GameStory;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/zf/dsmfj/GameStory;->step:I

    return-void
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 257
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 258
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 259
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 260
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 263
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/zf/dsmfj/GameStory;->instance:Lcom/zf/dsmfj/GameStory;

    .line 42
    invoke-virtual {p0}, Lcom/zf/dsmfj/GameStory;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/GirlType.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zf/dsmfj/GameStory;->tface:Landroid/graphics/Typeface;

    .line 43
    invoke-virtual {p0, v8}, Lcom/zf/dsmfj/GameStory;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/GameStory;->setContentView(I)V

    .line 45
    iput v8, p0, Lcom/zf/dsmfj/GameStory;->step:I

    .line 46
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 47
    .local v3, "ani":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/GameStory;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 51
    .local v6, "ibg":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory;->instance:Lcom/zf/dsmfj/GameStory;

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Lcom/zf/dsmfj/GameStory;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/GameStory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, "ttext":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    const-string v0, "    \u6628\u665a\u5f7b\u591c\u7684\u6e38\u620f\u8ba9\u6211\u5934\u660f\u8111\u6da8\uff0c \u6b64\u523b\u8e72\u5728\u5395\u6240\u7684\u6211\u4e24\u811a\u53d1\u9ebb\uff0c \u4f46\u4ecd\u5728\u79ef\u6781\u5730\u601d\u8003\u7740\u4eba\u751f\u3002"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 56
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/GameStory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 57
    .local v5, "bstart":Landroid/widget/Button;
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    new-instance v0, Lcom/zf/dsmfj/GameStory$1;

    invoke-direct {v0, p0}, Lcom/zf/dsmfj/GameStory$1;-><init>(Lcom/zf/dsmfj/GameStory;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/GameStory;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 68
    .local v4, "bnext":Landroid/widget/Button;
    new-instance v0, Lcom/zf/dsmfj/GameStory$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zf/dsmfj/GameStory$2;-><init>(Lcom/zf/dsmfj/GameStory;Landroid/widget/TextView;Landroid/view/animation/Animation;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0, v7}, Lcom/zf/dsmfj/GameStory;->SetHint(Z)V

    .line 105
    invoke-direct {p0, v7}, Lcom/zf/dsmfj/GameStory;->ChangeHintLeft(I)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 35
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/zf/dsmfj/GameStory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .local v0, "ibg":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 38
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

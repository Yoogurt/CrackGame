.class public Lcom/zf/dsmfj/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ChangeVoucher(I)Z
    .locals 22
    .param p1, "change"    # I

    .prologue
    .line 120
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v8, "fpath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/data1"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v7, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 123
    .local v9, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 124
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 125
    .local v11, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 126
    .local v4, "bw":Ljava/io/BufferedWriter;
    const-string v16, ""

    .line 128
    .local v16, "voucher":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 129
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 130
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 131
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_1
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v9    # "fr":Ljava/io/FileReader;
    .local v10, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 134
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v16

    .line 139
    if-eqz v3, :cond_2

    .line 141
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 147
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 149
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 157
    :cond_3
    :goto_1
    if-nez v16, :cond_4

    .line 158
    const-string v16, ""

    .line 159
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 160
    .local v14, "l":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-gt v14, v0, :cond_b

    .line 161
    const-string v17, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 165
    :goto_2
    :try_start_5
    const-string v15, ""

    .line 166
    .local v15, "r":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    const/16 v17, 0x5

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 168
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int v18, v18, p1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v16

    .line 175
    :try_start_6
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    .end local v11    # "fw":Ljava/io/FileWriter;
    .local v12, "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 177
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 183
    if-eqz v5, :cond_5

    .line 185
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 191
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 193
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 178
    :cond_6
    :goto_5
    const/16 v17, 0x1

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 181
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v13    # "i":I
    .end local v14    # "l":I
    .end local v15    # "r":Ljava/lang/String;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :goto_6
    return v17

    .line 135
    :catch_0
    move-exception v6

    .line 136
    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 139
    if-eqz v2, :cond_7

    .line 141
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 147
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    if-eqz v9, :cond_8

    .line 149
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 137
    :cond_8
    :goto_9
    const/16 v17, 0x0

    goto :goto_6

    .line 142
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 144
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 152
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 138
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 139
    :goto_a
    if-eqz v2, :cond_9

    .line 141
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 147
    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    .line 149
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 155
    :cond_a
    :goto_c
    throw v17

    .line 142
    :catch_3
    move-exception v6

    .line 144
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 152
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 142
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    .line 144
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 152
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "l":I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 167
    .restart local v13    # "i":I
    .restart local v15    # "r":Ljava/lang/String;
    :cond_c
    :try_start_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-result-object v15

    .line 166
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 170
    .end local v13    # "i":I
    .end local v15    # "r":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 171
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const/16 v17, 0x0

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_6

    .line 186
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fr":Ljava/io/FileReader;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fr":Ljava/io/FileReader;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    .restart local v13    # "i":I
    .restart local v15    # "r":Ljava/lang/String;
    :catch_8
    move-exception v6

    .line 188
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 194
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 196
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 179
    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catch_a
    move-exception v6

    .line 180
    .local v6, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 183
    if-eqz v4, :cond_d

    .line 185
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 191
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_e
    if-eqz v11, :cond_e

    .line 193
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 181
    :cond_e
    :goto_f
    const/16 v17, 0x0

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_6

    .line 186
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v6

    .line 188
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 194
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 196
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 182
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 183
    :goto_10
    if-eqz v4, :cond_f

    .line 185
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 191
    :cond_f
    :goto_11
    if-eqz v11, :cond_10

    .line 193
    :try_start_15
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 199
    :cond_10
    :goto_12
    throw v17

    .line 186
    :catch_d
    move-exception v6

    .line 188
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 194
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 196
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 182
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v17

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    goto :goto_10

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v17

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    goto :goto_10

    .line 179
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    :catch_f
    move-exception v6

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    goto :goto_d

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v12    # "fw":Ljava/io/FileWriter;
    :catch_10
    move-exception v6

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    goto :goto_d

    .line 138
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v13    # "i":I
    .end local v14    # "l":I
    .end local v15    # "r":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v17

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catchall_5
    move-exception v17

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_a

    .line 135
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_11
    move-exception v6

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_12
    move-exception v6

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7
.end method

.method private Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 335
    if-nez p1, :cond_1

    .line 336
    const-string v12, ""

    .line 455
    :cond_0
    :goto_0
    return-object v12

    .line 337
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 338
    .local v11, "l":I
    const/4 v13, 0x3

    if-ge v11, v13, :cond_2

    .line 339
    const-string v12, ""

    goto :goto_0

    .line 340
    :cond_2
    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 342
    .local v8, "flag":C
    const-string v12, ""

    .line 345
    .local v12, "s":Ljava/lang/String;
    sparse-switch v8, :sswitch_data_0

    .line 437
    :cond_3
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 438
    add-int/lit8 v13, v11, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 439
    .local v3, "crcl":C
    sub-int v13, v11, v3

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "crcs":Ljava/lang/String;
    const/4 v13, 0x0

    sub-int v14, v11, v3

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 441
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 443
    const-wide/16 v4, 0x0

    .line 444
    .local v4, "crc":J
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-lt v10, v11, :cond_4

    .line 449
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-eqz v13, :cond_0

    .line 450
    const-string v12, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v3    # "crcl":C
    .end local v4    # "crc":J
    .end local v6    # "crcs":Ljava/lang/String;
    .end local v10    # "j":I
    :sswitch_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 348
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_0:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 347
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 351
    .end local v9    # "i":I
    :sswitch_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_1:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 351
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 355
    .end local v9    # "i":I
    :sswitch_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 356
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_2:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 355
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 359
    .end local v9    # "i":I
    :sswitch_3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 360
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_3:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 359
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 363
    .end local v9    # "i":I
    :sswitch_4
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 364
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_4:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 367
    .end local v9    # "i":I
    :sswitch_5
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 368
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_5:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 371
    .end local v9    # "i":I
    :sswitch_6
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 372
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_6:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 375
    .end local v9    # "i":I
    :sswitch_7
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 376
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_7:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 375
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 379
    .end local v9    # "i":I
    :sswitch_8
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 380
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_8:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 379
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 383
    .end local v9    # "i":I
    :sswitch_9
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 384
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_9:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 383
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 387
    .end local v9    # "i":I
    :sswitch_a
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 388
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_10:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 387
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 391
    .end local v9    # "i":I
    :sswitch_b
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 392
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_11:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 391
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 395
    .end local v9    # "i":I
    :sswitch_c
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_e
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 396
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_12:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 395
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 399
    .end local v9    # "i":I
    :sswitch_d
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 400
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_13:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 403
    .end local v9    # "i":I
    :sswitch_e
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_10
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 404
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_14:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 403
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 407
    .end local v9    # "i":I
    :sswitch_f
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_11
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 408
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_15:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 407
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 411
    .end local v9    # "i":I
    :sswitch_10
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_12
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 412
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_16:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 411
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 415
    .end local v9    # "i":I
    :sswitch_11
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_13
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 416
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_17:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 415
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 419
    .end local v9    # "i":I
    :sswitch_12
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_14
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 420
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_18:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 419
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 423
    .end local v9    # "i":I
    :sswitch_13
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_15
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 424
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_19:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 427
    .end local v9    # "i":I
    :sswitch_14
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_16
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 428
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_20:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 427
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 431
    .end local v9    # "i":I
    :sswitch_15
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_17
    add-int/lit8 v13, v11, -0x1

    if-ge v9, v13, :cond_3

    .line 432
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sget-object v15, Lcom/zf/dsmfj/Constant;->KEY_21:[I

    rem-int/lit8 v16, v9, 0xc

    aget v15, v15, v16

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 445
    .end local v9    # "i":I
    .restart local v3    # "crcl":C
    .restart local v4    # "crc":J
    .restart local v6    # "crcs":Ljava/lang/String;
    .restart local v10    # "j":I
    :cond_4
    :try_start_1
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 446
    .local v2, "c":C
    add-int/lit8 v13, v2, -0x30

    int-to-char v2, v13

    .line 447
    add-int/lit8 v13, v10, 0x1

    mul-int/2addr v13, v2

    int-to-long v14, v13

    add-long/2addr v4, v14

    .line 444
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 451
    .end local v2    # "c":C
    .end local v3    # "crcl":C
    .end local v4    # "crc":J
    .end local v6    # "crcs":Ljava/lang/String;
    .end local v10    # "j":I
    :catch_0
    move-exception v7

    .line 452
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    const-string v12, ""

    goto/16 :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x172 -> :sswitch_f
        0x18b -> :sswitch_5
        0x1c7 -> :sswitch_0
        0x1cc -> :sswitch_2
        0x214 -> :sswitch_11
        0x258 -> :sswitch_3
        0x25e -> :sswitch_1
        0x26c -> :sswitch_14
        0x27f -> :sswitch_10
        0x2a2 -> :sswitch_8
        0x2cf -> :sswitch_d
        0x2d4 -> :sswitch_9
        0x306 -> :sswitch_c
        0x32d -> :sswitch_4
        0x36f -> :sswitch_13
        0x380 -> :sswitch_6
        0x39d -> :sswitch_7
        0x3c1 -> :sswitch_15
        0x42a -> :sswitch_e
        0x437 -> :sswitch_12
        0x4d3 -> :sswitch_a
        0x4e3 -> :sswitch_b
    .end sparse-switch
.end method

.method private Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v8, ""

    .line 332
    :goto_0
    return-object v8

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 206
    .local v5, "l":I
    const-wide/16 v2, 0x0

    .line 208
    .local v2, "crc":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "scrc":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    int-to-char v0, v10

    .line 216
    .local v0, "c":C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 219
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    .line 221
    .local v6, "r":D
    const-string v8, ""

    .line 222
    .local v8, "s":Ljava/lang/String;
    const-wide v10, 0x3fa745d1745d174cL    # 0.0454545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_3

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v5, :cond_2

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1c7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    goto :goto_0

    .line 209
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v6    # "r":D
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "scrc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .restart local v0    # "c":C
    add-int/lit8 v10, v0, -0x30

    int-to-char v0, v10

    .line 211
    add-int/lit8 v10, v4, 0x1

    mul-int/2addr v10, v0

    int-to-long v10, v10

    add-long/2addr v2, v10

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .restart local v1    # "i":I
    .restart local v6    # "r":D
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "scrc":Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_0:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    .end local v1    # "i":I
    :cond_3
    const-wide v10, 0x3fb745d1745d1745L    # 0.0909090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_5

    .line 228
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v5, :cond_4

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x25e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    goto/16 :goto_0

    .line 229
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_1:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 232
    .end local v1    # "i":I
    :cond_5
    const-wide v10, 0x3fc1745d1745d167L    # 0.136363636363636

    cmpg-double v10, v6, v10

    if-gez v10, :cond_7

    .line 233
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-lt v1, v5, :cond_6

    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1cc

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    goto/16 :goto_0

    .line 234
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_2:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 237
    .end local v1    # "i":I
    :cond_7
    const-wide v10, 0x3fc745d1745d174cL    # 0.181818181818182

    cmpg-double v10, v6, v10

    if-gez v10, :cond_9

    .line 238
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-lt v1, v5, :cond_8

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x258

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    goto/16 :goto_0

    .line 239
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_3:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 242
    .end local v1    # "i":I
    :cond_9
    const-wide v10, 0x3fcd1745d1745d0dL    # 0.227272727272727

    cmpg-double v10, v6, v10

    if-gez v10, :cond_b

    .line 243
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-lt v1, v5, :cond_a

    .line 245
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x32d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 246
    goto/16 :goto_0

    .line 244
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_4:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 247
    .end local v1    # "i":I
    :cond_b
    const-wide v10, 0x3fd1745d1745d179L    # 0.272727272727273

    cmpg-double v10, v6, v10

    if-gez v10, :cond_d

    .line 248
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-lt v1, v5, :cond_c

    .line 250
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x18b

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 251
    goto/16 :goto_0

    .line 249
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_5:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 252
    .end local v1    # "i":I
    :cond_d
    const-wide v10, 0x3fd45d1745d1745aL    # 0.318181818181818

    cmpg-double v10, v6, v10

    if-gez v10, :cond_f

    .line 253
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-lt v1, v5, :cond_e

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x380

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    goto/16 :goto_0

    .line 254
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_6:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 257
    .end local v1    # "i":I
    :cond_f
    const-wide v10, 0x3fd745d1745d174cL    # 0.363636363636364

    cmpg-double v10, v6, v10

    if-gez v10, :cond_11

    .line 258
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-lt v1, v5, :cond_10

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x39d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 261
    goto/16 :goto_0

    .line 259
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_7:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 262
    .end local v1    # "i":I
    :cond_11
    const-wide v10, 0x3fda2e8ba2e8ba2dL    # 0.409090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_13

    .line 263
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    if-lt v1, v5, :cond_12

    .line 265
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2a2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 266
    goto/16 :goto_0

    .line 264
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_8:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 267
    .end local v1    # "i":I
    :cond_13
    const-wide v10, 0x3fdd1745d1745d1fL    # 0.454545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_15

    .line 268
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    if-lt v1, v5, :cond_14

    .line 270
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2d4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    goto/16 :goto_0

    .line 269
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_9:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 272
    .end local v1    # "i":I
    :cond_15
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v6, v10

    if-gez v10, :cond_17

    .line 273
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    if-lt v1, v5, :cond_16

    .line 275
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x4d3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    goto/16 :goto_0

    .line 274
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_10:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 277
    .end local v1    # "i":I
    :cond_17
    const-wide v10, 0x3fe1745d1745d170L    # 0.545454545454545

    cmpg-double v10, v6, v10

    if-gez v10, :cond_19

    .line 278
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    if-lt v1, v5, :cond_18

    .line 280
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x4e3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 281
    goto/16 :goto_0

    .line 279
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_11:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 282
    .end local v1    # "i":I
    :cond_19
    const-wide v10, 0x3fe2e8ba2e8ba2eaL    # 0.590909090909091

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1b

    .line 283
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e
    if-lt v1, v5, :cond_1a

    .line 285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x306

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 286
    goto/16 :goto_0

    .line 284
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_12:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 287
    .end local v1    # "i":I
    :cond_1b
    const-wide v10, 0x3fe45d1745d1745aL    # 0.636363636363636

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1d

    .line 288
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    if-lt v1, v5, :cond_1c

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2cf

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 291
    goto/16 :goto_0

    .line 289
    :cond_1c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_13:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 292
    .end local v1    # "i":I
    :cond_1d
    const-wide v10, 0x3fe5d1745d1745d3L    # 0.681818181818182

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1f

    .line 293
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    if-lt v1, v5, :cond_1e

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x42a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    goto/16 :goto_0

    .line 294
    :cond_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_14:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 297
    .end local v1    # "i":I
    :cond_1f
    const-wide v10, 0x3fe745d1745d1743L    # 0.727272727272727

    cmpg-double v10, v6, v10

    if-gez v10, :cond_21

    .line 298
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    if-lt v1, v5, :cond_20

    .line 300
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x172

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    goto/16 :goto_0

    .line 299
    :cond_20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_15:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 302
    .end local v1    # "i":I
    :cond_21
    const-wide v10, 0x3fe8ba2e8ba2e8bdL    # 0.772727272727273

    cmpg-double v10, v6, v10

    if-gez v10, :cond_23

    .line 303
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12
    if-lt v1, v5, :cond_22

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x27f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 306
    goto/16 :goto_0

    .line 304
    :cond_22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_16:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 307
    .end local v1    # "i":I
    :cond_23
    const-wide v10, 0x3fea2e8ba2e8ba2dL    # 0.818181818181818

    cmpg-double v10, v6, v10

    if-gez v10, :cond_25

    .line 308
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_13
    if-lt v1, v5, :cond_24

    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x214

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 311
    goto/16 :goto_0

    .line 309
    :cond_24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_17:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 312
    .end local v1    # "i":I
    :cond_25
    const-wide v10, 0x3feba2e8ba2e8ba6L    # 0.863636363636364

    cmpg-double v10, v6, v10

    if-gez v10, :cond_27

    .line 313
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    if-lt v1, v5, :cond_26

    .line 315
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x437

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 316
    goto/16 :goto_0

    .line 314
    :cond_26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_18:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 317
    .end local v1    # "i":I
    :cond_27
    const-wide v10, 0x3fed1745d1745d16L    # 0.909090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_29

    .line 318
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15
    if-lt v1, v5, :cond_28

    .line 320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x36f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 321
    goto/16 :goto_0

    .line 319
    :cond_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_19:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 322
    .end local v1    # "i":I
    :cond_29
    const-wide v10, 0x3fee8ba2e8ba2e90L    # 0.954545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2b

    .line 323
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_16
    if-lt v1, v5, :cond_2a

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x26c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    goto/16 :goto_0

    .line 324
    :cond_2a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_20:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 328
    .end local v1    # "i":I
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    if-lt v1, v5, :cond_2c

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x3c1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 329
    :cond_2c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/zf/dsmfj/Constant;->KEY_21:[I

    rem-int/lit8 v13, v1, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method private ReadShareGift()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data8"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private SetShareGift(Z)V
    .locals 4
    .param p1, "hasgift"    # Z

    .prologue
    .line 106
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data8"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 111
    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const-string v0, "wxc79e0b0d12c90ae1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 31
    iget-object v0, p0, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 40
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 41
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 11
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    iget v6, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v6, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->finish()V

    .line 94
    return-void

    .line 48
    :pswitch_1
    invoke-direct {p0}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->ReadShareGift()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadShareGiftShouldGive()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->ChangeVoucher(I)Z

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u70ab\u8000\u6210\u529f\uff0c\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadShareGiftShouldGive()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e07"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 51
    .local v5, "t":Landroid/widget/Toast;
    invoke-virtual {v5, v10, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 52
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 59
    :goto_1
    invoke-direct {p0, v8}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->SetShareGift(Z)V

    .line 61
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadNormalShareGiftLeft()I

    move-result v3

    .line 62
    .local v3, "left":I
    if-lez v3, :cond_0

    .line 63
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadNormalShareGift()I

    move-result v1

    .line 64
    .local v1, "gift":I
    invoke-direct {p0, v1}, Lcom/zf/dsmfj/wxapi/WXEntryActivity;->ChangeVoucher(I)Z

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5df2\u5f97\u5230\u989d\u5916\u4e70\u623f\u4ee3\u91d1\u5238\u5956\u52b1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v7, v1, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e07"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v10, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 67
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->SaveNormalShareGiftLeft(Ljava/lang/String;)V

    .line 71
    .end local v1    # "gift":I
    :cond_0
    const-string v6, "buddy"

    const-string v7, "\u70ab\u8000\u6210\u529f"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v6, "share"

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "share":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "ishare":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    const-string v6, "share"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    .end local v2    # "ishare":I
    .end local v3    # "left":I
    .end local v4    # "share":Ljava/lang/String;
    .end local v5    # "t":Landroid/widget/Toast;
    :cond_1
    const-string v6, "\u70ab\u8000\u6210\u529f"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 56
    .restart local v5    # "t":Landroid/widget/Toast;
    invoke-virtual {v5, v10, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 57
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 77
    .restart local v2    # "ishare":I
    .restart local v3    # "left":I
    .restart local v4    # "share":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ishare":I
    .end local v3    # "left":I
    .end local v4    # "share":Ljava/lang/String;
    .end local v5    # "t":Landroid/widget/Toast;
    :pswitch_2
    const-string v6, "buddy"

    const-string v7, "\u5206\u4eab\u53d6\u6d88"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :pswitch_3
    const-string v6, "buddy"

    const-string v7, "\u5206\u4eab\u62d2\u7edd"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

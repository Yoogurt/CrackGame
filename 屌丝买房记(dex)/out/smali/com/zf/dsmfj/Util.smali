.class public Lcom/zf/dsmfj/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000

.field private static final TAG:Ljava/lang/String; = "buddy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeVoucher(I)Z
    .locals 22
    .param p0, "change"    # I

    .prologue
    .line 809
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v8, "fpath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/data1"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v7, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 812
    .local v9, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 813
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 814
    .local v11, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 815
    .local v4, "bw":Ljava/io/BufferedWriter;
    const-string v16, ""

    .line 817
    .local v16, "voucher":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 818
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 819
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 820
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 821
    :cond_1
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    .end local v9    # "fr":Ljava/io/FileReader;
    .local v10, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 823
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v16

    .line 828
    if-eqz v3, :cond_2

    .line 830
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 836
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 838
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 846
    :cond_3
    :goto_1
    if-nez v16, :cond_4

    .line 847
    const-string v16, ""

    .line 848
    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 849
    .local v14, "l":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-gt v14, v0, :cond_b

    .line 850
    const-string v17, "0"

    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 854
    :goto_2
    :try_start_5
    const-string v15, ""

    .line 855
    .local v15, "r":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    const/16 v17, 0x5

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 857
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int v18, v18, p0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v16

    .line 864
    :try_start_6
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 865
    .end local v11    # "fw":Ljava/io/FileWriter;
    .local v12, "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 866
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 872
    if-eqz v5, :cond_5

    .line 874
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 880
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 882
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 867
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

    .line 870
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v13    # "i":I
    .end local v14    # "l":I
    .end local v15    # "r":Ljava/lang/String;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :goto_6
    return v17

    .line 824
    :catch_0
    move-exception v6

    .line 825
    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 828
    if-eqz v2, :cond_7

    .line 830
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 836
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    if-eqz v9, :cond_8

    .line 838
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 826
    :cond_8
    :goto_9
    const/16 v17, 0x0

    goto :goto_6

    .line 831
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 833
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 839
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 841
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 827
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 828
    :goto_a
    if-eqz v2, :cond_9

    .line 830
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 836
    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    .line 838
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 844
    :cond_a
    :goto_c
    throw v17

    .line 831
    :catch_3
    move-exception v6

    .line 833
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 839
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 841
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 831
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    .line 833
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 839
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 841
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 852
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "l":I
    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 856
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

    .line 855
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 859
    .end local v13    # "i":I
    .end local v15    # "r":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 860
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 861
    const/16 v17, 0x0

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 875
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

    .line 877
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 883
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 885
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 868
    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catch_a
    move-exception v6

    .line 869
    .local v6, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 872
    if-eqz v4, :cond_d

    .line 874
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 880
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_e
    if-eqz v11, :cond_e

    .line 882
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 870
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

    .line 875
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v6

    .line 877
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 883
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 885
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 871
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 872
    :goto_10
    if-eqz v4, :cond_f

    .line 874
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 880
    :cond_f
    :goto_11
    if-eqz v11, :cond_10

    .line 882
    :try_start_15
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 888
    :cond_10
    :goto_12
    throw v17

    .line 875
    :catch_d
    move-exception v6

    .line 877
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 883
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 885
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 871
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

    .line 868
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

    .line 827
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

    .line 824
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

.method public static Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1068
    if-nez p0, :cond_1

    .line 1069
    const-string v10, ""

    .line 1188
    :cond_0
    :goto_0
    return-object v10

    .line 1070
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1071
    .local v9, "l":I
    const/4 v11, 0x3

    if-ge v9, v11, :cond_2

    .line 1072
    const-string v10, ""

    goto :goto_0

    .line 1073
    :cond_2
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1075
    .local v6, "flag":C
    const-string v10, ""

    .line 1078
    .local v10, "s":Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 1170
    :cond_3
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1171
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1172
    .local v1, "crcl":C
    sub-int v11, v9, v1

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1173
    .local v4, "crcs":Ljava/lang/String;
    const/4 v11, 0x0

    sub-int v12, v9, v1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1174
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1176
    const-wide/16 v2, 0x0

    .line 1177
    .local v2, "crc":J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, v9, :cond_4

    .line 1182
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v2, v12

    if-eqz v11, :cond_0

    .line 1183
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1080
    .end local v1    # "crcl":C
    .end local v2    # "crc":J
    .end local v4    # "crcs":Ljava/lang/String;
    .end local v8    # "j":I
    :sswitch_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1081
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_0:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1080
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1084
    .end local v7    # "i":I
    :sswitch_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1085
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_1:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1084
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1088
    .end local v7    # "i":I
    :sswitch_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1089
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_2:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1088
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1092
    .end local v7    # "i":I
    :sswitch_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1093
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_3:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1092
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1096
    .end local v7    # "i":I
    :sswitch_4
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1097
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_4:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1096
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1100
    .end local v7    # "i":I
    :sswitch_5
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_5:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1100
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1104
    .end local v7    # "i":I
    :sswitch_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1105
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_6:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1104
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1108
    .end local v7    # "i":I
    :sswitch_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_7:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1108
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1112
    .end local v7    # "i":I
    :sswitch_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1113
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_8:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1112
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1116
    .end local v7    # "i":I
    :sswitch_9
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_b
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_9:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1116
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 1120
    .end local v7    # "i":I
    :sswitch_a
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_c
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_10:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1120
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 1124
    .end local v7    # "i":I
    :sswitch_b
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_d
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1125
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_11:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1124
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 1128
    .end local v7    # "i":I
    :sswitch_c
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_e
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_12:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1128
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1132
    .end local v7    # "i":I
    :sswitch_d
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_f
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_13:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1132
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 1136
    .end local v7    # "i":I
    :sswitch_e
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_10
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_14:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1136
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 1140
    .end local v7    # "i":I
    :sswitch_f
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_11
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_15:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1140
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 1144
    .end local v7    # "i":I
    :sswitch_10
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_12
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1145
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_16:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1144
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 1148
    .end local v7    # "i":I
    :sswitch_11
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_13
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1149
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_17:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1148
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 1152
    .end local v7    # "i":I
    :sswitch_12
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_14
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1153
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_18:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1152
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 1156
    .end local v7    # "i":I
    :sswitch_13
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_15
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1157
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_19:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1156
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1160
    .end local v7    # "i":I
    :sswitch_14
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_16
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_20:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1160
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1164
    .end local v7    # "i":I
    :sswitch_15
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_17
    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_3

    .line 1165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lcom/zf/dsmfj/Constant;->KEY_21:[I

    rem-int/lit8 v14, v7, 0xc

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1164
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1178
    .end local v7    # "i":I
    .restart local v1    # "crcl":C
    .restart local v2    # "crc":J
    .restart local v4    # "crcs":Ljava/lang/String;
    .restart local v8    # "j":I
    :cond_4
    :try_start_1
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 1179
    .local v0, "c":C
    add-int/lit8 v11, v0, -0x30

    int-to-char v0, v11

    .line 1180
    add-int/lit8 v11, v8, 0x1

    mul-int/2addr v11, v0

    int-to-long v12, v11

    add-long/2addr v2, v12

    .line 1177
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1184
    .end local v0    # "c":C
    .end local v1    # "crcl":C
    .end local v2    # "crc":J
    .end local v4    # "crcs":Ljava/lang/String;
    .end local v8    # "j":I
    :catch_0
    move-exception v5

    .line 1185
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1186
    const-string v10, ""

    goto/16 :goto_0

    .line 1078
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

.method public static Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 935
    if-nez p0, :cond_0

    .line 936
    const-string v8, ""

    .line 1065
    :goto_0
    return-object v8

    .line 937
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 939
    .local v5, "l":I
    const-wide/16 v2, 0x0

    .line 941
    .local v2, "crc":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 947
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 948
    .local v9, "scrc":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    int-to-char v0, v10

    .line 949
    .local v0, "c":C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 952
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    .line 954
    .local v6, "r":D
    const-string v8, ""

    .line 955
    .local v8, "s":Ljava/lang/String;
    const-wide v10, 0x3fa745d1745d174cL    # 0.0454545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_3

    .line 956
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v5, :cond_2

    .line 958
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1c7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 959
    goto :goto_0

    .line 942
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v6    # "r":D
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "scrc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 943
    .restart local v0    # "c":C
    add-int/lit8 v10, v0, -0x30

    int-to-char v0, v10

    .line 944
    add-int/lit8 v10, v4, 0x1

    mul-int/2addr v10, v0

    int-to-long v10, v10

    add-long/2addr v2, v10

    .line 941
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 957
    .restart local v1    # "i":I
    .restart local v6    # "r":D
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "scrc":Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 960
    .end local v1    # "i":I
    :cond_3
    const-wide v10, 0x3fb745d1745d1745L    # 0.0909090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_5

    .line 961
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v5, :cond_4

    .line 963
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x25e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 964
    goto/16 :goto_0

    .line 962
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 965
    .end local v1    # "i":I
    :cond_5
    const-wide v10, 0x3fc1745d1745d167L    # 0.136363636363636

    cmpg-double v10, v6, v10

    if-gez v10, :cond_7

    .line 966
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-lt v1, v5, :cond_6

    .line 968
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1cc

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 969
    goto/16 :goto_0

    .line 967
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 970
    .end local v1    # "i":I
    :cond_7
    const-wide v10, 0x3fc745d1745d174cL    # 0.181818181818182

    cmpg-double v10, v6, v10

    if-gez v10, :cond_9

    .line 971
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-lt v1, v5, :cond_8

    .line 973
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x258

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 974
    goto/16 :goto_0

    .line 972
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 975
    .end local v1    # "i":I
    :cond_9
    const-wide v10, 0x3fcd1745d1745d0dL    # 0.227272727272727

    cmpg-double v10, v6, v10

    if-gez v10, :cond_b

    .line 976
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-lt v1, v5, :cond_a

    .line 978
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x32d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 979
    goto/16 :goto_0

    .line 977
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 980
    .end local v1    # "i":I
    :cond_b
    const-wide v10, 0x3fd1745d1745d179L    # 0.272727272727273

    cmpg-double v10, v6, v10

    if-gez v10, :cond_d

    .line 981
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-lt v1, v5, :cond_c

    .line 983
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x18b

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 984
    goto/16 :goto_0

    .line 982
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 985
    .end local v1    # "i":I
    :cond_d
    const-wide v10, 0x3fd45d1745d1745aL    # 0.318181818181818

    cmpg-double v10, v6, v10

    if-gez v10, :cond_f

    .line 986
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-lt v1, v5, :cond_e

    .line 988
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x380

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 989
    goto/16 :goto_0

    .line 987
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 986
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 990
    .end local v1    # "i":I
    :cond_f
    const-wide v10, 0x3fd745d1745d174cL    # 0.363636363636364

    cmpg-double v10, v6, v10

    if-gez v10, :cond_11

    .line 991
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-lt v1, v5, :cond_10

    .line 993
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x39d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 994
    goto/16 :goto_0

    .line 992
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 995
    .end local v1    # "i":I
    :cond_11
    const-wide v10, 0x3fda2e8ba2e8ba2dL    # 0.409090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_13

    .line 996
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    if-lt v1, v5, :cond_12

    .line 998
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2a2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 999
    goto/16 :goto_0

    .line 997
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1000
    .end local v1    # "i":I
    :cond_13
    const-wide v10, 0x3fdd1745d1745d1fL    # 0.454545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_15

    .line 1001
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    if-lt v1, v5, :cond_14

    .line 1003
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2d4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1004
    goto/16 :goto_0

    .line 1002
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1005
    .end local v1    # "i":I
    :cond_15
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v6, v10

    if-gez v10, :cond_17

    .line 1006
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    if-lt v1, v5, :cond_16

    .line 1008
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x4d3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1009
    goto/16 :goto_0

    .line 1007
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1010
    .end local v1    # "i":I
    :cond_17
    const-wide v10, 0x3fe1745d1745d170L    # 0.545454545454545

    cmpg-double v10, v6, v10

    if-gez v10, :cond_19

    .line 1011
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    if-lt v1, v5, :cond_18

    .line 1013
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x4e3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1014
    goto/16 :goto_0

    .line 1012
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1015
    .end local v1    # "i":I
    :cond_19
    const-wide v10, 0x3fe2e8ba2e8ba2eaL    # 0.590909090909091

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1b

    .line 1016
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e
    if-lt v1, v5, :cond_1a

    .line 1018
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x306

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1019
    goto/16 :goto_0

    .line 1017
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1020
    .end local v1    # "i":I
    :cond_1b
    const-wide v10, 0x3fe45d1745d1745aL    # 0.636363636363636

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1d

    .line 1021
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    if-lt v1, v5, :cond_1c

    .line 1023
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2cf

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1024
    goto/16 :goto_0

    .line 1022
    :cond_1c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1025
    .end local v1    # "i":I
    :cond_1d
    const-wide v10, 0x3fe5d1745d1745d3L    # 0.681818181818182

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1f

    .line 1026
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    if-lt v1, v5, :cond_1e

    .line 1028
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x42a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1029
    goto/16 :goto_0

    .line 1027
    :cond_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1030
    .end local v1    # "i":I
    :cond_1f
    const-wide v10, 0x3fe745d1745d1743L    # 0.727272727272727

    cmpg-double v10, v6, v10

    if-gez v10, :cond_21

    .line 1031
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    if-lt v1, v5, :cond_20

    .line 1033
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x172

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1034
    goto/16 :goto_0

    .line 1032
    :cond_20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1035
    .end local v1    # "i":I
    :cond_21
    const-wide v10, 0x3fe8ba2e8ba2e8bdL    # 0.772727272727273

    cmpg-double v10, v6, v10

    if-gez v10, :cond_23

    .line 1036
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12
    if-lt v1, v5, :cond_22

    .line 1038
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x27f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1039
    goto/16 :goto_0

    .line 1037
    :cond_22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1040
    .end local v1    # "i":I
    :cond_23
    const-wide v10, 0x3fea2e8ba2e8ba2dL    # 0.818181818181818

    cmpg-double v10, v6, v10

    if-gez v10, :cond_25

    .line 1041
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_13
    if-lt v1, v5, :cond_24

    .line 1043
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x214

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1044
    goto/16 :goto_0

    .line 1042
    :cond_24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1045
    .end local v1    # "i":I
    :cond_25
    const-wide v10, 0x3feba2e8ba2e8ba6L    # 0.863636363636364

    cmpg-double v10, v6, v10

    if-gez v10, :cond_27

    .line 1046
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    if-lt v1, v5, :cond_26

    .line 1048
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x437

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1049
    goto/16 :goto_0

    .line 1047
    :cond_26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1050
    .end local v1    # "i":I
    :cond_27
    const-wide v10, 0x3fed1745d1745d16L    # 0.909090909090909

    cmpg-double v10, v6, v10

    if-gez v10, :cond_29

    .line 1051
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15
    if-lt v1, v5, :cond_28

    .line 1053
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x36f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1054
    goto/16 :goto_0

    .line 1052
    :cond_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1051
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1055
    .end local v1    # "i":I
    :cond_29
    const-wide v10, 0x3fee8ba2e8ba2e90L    # 0.954545454545455

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2b

    .line 1056
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_16
    if-lt v1, v5, :cond_2a

    .line 1058
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x26c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1059
    goto/16 :goto_0

    .line 1057
    :cond_2a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1061
    .end local v1    # "i":I
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    if-lt v1, v5, :cond_2c

    .line 1063
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

    .line 1062
    :cond_2c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public static ReadCrazyEnable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data21"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static ReadCrazyOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 279
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data20"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v2

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static ReadHintEnable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 433
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data17"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 437
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static ReadJudgeGiftShouldGive()I
    .locals 11

    .prologue
    .line 458
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data17"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 461
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 462
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v7, 0xa

    .line 463
    .local v7, "gift":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v7

    .line 493
    .end local v7    # "gift":I
    .local v8, "gift":I
    :goto_0
    return v8

    .line 465
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v7

    .line 466
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 468
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 476
    if-eqz v1, :cond_2

    .line 478
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 484
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 486
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v8, v7

    .line 493
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 472
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :catch_0
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 474
    const/16 v7, 0xa

    .line 476
    if-eqz v0, :cond_4

    .line 478
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 484
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 486
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 487
    :catch_1
    move-exception v2

    .line 489
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 475
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 476
    :goto_5
    if-eqz v0, :cond_5

    .line 478
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 484
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 486
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 492
    :cond_6
    :goto_7
    throw v10

    .line 479
    :catch_3
    move-exception v2

    .line 481
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 489
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 479
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v9    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 481
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 489
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

    .line 475
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 472
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

.method public static ReadMoreGameURL()Ljava/lang/String;
    .locals 10

    .prologue
    .line 63
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data24"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 66
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 67
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 68
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v8, v7

    .line 96
    .end local v7    # "url":Ljava/lang/String;
    .local v8, "url":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 70
    .end local v8    # "url":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v8, v7

    .line 71
    .end local v7    # "url":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v8    # "url":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 79
    if-eqz v1, :cond_2

    .line 81
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 87
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 89
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move-object v8, v7

    .line 96
    .end local v7    # "url":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v8    # "url":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    if-eqz v0, :cond_4

    .line 81
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 89
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 90
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 79
    :goto_5
    if-eqz v0, :cond_5

    .line 81
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 87
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 89
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 95
    :cond_6
    :goto_7
    throw v9

    .line 82
    :catch_3
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 82
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 92
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

    .line 78
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 76
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

.method public static ReadNormalShareGift()I
    .locals 11

    .prologue
    .line 289
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data19"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 292
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 293
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 294
    .local v7, "gift":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v7

    .line 324
    .end local v7    # "gift":I
    .local v8, "gift":I
    :goto_0
    return v8

    .line 296
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v7

    .line 297
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 299
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 307
    if-eqz v1, :cond_2

    .line 309
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 315
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 317
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v8, v7

    .line 324
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 303
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 305
    const/4 v7, 0x0

    .line 307
    if-eqz v0, :cond_4

    .line 309
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 317
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 318
    :catch_1
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 312
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 306
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 307
    :goto_5
    if-eqz v0, :cond_5

    .line 309
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 315
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 317
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 323
    :cond_6
    :goto_7
    throw v10

    .line 310
    :catch_3
    move-exception v2

    .line 312
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 320
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 310
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v9    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 312
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 320
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

    .line 306
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 303
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

.method public static ReadNormalShareGiftLeft()I
    .locals 11

    .prologue
    .line 361
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data18"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 364
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 365
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 366
    .local v7, "nbr":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v7

    .line 396
    .end local v7    # "nbr":I
    .local v8, "nbr":I
    :goto_0
    return v8

    .line 368
    .end local v8    # "nbr":I
    .restart local v7    # "nbr":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v7

    .line 369
    .end local v7    # "nbr":I
    .restart local v8    # "nbr":I
    goto :goto_0

    .line 371
    .end local v8    # "nbr":I
    .restart local v7    # "nbr":I
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 373
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 379
    if-eqz v1, :cond_2

    .line 381
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 387
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 389
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v8, v7

    .line 396
    .end local v7    # "nbr":I
    .restart local v8    # "nbr":I
    goto :goto_0

    .line 375
    .end local v8    # "nbr":I
    .restart local v7    # "nbr":I
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 377
    const/4 v7, 0x0

    .line 379
    if-eqz v0, :cond_4

    .line 381
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 387
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 389
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 390
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 378
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 379
    :goto_5
    if-eqz v0, :cond_5

    .line 381
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 387
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 389
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 395
    :cond_6
    :goto_7
    throw v10

    .line 382
    :catch_3
    move-exception v2

    .line 384
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 390
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 392
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 382
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v9    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 384
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 390
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 392
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

    .line 378
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 375
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

.method public static ReadShareGiftShouldGive()I
    .locals 11

    .prologue
    .line 530
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data16"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 533
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 534
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v7, 0xa

    .line 535
    .local v7, "gift":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v7

    .line 565
    .end local v7    # "gift":I
    .local v8, "gift":I
    :goto_0
    return v8

    .line 537
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v7

    .line 538
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 540
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 542
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 548
    if-eqz v1, :cond_2

    .line 550
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 556
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 558
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v8, v7

    .line 565
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 544
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 546
    const/16 v7, 0xa

    .line 548
    if-eqz v0, :cond_4

    .line 550
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 556
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 558
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 559
    :catch_1
    move-exception v2

    .line 561
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 551
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 553
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 547
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 548
    :goto_5
    if-eqz v0, :cond_5

    .line 550
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 556
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 558
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 564
    :cond_6
    :goto_7
    throw v10

    .line 551
    :catch_3
    move-exception v2

    .line 553
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 559
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 561
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 551
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v9    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 553
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 559
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 561
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

    .line 547
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 544
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

.method public static ReadShowAd()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 733
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v4, "fpath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v7

    .line 736
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data7"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 739
    const/4 v7, 0x1

    .line 740
    .local v7, "needtoshow":Z
    const/4 v5, 0x0

    .line 741
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 743
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 745
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 747
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 748
    :cond_2
    const-string v9, "nomoreadplease"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    if-eqz v9, :cond_3

    .line 749
    const/4 v7, 0x0

    .line 753
    :cond_3
    if-eqz v1, :cond_4

    .line 755
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 761
    :cond_4
    :goto_1
    if-eqz v6, :cond_8

    .line 763
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 764
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 750
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 751
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 753
    if-eqz v0, :cond_5

    .line 755
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 761
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    .line 763
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 764
    :catch_1
    move-exception v2

    .line 766
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 756
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 758
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 752
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 753
    :goto_4
    if-eqz v0, :cond_6

    .line 755
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 761
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 763
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 769
    :cond_7
    :goto_6
    throw v9

    .line 756
    :catch_3
    move-exception v2

    .line 758
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 764
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 766
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 756
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 758
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 764
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 766
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 752
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 750
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_2

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
    goto :goto_2
.end method

.method public static ReadUsage(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "lable"    # Ljava/lang/String;

    .prologue
    .line 602
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data15"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 605
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 606
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 607
    .local v8, "linetitle":Ljava/lang/String;
    const-string v7, ""

    .line 608
    .local v7, "linecontent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 609
    const-string v9, ""

    .line 643
    :goto_0
    return-object v9

    .line 610
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 611
    const-string v9, ""

    goto :goto_0

    .line 613
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 617
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 618
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    if-eqz v9, :cond_5

    .line 626
    :goto_1
    if-eqz v1, :cond_3

    .line 628
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 634
    :cond_3
    :goto_2
    if-eqz v6, :cond_9

    .line 636
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_4
    :goto_3
    move-object v9, v7

    .line 643
    goto :goto_0

    .line 620
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_5
    :try_start_5
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 623
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 626
    if-eqz v0, :cond_6

    .line 628
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 634
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    if-eqz v5, :cond_4

    .line 636
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 637
    :catch_1
    move-exception v2

    .line 639
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 629
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 631
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 625
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 626
    :goto_6
    if-eqz v0, :cond_7

    .line 628
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 634
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 636
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 642
    :cond_8
    :goto_8
    throw v9

    .line 629
    :catch_3
    move-exception v2

    .line 631
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 637
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 639
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 629
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 631
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 637
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 639
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 625
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 623
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

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
    goto :goto_4
.end method

.method public static ReadVideoGift()I
    .locals 11

    .prologue
    .line 169
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data22"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 172
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 173
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 174
    .local v7, "gift":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v7

    .line 204
    .end local v7    # "gift":I
    .local v8, "gift":I
    :goto_0
    return v8

    .line 176
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v7

    .line 177
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 179
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 187
    if-eqz v1, :cond_2

    .line 189
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 195
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 197
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v8, v7

    .line 204
    .end local v7    # "gift":I
    .restart local v8    # "gift":I
    goto :goto_0

    .line 183
    .end local v8    # "gift":I
    .restart local v7    # "gift":I
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    const/4 v7, 0x0

    .line 187
    if-eqz v0, :cond_4

    .line 189
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 197
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 198
    :catch_1
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 187
    :goto_5
    if-eqz v0, :cond_5

    .line 189
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 195
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 197
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 203
    :cond_6
    :goto_7
    throw v10

    .line 190
    :catch_3
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 198
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 190
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v9    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 200
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

    .line 186
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 183
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

.method public static ReadWXOrderNo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 133
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data23"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 136
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 137
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 138
    .local v7, "ordreNo":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v8, v7

    .line 166
    .end local v7    # "ordreNo":Ljava/lang/String;
    .local v8, "ordreNo":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 140
    .end local v8    # "ordreNo":Ljava/lang/String;
    .restart local v7    # "ordreNo":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v8, v7

    .line 141
    .end local v7    # "ordreNo":Ljava/lang/String;
    .restart local v8    # "ordreNo":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v8    # "ordreNo":Ljava/lang/String;
    .restart local v7    # "ordreNo":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 149
    if-eqz v1, :cond_2

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 157
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 159
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move-object v8, v7

    .line 166
    .end local v7    # "ordreNo":Ljava/lang/String;
    .restart local v8    # "ordreNo":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v8    # "ordreNo":Ljava/lang/String;
    .restart local v7    # "ordreNo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    if-eqz v0, :cond_4

    .line 151
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 159
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 160
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 149
    :goto_5
    if-eqz v0, :cond_5

    .line 151
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 157
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 159
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 165
    :cond_6
    :goto_7
    throw v9

    .line 152
    :catch_3
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 152
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 162
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

    .line 148
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 146
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

.method public static RemoveAd()V
    .locals 8

    .prologue
    .line 774
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data7"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 776
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 777
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 778
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 779
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 781
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 782
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 783
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v7, "nomoreadplease"

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 790
    if-eqz v1, :cond_2

    .line 792
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 798
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 800
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 807
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 787
    :catch_0
    move-exception v2

    .line 788
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 790
    if-eqz v0, :cond_4

    .line 792
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 798
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 800
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 801
    :catch_1
    move-exception v2

    .line 803
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 795
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 789
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 790
    :goto_4
    if-eqz v0, :cond_5

    .line 792
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 798
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 800
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 806
    :cond_6
    :goto_6
    throw v7

    .line 793
    :catch_3
    move-exception v2

    .line 795
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 801
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 803
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 793
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 795
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 801
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 803
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 789
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 787
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveJudgeGiftShouldGive(Ljava/lang/String;)V
    .locals 8
    .param p0, "gift"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data17"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 499
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 500
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 501
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 503
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 504
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 505
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 511
    if-eqz v1, :cond_2

    .line 513
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 519
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 521
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 528
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    if-eqz v0, :cond_4

    .line 513
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 521
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 522
    :catch_1
    move-exception v2

    .line 524
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 516
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 510
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 511
    :goto_4
    if-eqz v0, :cond_5

    .line 513
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 519
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 521
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 527
    :cond_6
    :goto_6
    throw v7

    .line 514
    :catch_3
    move-exception v2

    .line 516
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 522
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 514
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 516
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 510
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 508
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveMoreGameURL(Ljava/lang/String;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data24"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 32
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 33
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 34
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 38
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    if-eqz v1, :cond_2

    .line 46
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 52
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 54
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 61
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 44
    if-eqz v0, :cond_4

    .line 46
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 54
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 43
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 44
    :goto_4
    if-eqz v0, :cond_5

    .line 46
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 52
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 54
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 60
    :cond_6
    :goto_6
    throw v7

    .line 47
    :catch_3
    move-exception v2

    .line 49
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 57
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 47
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 49
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 57
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 43
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 41
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveNormalShareGift(Ljava/lang/String;)V
    .locals 8
    .param p0, "gift"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data19"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 330
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 331
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 335
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 336
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 342
    if-eqz v1, :cond_2

    .line 344
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 350
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 352
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 359
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    if-eqz v0, :cond_4

    .line 344
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 352
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 353
    :catch_1
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 345
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 341
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 342
    :goto_4
    if-eqz v0, :cond_5

    .line 344
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 350
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 352
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 358
    :cond_6
    :goto_6
    throw v7

    .line 345
    :catch_3
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 345
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 341
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 339
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveNormalShareGiftLeft(Ljava/lang/String;)V
    .locals 8
    .param p0, "nbr"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data18"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 402
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 403
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 406
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 407
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 408
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 414
    if-eqz v1, :cond_2

    .line 416
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 422
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 424
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 431
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    if-eqz v0, :cond_4

    .line 416
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 424
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 425
    :catch_1
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 417
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 419
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 413
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 414
    :goto_4
    if-eqz v0, :cond_5

    .line 416
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 422
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 424
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 430
    :cond_6
    :goto_6
    throw v7

    .line 417
    :catch_3
    move-exception v2

    .line 419
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 425
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 427
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 417
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 419
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 427
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 413
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 411
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveShareGiftShouldGive(Ljava/lang/String;)V
    .locals 8
    .param p0, "gift"    # Ljava/lang/String;

    .prologue
    .line 568
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data16"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 571
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 572
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 573
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 575
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 576
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 577
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 579
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 583
    if-eqz v1, :cond_2

    .line 585
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 591
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 593
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 600
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 580
    :catch_0
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 583
    if-eqz v0, :cond_4

    .line 585
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 593
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 594
    :catch_1
    move-exception v2

    .line 596
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 586
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 588
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 583
    :goto_4
    if-eqz v0, :cond_5

    .line 585
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 591
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 593
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 599
    :cond_6
    :goto_6
    throw v7

    .line 586
    :catch_3
    move-exception v2

    .line 588
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 594
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 596
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 586
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 588
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 596
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 582
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 580
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveUsage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "lable"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v7, Ljava/io/File;

    const-string v16, "/data/data/com.zf.dsmfj/"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v7, "fpath":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v16, "/data/data/com.zf.dsmfj/data15"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v6, "f":Ljava/io/File;
    const/4 v8, 0x0

    .line 649
    .local v8, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 650
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 651
    .local v10, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 652
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/16 v16, 0x28

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    .line 653
    .local v15, "tmp":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 654
    .local v13, "line":I
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 655
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 657
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 658
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 659
    :cond_1
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    .end local v8    # "fr":Ljava/io/FileReader;
    .local v9, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 661
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v16, 0x28

    move/from16 v0, v16

    if-lt v12, v0, :cond_8

    .line 666
    :cond_2
    const/4 v14, 0x0

    .line 667
    .local v14, "linetitle":Ljava/lang/String;
    const/4 v13, 0x0

    .line 668
    const/4 v12, 0x0

    :goto_1
    const/16 v16, 0x14

    move/from16 v0, v16

    if-lt v12, v0, :cond_9

    .line 681
    :cond_3
    if-eqz v2, :cond_4

    .line 683
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 689
    :cond_4
    :goto_2
    if-eqz v9, :cond_d

    .line 691
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .line 698
    .end local v9    # "fr":Ljava/io/FileReader;
    .end local v12    # "i":I
    .end local v14    # "linetitle":Ljava/lang/String;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :cond_5
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    .line 699
    add-int/lit8 v16, v13, 0x1

    invoke-static/range {p1 .. p1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 701
    :try_start_4
    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 702
    .end local v10    # "fw":Ljava/io/FileWriter;
    .local v11, "fw":Ljava/io/FileWriter;
    :try_start_5
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 703
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v4, "bw":Ljava/io/BufferedWriter;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    const/16 v16, 0x14

    move/from16 v0, v16

    if-lt v12, v0, :cond_e

    .line 714
    if-eqz v4, :cond_6

    .line 716
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 722
    :cond_6
    :goto_5
    if-eqz v11, :cond_13

    .line 724
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    move-object v10, v11

    .line 731
    .end local v11    # "fw":Ljava/io/FileWriter;
    .end local v12    # "i":I
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :cond_7
    :goto_6
    return-void

    .line 662
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    .restart local v12    # "i":I
    :cond_8
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    .line 663
    aget-object v16, v15, v12

    if-eqz v16, :cond_2

    .line 661
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 669
    .restart local v14    # "linetitle":Ljava/lang/String;
    :cond_9
    mul-int/lit8 v13, v12, 0x2

    .line 670
    mul-int/lit8 v16, v12, 0x2

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 671
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 674
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v16

    if-nez v16, :cond_3

    .line 668
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 678
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .end local v12    # "i":I
    .end local v14    # "linetitle":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 679
    .local v5, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 681
    if-eqz v1, :cond_a

    .line 683
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 689
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_8
    if-eqz v8, :cond_5

    .line 691
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 692
    :catch_1
    move-exception v5

    .line 694
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 684
    .local v5, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 686
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 680
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 681
    :goto_9
    if-eqz v1, :cond_b

    .line 683
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 689
    :cond_b
    :goto_a
    if-eqz v8, :cond_c

    .line 691
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 697
    :cond_c
    :goto_b
    throw v16

    .line 684
    :catch_3
    move-exception v5

    .line 686
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 692
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 694
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 684
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    .restart local v12    # "i":I
    .restart local v14    # "linetitle":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 686
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 692
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 694
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_d
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 704
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v10    # "fw":Ljava/io/FileWriter;
    .end local v14    # "linetitle":Ljava/lang/String;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :cond_e
    mul-int/lit8 v16, v12, 0x2

    :try_start_e
    aget-object v16, v15, v16

    if-eqz v16, :cond_f

    .line 705
    mul-int/lit8 v16, v12, 0x2

    aget-object v16, v15, v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 707
    mul-int/lit8 v16, v12, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-object v16, v15, v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 703
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 711
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .end local v12    # "i":I
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v5

    .line 712
    .local v5, "e":Ljava/lang/Exception;
    :goto_c
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 714
    if-eqz v3, :cond_10

    .line 716
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 722
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_d
    if-eqz v10, :cond_7

    .line 724
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_6

    .line 725
    :catch_8
    move-exception v5

    .line 727
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 717
    .local v5, "e":Ljava/lang/Exception;
    :catch_9
    move-exception v5

    .line 719
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 713
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    .line 714
    :goto_e
    if-eqz v3, :cond_11

    .line 716
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 722
    :cond_11
    :goto_f
    if-eqz v10, :cond_12

    .line 724
    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 730
    :cond_12
    :goto_10
    throw v16

    .line 717
    :catch_a
    move-exception v5

    .line 719
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 725
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 727
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 717
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "i":I
    :catch_c
    move-exception v5

    .line 719
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 725
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 727
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_13
    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_6

    .line 713
    .end local v10    # "fw":Ljava/io/FileWriter;
    .end local v12    # "i":I
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v16

    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_e

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "i":I
    :catchall_3
    move-exception v16

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_e

    .line 711
    .end local v10    # "fw":Ljava/io/FileWriter;
    .end local v12    # "i":I
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catch_e
    move-exception v5

    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "i":I
    :catch_f
    move-exception v5

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_c

    .line 680
    .end local v8    # "fr":Ljava/io/FileReader;
    .end local v12    # "i":I
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v16

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto/16 :goto_9

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    .restart local v12    # "i":I
    :catchall_5
    move-exception v16

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto/16 :goto_9

    .line 678
    .end local v8    # "fr":Ljava/io/FileReader;
    .end local v12    # "i":I
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catch_10
    move-exception v5

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    .restart local v12    # "i":I
    :catch_11
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7
.end method

.method public static SaveVideoGift(Ljava/lang/String;)V
    .locals 8
    .param p0, "gift"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data22"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 210
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 211
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 216
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 222
    if-eqz v1, :cond_2

    .line 224
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 230
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 232
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 239
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    if-eqz v0, :cond_4

    .line 224
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 232
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 233
    :catch_1
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 227
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 222
    :goto_4
    if-eqz v0, :cond_5

    .line 224
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 230
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 232
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 238
    :cond_6
    :goto_6
    throw v7

    .line 225
    :catch_3
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 225
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 221
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 219
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SaveVoucher(Ljava/lang/String;)V
    .locals 14
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 891
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data1"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 894
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 896
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    const-string v8, ""

    .line 897
    .local v8, "r":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x5

    if-lt v7, v9, :cond_4

    .line 900
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 906
    .end local v7    # "i":I
    .end local v8    # "r":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 907
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 908
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 909
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 910
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 912
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 916
    if-eqz v1, :cond_2

    .line 918
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 924
    :cond_2
    :goto_2
    if-eqz v6, :cond_8

    .line 926
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 933
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_3
    return-void

    .line 898
    .restart local v7    # "i":I
    .restart local v8    # "r":Ljava/lang/String;
    :cond_4
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    .line 897
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 902
    .end local v7    # "i":I
    .end local v8    # "r":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 913
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 914
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 916
    if-eqz v0, :cond_5

    .line 918
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 924
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v5, :cond_3

    .line 926
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 927
    :catch_2
    move-exception v2

    .line 929
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 919
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 921
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 915
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 916
    :goto_6
    if-eqz v0, :cond_6

    .line 918
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 924
    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    .line 926
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 932
    :cond_7
    :goto_8
    throw v9

    .line 919
    :catch_4
    move-exception v2

    .line 921
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 927
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 929
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 919
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    .line 921
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 927
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 929
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 915
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_6

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_6

    .line 913
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4
.end method

.method public static SaveWXOrderNo(Ljava/lang/String;)V
    .locals 8
    .param p0, "orderNo"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data23"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 102
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 103
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 108
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-static {p0}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    if-eqz v1, :cond_2

    .line 116
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 122
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 124
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 131
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    if-eqz v0, :cond_4

    .line 116
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 124
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 125
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 114
    :goto_4
    if-eqz v0, :cond_5

    .line 116
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 122
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 124
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 130
    :cond_6
    :goto_6
    throw v7

    .line 117
    :catch_3
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 117
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 113
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 111
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static SetCrazyEnable(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 241
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data21"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 246
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetCrazyOn(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 265
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data20"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 270
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetHintEnable(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 443
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data17"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 448
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 449
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z

    .prologue
    .line 1195
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1196
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1197
    if-eqz p1, :cond_0

    .line 1198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1201
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1203
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :goto_0
    return-object v2

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "crop"    # Z

    .prologue
    .line 1292
    if-eqz p0, :cond_3

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1294
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1297
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    :try_start_0
    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1298
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1299
    .local v13, "tmp":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 1300
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1301
    const/4 v13, 0x0

    .line 1304
    :cond_0
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: round="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", crop="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 1306
    .local v4, "beY":D
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 1307
    .local v2, "beX":D
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: extract beX = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", beY = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    if-eqz p3, :cond_5

    cmpl-double v14, v4, v2

    if-lez v14, :cond_4

    move-wide v14, v2

    :goto_1
    double-to-int v14, v14

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1309
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 1310
    const/4 v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1314
    :cond_1
    :goto_2
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v14, v15

    const v15, 0x2a3000

    if-gt v14, v15, :cond_7

    .line 1318
    move/from16 v9, p1

    .line 1319
    .local v9, "newHeight":I
    move/from16 v10, p2

    .line 1320
    .local v10, "newWidth":I
    if-eqz p3, :cond_9

    .line 1321
    cmpl-double v14, v4, v2

    if-lez v14, :cond_8

    .line 1322
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 1334
    :goto_3
    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1336
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap required size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", orig="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", sample="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1338
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-nez v6, :cond_b

    .line 1339
    const-string v14, "buddy"

    const-string v15, "bitmap decode failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v6, 0x0

    .line 1366
    .end local v2    # "beX":D
    .end local v4    # "beY":D
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "newHeight":I
    .end local v10    # "newWidth":I
    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return-object v6

    .line 1292
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v2    # "beX":D
    .restart local v4    # "beY":D
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_4
    move-wide v14, v4

    .line 1308
    goto/16 :goto_1

    :cond_5
    cmpg-double v14, v4, v2

    if-gez v14, :cond_6

    move-wide v14, v2

    goto/16 :goto_1

    :cond_6
    move-wide v14, v4

    goto/16 :goto_1

    .line 1315
    :cond_7
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1362
    .end local v2    # "beX":D
    .end local v4    # "beY":D
    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 1363
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "decode bitmap failed: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v11, 0x0

    .line 1366
    const/4 v6, 0x0

    goto :goto_4

    .line 1324
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "beX":D
    .restart local v4    # "beY":D
    .restart local v9    # "newHeight":I
    .restart local v10    # "newWidth":I
    .restart local v13    # "tmp":Landroid/graphics/Bitmap;
    :cond_8
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    :try_start_1
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    .line 1326
    goto/16 :goto_3

    .line 1327
    :cond_9
    cmpg-double v14, v4, v2

    if-gez v14, :cond_a

    .line 1328
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 1329
    goto/16 :goto_3

    .line 1330
    :cond_a
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto/16 :goto_3

    .line 1343
    .restart local v6    # "bm":Landroid/graphics/Bitmap;
    :cond_b
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap decoded size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v14, 0x1

    invoke-static {v6, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1345
    .local v12, "scale":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_c

    .line 1346
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1347
    move-object v6, v12

    .line 1350
    :cond_c
    if-eqz p3, :cond_2

    .line 1351
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v14, p2

    shr-int/lit8 v14, v14, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v15, p1

    shr-int/lit8 v15, v15, 0x1

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v14, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1352
    .local v7, "cropped":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 1356
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1357
    move-object v6, v7

    .line 1358
    const-string v14, "buddy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap croped size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static getHtmlByteArray(Ljava/lang/String;)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1211
    const/4 v4, 0x0

    .line 1212
    .local v4, "htmlUrl":Ljava/net/URL;
    const/4 v7, 0x0

    .line 1214
    .local v7, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1215
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .local v5, "htmlUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1216
    .local v1, "connection":Ljava/net/URLConnection;
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 1217
    .local v6, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 1218
    .local v8, "responseCode":I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 1219
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    move-object v4, v5

    .line 1226
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v5    # "htmlUrl":Ljava/net/URL;
    .end local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v8    # "responseCode":I
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    :goto_0
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 1228
    .local v2, "data":[B
    return-object v2

    .line 1221
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 1222
    .local v3, "e":Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1223
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 1224
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1223
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_2

    .line 1221
    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_1

    .end local v4    # "htmlUrl":Ljava/net/URL;
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v8    # "responseCode":I
    :cond_0
    move-object v4, v5

    .end local v5    # "htmlUrl":Ljava/net/URL;
    .restart local v4    # "htmlUrl":Ljava/net/URL;
    goto :goto_0
.end method

.method public static inputStreamToByte(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 1232
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1234
    .local v0, "bytestream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1238
    .local v3, "imgdata":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1244
    .end local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ch":I
    .end local v3    # "imgdata":[B
    :goto_1
    return-object v3

    .line 1235
    .restart local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "ch":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1240
    .end local v0    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ch":I
    :catch_0
    move-exception v2

    .line 1241
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1244
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static readFromFile(Ljava/lang/String;II)[B
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 1247
    if-nez p0, :cond_0

    .line 1288
    :goto_0
    return-object v0

    .line 1251
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1253
    const-string v4, "buddy"

    const-string v5, "readFromFile: file not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1257
    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 1258
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p2, v4

    .line 1261
    :cond_2
    const-string v4, "buddy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile : offset = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset + len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p1, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-gez p1, :cond_3

    .line 1264
    const-string v4, "buddy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid offset:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1267
    :cond_3
    if-gtz p2, :cond_4

    .line 1268
    const-string v4, "buddy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    :cond_4
    add-int v4, p1, p2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    if-le v4, v5, :cond_5

    .line 1272
    const-string v4, "buddy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile invalid file len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1276
    :cond_5
    const/4 v0, 0x0

    .line 1278
    .local v0, "b":[B
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    .local v3, "in":Ljava/io/RandomAccessFile;
    new-array v0, p2, [B

    .line 1280
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1281
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 1282
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1284
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 1285
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "buddy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readFromFile : errMsg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

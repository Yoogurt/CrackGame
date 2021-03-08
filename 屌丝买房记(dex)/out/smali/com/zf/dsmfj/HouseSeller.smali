.class public Lcom/zf/dsmfj/HouseSeller;
.super Landroid/app/Activity;
.source "HouseSeller.java"


# instance fields
.field private cash:Ljava/lang/String;

.field private deposit:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private gamestatus:I

.field private housefirstbuygift:[Ljava/lang/String;

.field private houseimgres:[I

.field private houseimgressucc:[I

.field private houseinfo:[Ljava/lang/String;

.field private housename:[Ljava/lang/String;

.field private housenbr:I

.field private housepricec:[Ljava/lang/String;

.field private housesuccmsg:[Ljava/lang/String;

.field private instance:Lcom/zf/dsmfj/HouseSeller;

.field private listitem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private record_date:[Ljava/lang/String;

.field private record_succnbr:[Ljava/lang/String;

.field private reputation:Ljava/lang/String;

.field private reputationinfect:[Z

.field private reputationinfectset:Z

.field s_button:I

.field s_money:I

.field s_selgoods:I

.field s_success:I

.field s_success_mars:I

.field private selectimgchange:I

.field private selectimgres:[I

.field private selhouse:I

.field private soundon:Z

.field private sp:Landroid/media/SoundPool;

.field private tface:Landroid/graphics/Typeface;

.field private wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ChangeVoucher(I)Z
    .locals 22
    .param p1, "change"    # I

    .prologue
    .line 723
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    .local v8, "fpath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "/data/data/com.zf.dsmfj/data1"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v7, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 726
    .local v9, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 727
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 728
    .local v11, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 729
    .local v4, "bw":Ljava/io/BufferedWriter;
    const-string v16, ""

    .line 731
    .local v16, "voucher":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 732
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 733
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 734
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 735
    :cond_1
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    .end local v9    # "fr":Ljava/io/FileReader;
    .local v10, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 737
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v16

    .line 742
    if-eqz v3, :cond_2

    .line 744
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 750
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 752
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 760
    :cond_3
    :goto_1
    if-nez v16, :cond_4

    .line 761
    const-string v16, ""

    .line 762
    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 763
    .local v14, "l":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-gt v14, v0, :cond_b

    .line 764
    const-string v17, "0"

    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 768
    :goto_2
    :try_start_5
    const-string v15, ""

    .line 769
    .local v15, "r":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    const/16 v17, 0x5

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 771
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v16

    .line 778
    :try_start_6
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 779
    .end local v11    # "fw":Ljava/io/FileWriter;
    .local v12, "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 780
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 786
    if-eqz v5, :cond_5

    .line 788
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 794
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 796
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 781
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

    .line 784
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v13    # "i":I
    .end local v14    # "l":I
    .end local v15    # "r":Ljava/lang/String;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :goto_6
    return v17

    .line 738
    :catch_0
    move-exception v6

    .line 739
    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 742
    if-eqz v2, :cond_7

    .line 744
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 750
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    if-eqz v9, :cond_8

    .line 752
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 740
    :cond_8
    :goto_9
    const/16 v17, 0x0

    goto :goto_6

    .line 745
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 747
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 753
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 755
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 741
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 742
    :goto_a
    if-eqz v2, :cond_9

    .line 744
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 750
    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    .line 752
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 758
    :cond_a
    :goto_c
    throw v17

    .line 745
    :catch_3
    move-exception v6

    .line 747
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 753
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 755
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 745
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    .line 747
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 753
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 755
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 766
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

    .line 770
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

    .line 769
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 773
    .end local v13    # "i":I
    .end local v15    # "r":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 774
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    const/16 v17, 0x0

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 789
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

    .line 791
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 797
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 799
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 782
    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catch_a
    move-exception v6

    .line 783
    .local v6, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 786
    if-eqz v4, :cond_d

    .line 788
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 794
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_e
    if-eqz v11, :cond_e

    .line 796
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 784
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

    .line 789
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v6

    .line 791
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 797
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 799
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 785
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 786
    :goto_10
    if-eqz v4, :cond_f

    .line 788
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 794
    :cond_f
    :goto_11
    if-eqz v11, :cond_10

    .line 796
    :try_start_15
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 802
    :cond_10
    :goto_12
    throw v17

    .line 789
    :catch_d
    move-exception v6

    .line 791
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 797
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 799
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 785
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

    .line 782
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

    .line 741
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

    .line 738
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

.method private ExitHouseSeller(I)V
    .locals 3
    .param p1, "resultcode"    # I

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v0, "resultintent":Landroid/content/Intent;
    const-string v1, "cash"

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "deposit"

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v1, "selhouse"

    iget v2, p0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v1, "reputationinfectset"

    iget-boolean v2, p0, Lcom/zf/dsmfj/HouseSeller;->reputationinfectset:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v1, "gamestatus"

    iget v2, p0, Lcom/zf/dsmfj/HouseSeller;->gamestatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/zf/dsmfj/HouseSeller;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/zf/dsmfj/HouseSeller;->finish()V

    .line 318
    return-void
.end method

.method private FormatPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "priceo"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0xf4240

    .line 327
    const-string v2, ""

    .line 328
    .local v2, "pricen":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, ".##"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "df":Ljava/text/DecimalFormat;
    :try_start_0
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    mul-long/2addr v4, v8

    long-to-double v4, v4

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4ebf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    :goto_0
    return-object v2

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e07"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private PlaySound(I)V
    .locals 7
    .param p1, "soundid"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 814
    iget-boolean v0, p0, Lcom/zf/dsmfj/HouseSeller;->soundon:Z

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 816
    :cond_0
    return-void
.end method

.method private ReadJudgeFlag()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 631
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data10"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v2

    .line 635
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ReadJudgeLevel()I
    .locals 12

    .prologue
    const/4 v9, 0x2

    .line 641
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/data/com.zf.dsmfj/data14"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 643
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 644
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 645
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x2

    .line 646
    .local v7, "level":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v9

    .line 648
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 651
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 653
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 654
    .local v8, "str":Ljava/lang/String;
    const-string v9, "buddy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "level read="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 660
    if-eqz v1, :cond_2

    .line 662
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 668
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 670
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    move v9, v7

    .line 677
    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 658
    const/4 v7, 0x2

    .line 660
    if-eqz v0, :cond_4

    .line 662
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 668
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 670
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 671
    :catch_1
    move-exception v2

    .line 673
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 663
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 665
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 659
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 660
    :goto_5
    if-eqz v0, :cond_5

    .line 662
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 668
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 670
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 676
    :cond_6
    :goto_7
    throw v9

    .line 663
    :catch_3
    move-exception v2

    .line 665
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 671
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 673
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 663
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 665
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 671
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 673
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

    .line 659
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v8    # "str":Ljava/lang/String;
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

    .line 656
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

.method private ReadRecord()V
    .locals 10

    .prologue
    .line 381
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data2"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 384
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 386
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 387
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 388
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 389
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v8, p0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_3

    .line 418
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 420
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 426
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 428
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 435
    .end local v7    # "i":I
    :cond_2
    :goto_3
    return-void

    .line 390
    .restart local v7    # "i":I
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 391
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 389
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 394
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 396
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v8, p0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    if-ge v7, v8, :cond_0

    .line 397
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 398
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 396
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 402
    .end local v7    # "i":I
    :cond_5
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    :try_start_5
    iget v8, p0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    if-lt v7, v8, :cond_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 415
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 405
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_6
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 406
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_7

    .line 407
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 408
    :cond_7
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 409
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 410
    :cond_8
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 411
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    .line 412
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 404
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 415
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "i":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 418
    if-eqz v0, :cond_a

    .line 420
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v5, :cond_2

    .line 428
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 429
    :catch_1
    move-exception v2

    .line 431
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 423
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 417
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 418
    :goto_8
    if-eqz v0, :cond_b

    .line 420
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 426
    :cond_b
    :goto_9
    if-eqz v5, :cond_c

    .line 428
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 434
    :cond_c
    :goto_a
    throw v8

    .line 421
    :catch_3
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 429
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 431
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 421
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    :catch_5
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 429
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 431
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 417
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

    .line 415
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

.method private ReadShare()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 437
    new-instance v5, Ljava/io/File;

    const-string v11, "/data/data/com.zf.dsmfj/"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/data/com.zf.dsmfj/data3"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v3, "f":Ljava/io/File;
    const/4 v6, 0x0

    .line 440
    .local v6, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 441
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 443
    .local v8, "lastdate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    .line 455
    if-eqz v0, :cond_0

    .line 457
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 465
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    :cond_1
    :goto_1
    return v10

    .line 458
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 468
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 445
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-nez v11, :cond_4

    .line 455
    if-eqz v0, :cond_3

    .line 457
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 463
    :cond_3
    :goto_2
    if-eqz v6, :cond_1

    .line 465
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 466
    :catch_2
    move-exception v2

    .line 468
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 458
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 460
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 449
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v7, "fr":Ljava/io/FileReader;
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 450
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v8

    .line 455
    if-eqz v1, :cond_5

    .line 457
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 463
    :cond_5
    :goto_3
    if-eqz v7, :cond_a

    .line 465
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 472
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_6
    :goto_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 473
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "today":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 477
    const/4 v10, 0x1

    goto :goto_1

    .line 452
    .end local v4    # "format":Ljava/text/SimpleDateFormat;
    .end local v9    # "today":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 455
    if-eqz v0, :cond_7

    .line 457
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_6
    if-eqz v6, :cond_6

    .line 465
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    .line 466
    :catch_5
    move-exception v2

    .line 468
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 460
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 455
    :goto_7
    if-eqz v0, :cond_8

    .line 457
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 463
    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    .line 465
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 471
    :cond_9
    :goto_9
    throw v10

    .line 458
    :catch_7
    move-exception v2

    .line 460
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 466
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 468
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 458
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    .line 460
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 466
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 468
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 454
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .line 452
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private ReadShareGift()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 573
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data8"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v2

    .line 577
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ReadShareMsg()Ljava/lang/String;
    .locals 10

    .prologue
    .line 680
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data13"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    .local v3, "f":Ljava/io/File;
    const-string v8, "\u6d4b\u8bd5\uff1a\u4e00\u5e74\u540e\u4f60\u80fd\u4e70\u4ec0\u4e48\u623f\uff1f\u6211\uff1a@price\u7684@housename\uff01"

    .line 683
    .local v8, "msgdefault":Ljava/lang/String;
    const-string v7, ""

    .line 684
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 720
    .end local v8    # "msgdefault":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 686
    .restart local v8    # "msgdefault":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 688
    const/4 v5, 0x0

    .line 689
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 691
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 693
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 697
    if-eqz v1, :cond_2

    .line 699
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 705
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 707
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 714
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    if-eqz v7, :cond_0

    .line 716
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 717
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v8, v7

    .line 720
    goto :goto_0

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 697
    if-eqz v0, :cond_4

    .line 699
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 705
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 707
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 708
    :catch_1
    move-exception v2

    .line 710
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 700
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 702
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 696
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 697
    :goto_5
    if-eqz v0, :cond_5

    .line 699
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 705
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 707
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 713
    :cond_6
    :goto_7
    throw v9

    .line 700
    :catch_3
    move-exception v2

    .line 702
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 708
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 710
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 700
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 702
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 708
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 710
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

    .line 696
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

    .line 694
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

.method private ReadShareUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 583
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data9"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 586
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 587
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 588
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 589
    const-string v8, ""

    .line 616
    :goto_0
    return-object v8

    .line 590
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 591
    const-string v8, ""

    goto :goto_0

    .line 593
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 595
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 599
    if-eqz v1, :cond_2

    .line 601
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 607
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 609
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 616
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 597
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 599
    if-eqz v0, :cond_4

    .line 601
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 607
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 609
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 610
    :catch_1
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 602
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 604
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 598
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 599
    :goto_5
    if-eqz v0, :cond_5

    .line 601
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 607
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 609
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 615
    :cond_6
    :goto_7
    throw v8

    .line 602
    :catch_3
    move-exception v2

    .line 604
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 610
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 612
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 602
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 604
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 610
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 612
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

    .line 598
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

    .line 596
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

.method private ReadShowAd()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 482
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v4, "fpath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v7

    .line 485
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data7"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 488
    const/4 v7, 0x1

    .line 489
    .local v7, "needtoshow":Z
    const/4 v5, 0x0

    .line 490
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 492
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 494
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 495
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 496
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 497
    :cond_2
    const-string v9, "nomoreadplease"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    if-eqz v9, :cond_3

    .line 498
    const/4 v7, 0x0

    .line 502
    :cond_3
    if-eqz v1, :cond_4

    .line 504
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 510
    :cond_4
    :goto_1
    if-eqz v6, :cond_8

    .line 512
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 513
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 499
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 502
    if-eqz v0, :cond_5

    .line 504
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    .line 512
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 513
    :catch_1
    move-exception v2

    .line 515
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 507
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 501
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 502
    :goto_4
    if-eqz v0, :cond_6

    .line 504
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 510
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 512
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 518
    :cond_7
    :goto_6
    throw v9

    .line 505
    :catch_3
    move-exception v2

    .line 507
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 513
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 515
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 505
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 507
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 513
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 515
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

    .line 501
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

    .line 499
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

.method private RemoveAd()V
    .locals 8

    .prologue
    .line 522
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data7"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 525
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 526
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 527
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 529
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 530
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 531
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
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

    .line 537
    if-eqz v1, :cond_2

    .line 539
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 545
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 547
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 554
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 534
    :catch_0
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 537
    if-eqz v0, :cond_4

    .line 539
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 545
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 547
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 548
    :catch_1
    move-exception v2

    .line 550
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 540
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 542
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 536
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 537
    :goto_4
    if-eqz v0, :cond_5

    .line 539
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 545
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 547
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 553
    :cond_6
    :goto_6
    throw v7

    .line 540
    :catch_3
    move-exception v2

    .line 542
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 548
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 550
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 540
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 542
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 550
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

    .line 536
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

    .line 534
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

.method private SaveRecord()V
    .locals 9

    .prologue
    .line 342
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data2"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 345
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 347
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 348
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 349
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 350
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 351
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_2
    iget v8, p0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lt v7, v8, :cond_4

    .line 362
    if-eqz v1, :cond_2

    .line 364
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 370
    :cond_2
    :goto_1
    if-eqz v6, :cond_8

    .line 372
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 379
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_2
    return-void

    .line 354
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 356
    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 353
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    if-eqz v0, :cond_5

    .line 364
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 370
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v5, :cond_3

    .line 372
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 373
    :catch_1
    move-exception v2

    .line 375
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 362
    :goto_5
    if-eqz v0, :cond_6

    .line 364
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 370
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 372
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 378
    :cond_7
    :goto_7
    throw v8

    .line 365
    :catch_3
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 375
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 365
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :catch_5
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 375
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
    goto :goto_2

    .line 361
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .line 359
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method private SetJudgeFlag()V
    .locals 4

    .prologue
    .line 619
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data10"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 624
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SetShareGift(Z)V
    .locals 7
    .param p1, "hasgift"    # Z

    .prologue
    .line 556
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.zf.dsmfj/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v3, "fpath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.zf.dsmfj/data8"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v2, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 559
    .local v4, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 560
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 561
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 563
    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 564
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_1
    :goto_0
    const-string v5, "buddy"

    const-string v6, "share flag set"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 565
    :cond_2
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 566
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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

    .line 288
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 289
    .local v4, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    invoke-direct {p0}, Lcom/zf/dsmfj/HouseSeller;->ReadShareUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 290
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v4}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 291
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 292
    iput-object p3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 293
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 294
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 295
    const/4 v5, 0x2

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 296
    invoke-virtual {p0}, Lcom/zf/dsmfj/HouseSeller;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02011a

    invoke-static {v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 297
    .local v3, "thumb":Landroid/graphics/Bitmap;
    invoke-static {v3, v9}, Lcom/zf/dsmfj/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 299
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 300
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 301
    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 302
    if-nez p1, :cond_0

    .line 303
    iput v8, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 306
    :goto_0
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 307
    const-string v5, "buddy"

    const-string v6, "\u5df2\u53d1\u51fa\u6d88\u606f\u5230\u5fae\u4fe1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 305
    :cond_0
    iput v9, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/HouseSeller;I)V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/HouseSeller;->PlaySound(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/zf/dsmfj/HouseSeller;I)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/HouseSeller;->ExitHouseSeller(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->listitem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zf/dsmfj/HouseSeller;)[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    return-object v0
.end method

.method static synthetic access$12(Lcom/zf/dsmfj/HouseSeller;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    return v0
.end method

.method static synthetic access$13(Lcom/zf/dsmfj/HouseSeller;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    return-void
.end method

.method static synthetic access$14(Lcom/zf/dsmfj/HouseSeller;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    return-void
.end method

.method static synthetic access$15(Lcom/zf/dsmfj/HouseSeller;)[Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->reputationinfect:[Z

    return-object v0
.end method

.method static synthetic access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zf/dsmfj/HouseSeller;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    return v0
.end method

.method static synthetic access$20(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->housesuccmsg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller;->event:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/zf/dsmfj/HouseSeller;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/zf/dsmfj/HouseSeller;->gamestatus:I

    return-void
.end method

.method static synthetic access$23(Lcom/zf/dsmfj/HouseSeller;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$24(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/zf/dsmfj/HouseSeller;->ReadShareMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25(Lcom/zf/dsmfj/HouseSeller;)[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->houseimgressucc:[I

    return-object v0
.end method

.method static synthetic access$26(Lcom/zf/dsmfj/HouseSeller;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zf/dsmfj/HouseSeller;->WechatShare(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$27(Lcom/zf/dsmfj/HouseSeller;)I
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/zf/dsmfj/HouseSeller;->ReadJudgeLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$28(Lcom/zf/dsmfj/HouseSeller;)Z
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/zf/dsmfj/HouseSeller;->ReadJudgeFlag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$29(Lcom/zf/dsmfj/HouseSeller;)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/zf/dsmfj/HouseSeller;->SetJudgeFlag()V

    return-void
.end method

.method static synthetic access$3(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zf/dsmfj/HouseSeller;)[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->houseimgres:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->housefirstbuygift:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->houseinfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller;->housepricec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/HouseSeller;->FormatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 805
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 806
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 807
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 808
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 811
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    .line 83
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->requestWindowFeature(I)Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/HouseSeller;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 86
    .local v14, "intent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 87
    .local v8, "b":Landroid/os/Bundle;
    const-string v3, "housenbr"

    const/16 v4, 0xa

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    .line 88
    const-string v3, "selhouse"

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    .line 89
    const-string v3, "cash"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    .line 90
    const-string v3, "deposit"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    .line 91
    const-string v3, "reputation"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputation:Ljava/lang/String;

    .line 92
    const-string v3, "reputationinfectset"

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfectset:Z

    .line 93
    const-string v3, "gamestatus"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->gamestatus:I

    .line 94
    const-string v3, "soundon"

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zf/dsmfj/HouseSeller;->soundon:Z

    .line 95
    const-string v3, "housename"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    .line 96
    const-string v3, "housepricec"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->housepricec:[Ljava/lang/String;

    .line 97
    const-string v3, "houseinfo"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->houseinfo:[Ljava/lang/String;

    .line 98
    const-string v3, "houseimgres"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->houseimgres:[I

    .line 99
    const-string v3, "houseimgressucc"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->houseimgressucc:[I

    .line 100
    const-string v3, "housesuccmsg"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->housesuccmsg:[Ljava/lang/String;

    .line 101
    const-string v3, "reputationinfect"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfect:[Z

    .line 102
    const-string v3, "housefirstbuygift"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->housefirstbuygift:[Ljava/lang/String;

    .line 104
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v5, 0x7f040001

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v5, 0x7f040009

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->s_money:I

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v5, 0x7f04000a

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->s_selgoods:I

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v5, 0x7f04000b

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->s_success:I

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->sp:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v5, 0x7f04000c

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->s_success_mars:I

    .line 111
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    .line 112
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/zf/dsmfj/HouseSeller;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/GirlType.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    .line 114
    const/4 v3, 0x3

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    const/4 v4, 0x0

    const v5, 0x7f020013

    aput v5, v3, v4

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    const/4 v4, 0x1

    const v5, 0x7f020014

    aput v5, v3, v4

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    const/4 v4, 0x2

    const v5, 0x7f020015

    aput v5, v3, v4

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/HouseSeller;->ReadRecord()V

    .line 121
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->SetShareGift(Z)V

    .line 122
    const v3, 0x7f03001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->setContentView(I)V

    .line 124
    const v3, 0x7f070096

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 125
    .local v13, "ihead2":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const/high16 v4, 0x7f020000

    invoke-static {v3, v4}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    const v3, 0x7f070009

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 127
    .local v20, "ttitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    const v3, 0x7f070091

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 129
    .local v16, "itail":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const v4, 0x7f020001

    invoke-static {v3, v4}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    const v3, 0x7f070092

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 132
    .local v19, "tmoney":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53ef\u7528\u8d44\u91d1\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    const v3, 0x7f070094

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 136
    .local v10, "bexit":Landroid/widget/Button;
    new-instance v3, Lcom/zf/dsmfj/HouseSeller$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zf/dsmfj/HouseSeller$1;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v3, 0x7f070095

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 143
    .local v17, "list":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->listitem:Ljava/util/ArrayList;

    .line 144
    new-instance v2, Lcom/zf/dsmfj/SpecialAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->listitem:Ljava/util/ArrayList;

    const v5, 0x7f03001d

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v21, "name"

    aput-object v21, v6, v7

    const/4 v7, 0x1

    const-string v21, "des"

    aput-object v21, v6, v7

    const/4 v7, 0x2

    const-string v21, "price"

    aput-object v21, v6, v7

    const/4 v7, 0x3

    const-string v21, "gift"

    aput-object v21, v6, v7

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v2 .. v7}, Lcom/zf/dsmfj/SpecialAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V

    .line 145
    .local v2, "lia":Lcom/zf/dsmfj/SpecialAdapter;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    if-lt v12, v3, :cond_1

    .line 174
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance v3, Lcom/zf/dsmfj/HouseSeller$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/zf/dsmfj/HouseSeller$2;-><init>(Lcom/zf/dsmfj/HouseSeller;Lcom/zf/dsmfj/SpecialAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    const v3, 0x7f070093

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 238
    .local v9, "bbuy":Landroid/widget/Button;
    new-instance v3, Lcom/zf/dsmfj/HouseSeller$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zf/dsmfj/HouseSeller$3;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfectset:Z

    if-nez v3, :cond_0

    .line 271
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->housenbr:I

    if-lt v12, v3, :cond_5

    .line 281
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfectset:Z

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    const-string v4, "wxc79e0b0d12c90ae1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v4, "wxc79e0b0d12c90ae1"

    invoke-interface {v3, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 286
    return-void

    .line 146
    .end local v9    # "bbuy":Landroid/widget/Button;
    :cond_1
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    .line 149
    .local v15, "isuccnbr":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 153
    :goto_2
    if-lez v15, :cond_3

    .line 154
    const-string v3, "imgres"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->houseimgres:[I

    aget v4, v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v3, "gift"

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_3
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v3, "des"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->houseinfo:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v3, "price"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u552e\u4ef7\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/HouseSeller;->housepricec:[Ljava/lang/String;

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zf/dsmfj/HouseSeller;->FormatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    if-ne v12, v3, :cond_4

    .line 165
    const-string v3, "sel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgres:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    .line 167
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 168
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zf/dsmfj/HouseSeller;->selectimgchange:I

    .line 172
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->listitem:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v11

    .line 151
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 158
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "imgres"

    const v4, 0x7f020118

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v3, "gift"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zf/dsmfj/HouseSeller;->housefirstbuygift:[Ljava/lang/String;

    aget-object v5, v5, v12

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u4e07\u4e70\u623f\u4ee3\u91d1\u5238"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 171
    :cond_4
    const-string v3, "sel"

    const v4, 0x7f020023

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 272
    .end local v15    # "isuccnbr":I
    .end local v18    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "bbuy":Landroid/widget/Button;
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zf/dsmfj/HouseSeller;->reputation:Ljava/lang/String;

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    if-ge v3, v4, :cond_6

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfect:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v12

    .line 271
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 277
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zf/dsmfj/HouseSeller;->reputationinfect:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v12

    goto :goto_5

    .line 144
    nop

    :array_0
    .array-data 4
        0x7f070099
        0x7f07009c
        0x7f07009b
        0x7f07009e
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 819
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f060001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 820
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 822
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 823
    new-instance v1, Lcom/zf/dsmfj/HouseSeller$4;

    invoke-direct {v1, p0}, Lcom/zf/dsmfj/HouseSeller$4;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 834
    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    const v2, 0x7f070096

    invoke-virtual {p0, v2}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "ihead2":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, "itail":Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 79
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 320
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zf/dsmfj/HouseSeller;->ExitHouseSeller(I)V

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 32
    .param p1, "dialogid"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 837
    packed-switch p1, :pswitch_data_0

    .line 1276
    :goto_0
    :pswitch_0
    return-void

    .line 839
    :pswitch_1
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 840
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$5;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 851
    const v26, 0x7f030009

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 852
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 853
    .local v17, "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020007

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 854
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 855
    .local v24, "tbuyhnote":Landroid/widget/TextView;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u8d2d\u4e70"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-static/range {v27 .. v27}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u9700\u8981"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housepricec:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->FormatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\uff0c \u4f60\u53ea\u6709"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->cash:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->deposit:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\uff01"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 857
    const v26, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 858
    .local v6, "bbuyhok":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$6;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 866
    .end local v6    # "bbuyhok":Landroid/widget/Button;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    :pswitch_2
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 867
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$7;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 880
    const v26, 0x7f030008

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 881
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 882
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020007

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 883
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 884
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u786e\u5b9a\u8981\u82b1\u8d39"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housepricec:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->FormatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u8d2d\u4e70"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-static/range {v27 .. v27}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u5417\uff1f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 886
    const v26, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 887
    .restart local v6    # "bbuyhok":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$8;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    const v26, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 970
    .local v5, "bbuyhcancel":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$9;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 978
    .end local v5    # "bbuyhcancel":Landroid/widget/Button;
    .end local v6    # "bbuyhok":Landroid/widget/Button;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    :pswitch_3
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 979
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$10;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$10;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 990
    const v26, 0x7f030009

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 991
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 992
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020007

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 993
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 994
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    const-string v26, "\u7531\u4e8e\u4f60\u7684\u540d\u58f0\u592a\u5dee\uff0c \u552e\u697c\u5c0f\u59d0\u4e0d\u613f\u610f\u628a\u8fd9\u5957\u623f\u5b50\u5356\u7ed9\u4f60\uff01"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 996
    const v26, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 997
    .restart local v6    # "bbuyhok":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$11;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$11;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1005
    .end local v6    # "bbuyhok":Landroid/widget/Button;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    :pswitch_4
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1006
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$12;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$12;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1025
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v26, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/HouseSeller;->soundon:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1027
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f04000c

    invoke-static/range {v26 .. v27}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v22

    .line 1028
    .local v22, "mp":Landroid/media/MediaPlayer;
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1042
    .end local v22    # "mp":Landroid/media/MediaPlayer;
    :goto_1
    const v26, 0x7f03000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1043
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1044
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020019

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    const v26, 0x7f070014

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1046
    .local v21, "isuccimg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->houseimgressucc:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget v27, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1047
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1048
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->event:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1050
    const v26, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1051
    .restart local v6    # "bbuyhok":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$13;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$13;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    const v26, 0x7f07000c

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1065
    .local v11, "bsharefriend":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$14;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller$14;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    const v26, 0x7f07000d

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1076
    .local v12, "bsharetimeline":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$15;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller$15;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    const v26, 0x7f070006

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1087
    .local v8, "bmoregames":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$16;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller$16;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1094
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy-MM-dd HH:mm"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v14, "format":Ljava/text/SimpleDateFormat;
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/HouseSeller;->ReadRecord()V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-static/range {v26 .. v26}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "\u4ece\u672a\u6210\u529f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->record_date:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    new-instance v28, Ljava/util/Date;

    invoke-direct/range {v28 .. v28}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    const-string v28, "1"

    invoke-static/range {v28 .. v28}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 1100
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housefirstbuygift:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-static/range {v26 .. v26}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1101
    .local v20, "igift":I
    if-lez v20, :cond_0

    .line 1102
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1103
    mul-int/lit8 v26, v20, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->ChangeVoucher(I)Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v28, v20, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u4e07"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 1105
    .local v23, "t":Landroid/widget/Toast;
    const/16 v26, 0x11

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1106
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1142
    .end local v20    # "igift":I
    .end local v23    # "t":Landroid/widget/Toast;
    :cond_0
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/HouseSeller;->SaveRecord()V

    .line 1143
    const v26, 0x7f070093

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1144
    .local v4, "bbuy":Landroid/widget/Button;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1146
    const-string v26, "gamesucc"

    invoke-static/range {v26 .. v26}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1147
    .local v16, "gamesucc":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1149
    .local v19, "igamesucc":I
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v19

    .line 1154
    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 1155
    const-string v26, "gamesucc"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v26, "gamebest"

    invoke-static/range {v26 .. v26}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1157
    .local v15, "gamebest":Ljava/lang/String;
    const/16 v18, -0x1

    .line 1159
    .local v18, "igamebest":I
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v18

    .line 1164
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 1165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v18, v0

    .line 1166
    :cond_1
    const-string v26, "gamebest"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    .end local v4    # "bbuy":Landroid/widget/Button;
    .end local v6    # "bbuyhok":Landroid/widget/Button;
    .end local v8    # "bmoregames":Landroid/widget/Button;
    .end local v11    # "bsharefriend":Landroid/widget/Button;
    .end local v12    # "bsharetimeline":Landroid/widget/Button;
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .end local v15    # "gamebest":Ljava/lang/String;
    .end local v16    # "gamesucc":Ljava/lang/String;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v18    # "igamebest":I
    .end local v19    # "igamesucc":I
    .end local v21    # "isuccimg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .line 1031
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 1032
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    .line 1034
    .local v13, "e":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1

    .line 1035
    .end local v13    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v13

    .line 1037
    .local v13, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 1041
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->s_success:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->PlaySound(I)V

    goto/16 :goto_1

    .line 1109
    .restart local v6    # "bbuyhok":Landroid/widget/Button;
    .restart local v8    # "bmoregames":Landroid/widget/Button;
    .restart local v11    # "bsharefriend":Landroid/widget/Button;
    .restart local v12    # "bsharetimeline":Landroid/widget/Button;
    .restart local v14    # "format":Ljava/text/SimpleDateFormat;
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    .restart local v20    # "igift":I
    .restart local v21    # "isuccimg":Landroid/widget/ImageView;
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    :cond_3
    mul-int/lit8 v26, v20, 0xa

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->ChangeVoucher(I)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u4e07"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 1111
    .restart local v23    # "t":Landroid/widget/Toast;
    const/16 v26, 0x11

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1112
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 1115
    .end local v20    # "igift":I
    .end local v23    # "t":Landroid/widget/Toast;
    :catch_3
    move-exception v13

    .line 1116
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1121
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->record_succnbr:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housefirstbuygift:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-static/range {v26 .. v26}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1124
    .restart local v20    # "igift":I
    if-lez v20, :cond_0

    .line 1125
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1126
    mul-int/lit8 v26, v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->ChangeVoucher(I)Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u4e07"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 1128
    .restart local v23    # "t":Landroid/widget/Toast;
    const/16 v26, 0x11

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1129
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 1138
    .end local v20    # "igift":I
    .end local v23    # "t":Landroid/widget/Toast;
    :catch_4
    move-exception v13

    .line 1139
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1132
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v20    # "igift":I
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->ChangeVoucher(I)Z

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 1134
    .restart local v23    # "t":Landroid/widget/Toast;
    const/16 v26, 0x11

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1135
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 1150
    .end local v20    # "igift":I
    .end local v23    # "t":Landroid/widget/Toast;
    .restart local v4    # "bbuy":Landroid/widget/Button;
    .restart local v16    # "gamesucc":Ljava/lang/String;
    .restart local v19    # "igamesucc":I
    :catch_5
    move-exception v13

    .line 1151
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1160
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "gamebest":Ljava/lang/String;
    .restart local v18    # "igamebest":I
    :catch_6
    move-exception v13

    .line 1161
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1162
    const/16 v18, -0x1

    goto/16 :goto_4

    .line 1169
    .end local v4    # "bbuy":Landroid/widget/Button;
    .end local v6    # "bbuyhok":Landroid/widget/Button;
    .end local v8    # "bmoregames":Landroid/widget/Button;
    .end local v11    # "bsharefriend":Landroid/widget/Button;
    .end local v12    # "bsharetimeline":Landroid/widget/Button;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .end local v15    # "gamebest":Ljava/lang/String;
    .end local v16    # "gamesucc":Ljava/lang/String;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v18    # "igamebest":I
    .end local v19    # "igamesucc":I
    .end local v21    # "isuccimg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    :pswitch_5
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1170
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$17;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$17;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1185
    const v26, 0x7f030005

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1186
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1187
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020016

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1188
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1189
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1190
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "    \u7b2c\u4e00\u6b21\u6210\u529f\u4e70\u5230"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->housename:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/HouseSeller;->selhouse:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-static/range {v27 .. v27}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\uff0c \u8981\u70ab\u8000\u4e00\u4e0b\u5417\uff1f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    const v26, 0x7f070009

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1192
    .local v25, "ttitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1193
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u70ab\u8000\u53ef\u83b7\u5f97"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadShareGiftShouldGive()I

    move-result v27

    div-int/lit8 v27, v27, 0xa

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u4e07\u4e70\u623f\u4ee3\u91d1\u5238"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    const v26, 0x7f07000c

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1195
    .restart local v11    # "bsharefriend":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$18;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller$18;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    const v26, 0x7f07000d

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1206
    .restart local v12    # "bsharetimeline":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$19;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller$19;-><init>(Lcom/zf/dsmfj/HouseSeller;)V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    const v26, 0x7f07000e

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1217
    .local v7, "bclose":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$20;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$20;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->SetShareGift(Z)V

    goto/16 :goto_0

    .line 1231
    .end local v7    # "bclose":Landroid/widget/Button;
    .end local v11    # "bsharefriend":Landroid/widget/Button;
    .end local v12    # "bsharetimeline":Landroid/widget/Button;
    .end local v17    # "ibg":Landroid/widget/ImageView;
    .end local v24    # "tbuyhnote":Landroid/widget/TextView;
    .end local v25    # "ttitle":Landroid/widget/TextView;
    :pswitch_6
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1232
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$21;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$21;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1245
    const v26, 0x7f030004

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1246
    const/high16 v26, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1247
    .restart local v17    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->instance:Lcom/zf/dsmfj/HouseSeller;

    move-object/from16 v26, v0

    const v27, 0x7f020016

    invoke-static/range {v26 .. v27}, Lcom/zf/dsmfj/HouseSeller;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1248
    const v26, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1249
    .restart local v24    # "tbuyhnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1250
    const v26, 0x7f070009

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1251
    .restart local v25    # "ttitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/HouseSeller;->tface:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1252
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u8bc4\u4ef7\u53ef\u83b7\u5f97"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadJudgeGiftShouldGive()I

    move-result v27

    div-int/lit8 v27, v27, 0xa

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u4e07\u4e70\u623f\u4ee3\u91d1\u5238"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    const v26, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1254
    .local v10, "bok":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$22;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$22;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    const v26, 0x7f07000b

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1267
    .local v9, "bno":Landroid/widget/Button;
    new-instance v26, Lcom/zf/dsmfj/HouseSeller$23;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/HouseSeller$23;-><init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

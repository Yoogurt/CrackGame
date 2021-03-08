.class public Lcom/zf/dsmfj/MaiFangJi;
.super Landroid/app/Activity;
.source "MaiFangJi.java"


# instance fields
.field private adinited:Z

.field private adshouldinit:Z

.field private adshowing:Z

.field private askhintfrom:I

.field private badadleft:I

.field private badadmax:I

.field private buyvoucherfrom:I

.field private cash:Ljava/lang/String;

.field private castcontent:Ljava/lang/String;

.field private castlink:Ljava/lang/String;

.field private casttitle:Ljava/lang/String;

.field private curdate:Ljava/lang/String;

.field private datelimit:Ljava/lang/String;

.field private defaultcash:Ljava/lang/String;

.field private deposit:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private extracash:Ljava/lang/String;

.field private gamestatus:I

.field private goodsimgform:[I

.field private goodsimgforw:[I

.field private goodsimgm:[I

.field private goodsimgmforw:[I

.field private goodsimgw:[I

.field private goodsname:[Ljava/lang/String;

.field private goodsnamem:[Ljava/lang/String;

.field private goodsnamew:[Ljava/lang/String;

.field private goodsnbrw:[Ljava/lang/String;

.field private goodspriceavg:[Ljava/lang/String;

.field private goodspricem:[Ljava/lang/String;

.field private goodspricew:[Ljava/lang/String;

.field private goodsresform:[I

.field private goodsresforw:[I

.field private goodsresm:[I

.field private goodsresmforw:[I

.field private goodsresw:[I

.field private hbuyvfail:Landroid/os/Handler;

.field private hbuyvsucc:Landroid/os/Handler;

.field private hchangecash:Landroid/os/Handler;

.field private health:Ljava/lang/String;

.field private hevent:Landroid/os/Handler;

.field private hgetdailygift:Landroid/os/Handler;

.field private hinton:Z

.field private housefirstbuygift:[Ljava/lang/String;

.field private houseimgres:[I

.field private houseimgressucc:[I

.field private houseinfo:[Ljava/lang/String;

.field private housename:[Ljava/lang/String;

.field private housenbr:I

.field private housepricec:[Ljava/lang/String;

.field private housepriceo:[Ljava/lang/String;

.field private housesuccmsg:[Ljava/lang/String;

.field private hsickevent:Landroid/os/Handler;

.field iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

.field private instance:Lcom/zf/dsmfj/MaiFangJi;

.field private lognbrtoshow:I

.field private moretimecount:Ljava/lang/String;

.field private note_buyv:Ljava/lang/String;

.field private purchaseinit:Z

.field private rdeccash:Ljava/lang/Runnable;

.field private record_date:[Ljava/lang/String;

.field private record_succnbr:[Ljava/lang/String;

.field private rentnbr:I

.field private reputation:Ljava/lang/String;

.field private reputationinfect:[Z

.field private reputationinfectset:Z

.field private rinccash:Ljava/lang/Runnable;

.field private s_addcash:I

.field private s_button:I

.field private s_changeplace:I

.field private s_dead:I

.field private s_error:I

.field private s_eventbad:I

.field private s_eventgood:I

.field private s_eventhealth:I

.field private s_money:I

.field private s_selgoods:I

.field private s_success:I

.field private s_success_mars:I

.field private s_timeup:I

.field private selgoodsm:I

.field private selgoodsw:I

.field private selhouse:I

.field private soundon:Z

.field private sp:Landroid/media/SoundPool;

.field private tface:Landroid/graphics/Typeface;

.field private voucher:Ljava/lang/String;

.field private wavailable:Ljava/lang/String;

.field private wcapacity:Ljava/lang/String;

.field private wused:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BackToMain()V
    .locals 6

    .prologue
    const v5, 0x7f07004e

    const v4, 0x7f07003c

    .line 1896
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/zf/dsmfj/MaiFangJi;->setContentView(I)V

    .line 1897
    iget v2, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    if-nez v2, :cond_1

    .line 1898
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->InitGame_SetInvisible()V

    .line 1899
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->DefButton()V

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    iget v2, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1903
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    .line 1905
    invoke-virtual {p0, v4}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1906
    .local v0, "tdate":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5468"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    .line 1910
    invoke-virtual {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1911
    .local v1, "twarehouseinfo":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1912
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshWarehouse()V

    .line 1913
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->DefButton()V

    goto :goto_0

    .line 1915
    .end local v0    # "tdate":Landroid/widget/TextView;
    .end local v1    # "twarehouseinfo":Landroid/widget/TextView;
    :cond_2
    iget v2, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1917
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    .line 1919
    invoke-virtual {p0, v4}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1920
    .restart local v0    # "tdate":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5468"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1922
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    .line 1924
    invoke-virtual {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1925
    .restart local v1    # "twarehouseinfo":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1926
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshWarehouse()V

    .line 1927
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->DefButton()V

    .line 1928
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    goto/16 :goto_0
.end method

.method private ChangeHintLeft(I)V
    .locals 14
    .param p1, "change"    # I

    .prologue
    .line 2556
    new-instance v6, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/"

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v6, "fpath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2558
    .local v5, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 2559
    .local v7, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2560
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 2561
    .local v9, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 2562
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v12, ""

    .line 2563
    .local v12, "status":Ljava/lang/String;
    const-string v11, "0"

    .line 2565
    .local v11, "left":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2566
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 2567
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 2568
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2569
    :cond_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    .end local v7    # "fr":Ljava/io/FileReader;
    .local v8, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2571
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 2572
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v11

    .line 2576
    if-eqz v1, :cond_2

    .line 2578
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2584
    :cond_2
    :goto_0
    if-eqz v8, :cond_c

    .line 2586
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 2593
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-nez v12, :cond_4

    .line 2594
    const-string v12, ""

    .line 2595
    :cond_4
    if-nez v11, :cond_5

    .line 2596
    const-string v11, "0"

    .line 2597
    :cond_5
    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2598
    const-string v11, "0"

    .line 2600
    :cond_6
    :try_start_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, p1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v11

    .line 2606
    :goto_2
    :try_start_6
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2607
    .end local v9    # "fw":Ljava/io/FileWriter;
    .local v10, "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2608
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    invoke-virtual {v3, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2609
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 2610
    invoke-virtual {v3, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2614
    if-eqz v3, :cond_7

    .line 2616
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 2622
    :cond_7
    :goto_3
    if-eqz v10, :cond_10

    .line 2624
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 2631
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :cond_8
    :goto_4
    return-void

    .line 2573
    :catch_0
    move-exception v4

    .line 2574
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2576
    if-eqz v0, :cond_9

    .line 2578
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 2584
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_6
    if-eqz v7, :cond_3

    .line 2586
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_1

    .line 2587
    :catch_1
    move-exception v4

    .line 2589
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2579
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 2581
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2575
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 2576
    :goto_7
    if-eqz v0, :cond_a

    .line 2578
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 2584
    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 2586
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 2592
    :cond_b
    :goto_9
    throw v13

    .line 2579
    :catch_3
    move-exception v4

    .line 2581
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2587
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 2589
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2579
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    .line 2581
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2587
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 2589
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

    .line 2601
    :catch_7
    move-exception v4

    .line 2602
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2603
    const-string v11, "0"

    goto :goto_2

    .line 2611
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 2612
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2614
    if-eqz v2, :cond_d

    .line 2616
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 2622
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    if-eqz v9, :cond_8

    .line 2624
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_4

    .line 2625
    :catch_9
    move-exception v4

    .line 2627
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2617
    .local v4, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 2619
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2613
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 2614
    :goto_c
    if-eqz v2, :cond_e

    .line 2616
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 2622
    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 2624
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 2630
    :cond_f
    :goto_e
    throw v13

    .line 2617
    :catch_b
    move-exception v4

    .line 2619
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 2625
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 2627
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 2617
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_d
    move-exception v4

    .line 2619
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2625
    .end local v4    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v4

    .line 2627
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

    .line 2613
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

    .line 2611
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

    .line 2575
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

    .line 2573
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

.method private DefButton()V
    .locals 14

    .prologue
    .line 754
    const v12, 0x7f070070

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 755
    .local v10, "bstart":Landroid/widget/Button;
    iget v12, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 756
    const v12, 0x7f0200d8

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 757
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$5;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$5;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    :goto_0
    const v12, 0x7f070078

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 775
    .local v5, "bmarket1":Landroid/widget/Button;
    const v12, 0x7f070079

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 776
    .local v6, "bmarket2":Landroid/widget/Button;
    const v12, 0x7f07007a

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 777
    .local v7, "bmarket3":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$7;

    invoke-direct {v12, p0, v5, v6, v7}, Lcom/zf/dsmfj/MaiFangJi$7;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$8;

    invoke-direct {v12, p0, v5, v6, v7}, Lcom/zf/dsmfj/MaiFangJi$8;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$9;

    invoke-direct {v12, p0, v5, v6, v7}, Lcom/zf/dsmfj/MaiFangJi$9;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    const/4 v12, 0x5

    new-array v8, v12, [Landroid/widget/Button;

    .line 851
    .local v8, "bmslot":[Landroid/widget/Button;
    const/4 v13, 0x0

    const v12, 0x7f070042

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v8, v13

    .line 852
    const/4 v13, 0x1

    const v12, 0x7f070043

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v8, v13

    .line 853
    const/4 v13, 0x2

    const v12, 0x7f070044

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v8, v13

    .line 854
    const/4 v13, 0x3

    const v12, 0x7f070045

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v8, v13

    .line 855
    const/4 v13, 0x4

    const v12, 0x7f070046

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v8, v13

    .line 856
    const/4 v12, 0x0

    aget-object v12, v8, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$10;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$10;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    const/4 v12, 0x1

    aget-object v12, v8, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$11;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$11;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    const/4 v12, 0x2

    aget-object v12, v8, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$12;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$12;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    const/4 v12, 0x3

    aget-object v12, v8, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$13;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$13;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    const/4 v12, 0x4

    aget-object v12, v8, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$14;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$14;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    const/4 v12, 0x5

    new-array v11, v12, [Landroid/widget/Button;

    .line 908
    .local v11, "bwslot":[Landroid/widget/Button;
    const/4 v13, 0x0

    const v12, 0x7f070052

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v11, v13

    .line 909
    const/4 v13, 0x1

    const v12, 0x7f070053

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v11, v13

    .line 910
    const/4 v13, 0x2

    const v12, 0x7f070054

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v11, v13

    .line 911
    const/4 v13, 0x3

    const v12, 0x7f070055

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v11, v13

    .line 912
    const/4 v13, 0x4

    const v12, 0x7f070056

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v11, v13

    .line 913
    const/4 v12, 0x0

    aget-object v12, v11, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$15;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$15;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    const/4 v12, 0x1

    aget-object v12, v11, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$16;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$16;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    const/4 v12, 0x2

    aget-object v12, v11, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$17;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$17;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    const/4 v12, 0x3

    aget-object v12, v11, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$18;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$18;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    const/4 v12, 0x4

    aget-object v12, v11, v12

    new-instance v13, Lcom/zf/dsmfj/MaiFangJi$19;

    invoke-direct {v13, p0}, Lcom/zf/dsmfj/MaiFangJi$19;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    const v12, 0x7f070073

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 950
    .local v1, "bbank":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$20;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$20;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    const v12, 0x7f070074

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 958
    .local v3, "bhospital":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$21;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$21;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    const v12, 0x7f070076

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 966
    .local v0, "bagent":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$22;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$22;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    const v12, 0x7f070071

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 974
    .local v9, "brecord":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$23;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$23;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    const v12, 0x7f070075

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 993
    .local v4, "bhouseseller":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$24;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$24;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v4, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    const v12, 0x7f07006f

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1027
    .local v2, "bhelp":Landroid/widget/Button;
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$25;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$25;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    return-void

    .line 765
    .end local v0    # "bagent":Landroid/widget/Button;
    .end local v1    # "bbank":Landroid/widget/Button;
    .end local v2    # "bhelp":Landroid/widget/Button;
    .end local v3    # "bhospital":Landroid/widget/Button;
    .end local v4    # "bhouseseller":Landroid/widget/Button;
    .end local v5    # "bmarket1":Landroid/widget/Button;
    .end local v6    # "bmarket2":Landroid/widget/Button;
    .end local v7    # "bmarket3":Landroid/widget/Button;
    .end local v8    # "bmslot":[Landroid/widget/Button;
    .end local v9    # "brecord":Landroid/widget/Button;
    .end local v11    # "bwslot":[Landroid/widget/Button;
    :cond_0
    const v12, 0x7f0200db

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 766
    new-instance v12, Lcom/zf/dsmfj/MaiFangJi$6;

    invoke-direct {v12, p0}, Lcom/zf/dsmfj/MaiFangJi$6;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private FormatPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "priceo"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0xf4240

    .line 2150
    const-string v2, ""

    .line 2151
    .local v2, "pricen":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, ".##"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v0, "df":Ljava/text/DecimalFormat;
    :try_start_0
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 2154
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

    .line 2162
    :goto_0
    return-object v2

    .line 2155
    :cond_0
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 2156
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

    .line 2158
    :cond_1
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2159
    :catch_0
    move-exception v1

    .line 2160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private GameOver()V
    .locals 25

    .prologue
    .line 1254
    const v23, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1255
    .local v9, "bmslot1":Landroid/widget/Button;
    const v23, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1256
    .local v10, "bmslot2":Landroid/widget/Button;
    const v23, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1257
    .local v11, "bmslot3":Landroid/widget/Button;
    const v23, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1258
    .local v12, "bmslot4":Landroid/widget/Button;
    const v23, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1259
    .local v13, "bmslot5":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1260
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1261
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1262
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1263
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1265
    const v23, 0x7f070052

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 1266
    .local v15, "bwslot1":Landroid/widget/Button;
    const v23, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 1267
    .local v16, "bwslot2":Landroid/widget/Button;
    const v23, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 1268
    .local v17, "bwslot3":Landroid/widget/Button;
    const v23, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1269
    .local v18, "bwslot4":Landroid/widget/Button;
    const v23, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 1270
    .local v19, "bwslot5":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1271
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1272
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1273
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1274
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1276
    const v23, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1277
    .local v6, "bmarket1":Landroid/widget/Button;
    const v23, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1278
    .local v7, "bmarket2":Landroid/widget/Button;
    const v23, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1279
    .local v8, "bmarket3":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1280
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1281
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1282
    const v23, 0x7f070073

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1283
    .local v3, "bbank":Landroid/widget/Button;
    const v23, 0x7f070074

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1284
    .local v4, "bhospital":Landroid/widget/Button;
    const v23, 0x7f070075

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1285
    .local v5, "bhouseseller":Landroid/widget/Button;
    const v23, 0x7f070076

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1286
    .local v2, "bagent":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1287
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1288
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1289
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1295
    const v23, 0x7f070070

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1296
    .local v14, "bstart":Landroid/widget/Button;
    const v23, 0x7f0200db

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1297
    new-instance v23, Lcom/zf/dsmfj/MaiFangJi$29;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$29;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    .line 1305
    const-string v23, "gametotal"

    invoke-static/range {v23 .. v23}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1306
    .local v21, "gametotal":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1308
    .local v22, "igametotal":I
    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1313
    :goto_0
    add-int/lit8 v22, v22, 0x1

    .line 1314
    const-string v23, "gametotal"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1309
    :catch_0
    move-exception v20

    .line 1310
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private GenerateEvent()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 2018
    const/4 v1, 0x0

    .line 2020
    .local v1, "event":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2021
    .local v3, "nogoods":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    .line 2027
    :goto_1
    if-eqz v3, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 2028
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2029
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    const-string v5, "    \u6211\u8eab\u65e0\u5206\u6587\u6d41\u843d\u8857\u5934\uff0c \u8d70\u6295\u65e0\u8def\u4e4b\u9645\uff0c \u4e00\u4e2a\u597d\u5fc3\u4eba\u770b\u6211\u53ef\u601c\uff0c \u7ed9\u4e86\u62113000\u5757\uff01"

    .line 2128
    :goto_2
    return-object v5

    .line 2022
    :cond_0
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2023
    const/4 v3, 0x0

    .line 2024
    goto :goto_1

    .line 2021
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2034
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 2035
    .local v4, "r":I
    const/16 v5, 0xe

    if-ge v4, v5, :cond_4

    .line 2036
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2037
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2038
    const-string v1, "    \u6211\u559c\u6b22\u5927\u8857\u4e0a\u5356\u5531\u5c0f\u4f19\u7684\u6b4c\uff0c \u5fcd\u4e0d\u4f4f\u638f\u4e86\u4e9b\u94b1\u7ed9\u4ed6\u3002 \u73b0\u91d1\u51cf\u5c115%\uff01"

    .end local v4    # "r":I
    :cond_3
    :goto_3
    move-object v5, v1

    .line 2128
    goto :goto_2

    .line 2040
    .restart local v4    # "r":I
    :cond_4
    const/16 v5, 0x1c

    if-ge v4, v5, :cond_5

    .line 2041
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2042
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2043
    const-string v1, "    \u98de\u6da8\u7684\u623f\u4ef7\u8ba9\u6211\u63ea\u5fc3\u3002 \u5065\u5eb7\u51cf1\uff01"

    .line 2044
    goto :goto_3

    .line 2045
    :cond_5
    const/16 v5, 0x2a

    if-ge v4, v5, :cond_6

    .line 2046
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2047
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2048
    const-string v1, "    \u5403\u591a\u4e86\u54b8\u83dc\u9992\u5934\u7684\u6211\u6ca1\u7ecf\u4f4f\u5927\u9c7c\u5927\u8089\u7684\u8bf1\u60d1\uff0c \u5fcd\u4e0d\u4f4f\u53bb\u95e8\u53e3\u7684\u5c0f\u83dc\u9986\u5927\u5403\u4e86\u4e00\u987f\uff0c \u73b0\u91d1\u51cf\u5c1110%\uff01"

    .line 2049
    goto :goto_3

    .line 2050
    :cond_6
    const/16 v5, 0x38

    if-ge v4, v5, :cond_7

    .line 2051
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2052
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2053
    const-string v1, "    \u4e3a\u4e86\u591a\u5356\u4e00\u70b9\u8d27\uff0c \u8d76\u8def\u592a\u6025\u906d\u9047\u8f66\u7978\u3002 \u5065\u5eb7\u51cf\u5c113\uff01"

    .line 2054
    goto :goto_3

    .line 2055
    :cond_7
    const/16 v5, 0x46

    if-ge v4, v5, :cond_8

    .line 2056
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2057
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2058
    const-string v1, "    \u5546\u573a\u6253\u6298\u6211\u53bb\u62a2\u8d2d\uff0c \u4eba\u592a\u591a\u6324\u5f97\u6211\u5598\u4e0d\u8fc7\u6c14\u6765\u3002 \u5065\u5eb7\u51cf\u5c112\uff01"

    .line 2059
    goto/16 :goto_3

    .line 2060
    :cond_8
    const/16 v5, 0x54

    if-ge v4, v5, :cond_9

    .line 2061
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2062
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2063
    const-string v1, "    \u8d70\u8def\u73a9\u624b\u673a\u6ca1\u770b\u8def\uff0c \u6389\u8def\u8fb9\u6c9f\u91cc\u4e86\uff0c \u6454\u5f97\u6211\u5934\u7834\u8840\u6d41\u3002 \u5065\u5eb7\u51cf\u5c112\uff01"

    .line 2064
    goto/16 :goto_3

    .line 2065
    :cond_9
    const/16 v5, 0x62

    if-ge v4, v5, :cond_a

    .line 2066
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2067
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2068
    const-string v1, "    \u4e0d\u5c0f\u5fc3\u843d\u5165\u4f20\u9500\u9677\u9631\uff0c \u5e78\u597d\u6211\u627e\u673a\u4f1a\u9003\u4e86\u51fa\u6765\uff0c \u73b0\u91d1\u51cf\u5c1115%\uff01"

    .line 2069
    goto/16 :goto_3

    .line 2070
    :cond_a
    const/16 v5, 0x70

    if-ge v4, v5, :cond_b

    .line 2071
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2072
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 2073
    const-string v1, "    \u94f6\u884c\uff1a \u5c0f\u989d\u8d26\u6237\u8981\u6536\u7ba1\u7406\u8d39\uff01 \u5b58\u6b3e\u51cf\u5c111%\uff01"

    .line 2074
    goto/16 :goto_3

    .line 2075
    :cond_b
    const/16 v5, 0x7e

    if-ge v4, v5, :cond_c

    .line 2076
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2077
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2078
    const-string v1, "    \u5f00\u53d1\u5546\u5012\u95ed\uff0c \u6211\u7684\u96c6\u8d44\u6b3e\u5168\u6253\u4e86\u6c34\u6f02\u3002 \u73b0\u91d1\u51cf\u5c1120%\uff01"

    .line 2079
    goto/16 :goto_3

    .line 2080
    :cond_c
    const/16 v5, 0x8c

    if-ge v4, v5, :cond_d

    .line 2081
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2082
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2083
    const-string v1, "    \u4e3a\u4e86\u6512\u94b1\u6bcf\u5929\u53ea\u80fd\u5403\u54b8\u83dc\u9992\u5934\u3002 \u5065\u5eb7\u51cf1\uff01"

    .line 2084
    goto/16 :goto_3

    .line 2085
    :cond_d
    const/16 v5, 0x9a

    if-ge v4, v5, :cond_e

    .line 2086
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2087
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 2088
    const-string v1, "    \u6211\u8d70\u5728\u4eba\u884c\u9053\u4e0a\uff0c \u5929\u4e0a\u6389\u4e0b\u4e00\u4e2a\u82b1\u76c6\u628a\u6211\u7838\u6655\u4e86\u3002 \u5065\u5eb7\u51cf\u5c111\uff01"

    .line 2089
    goto/16 :goto_3

    .line 2090
    :cond_e
    const/16 v5, 0x9f

    if-ge v4, v5, :cond_f

    .line 2091
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2092
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, 0xc350

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2093
    const-string v1, "    \u6700\u8fd1\u80a1\u5e02\u5927\u6da8\uff0c \u6211\u88ab\u5957\u7684\u80a1\u7968\u8d5a\u94b1\u5566\u3002 \u73b0\u91d1\u589e\u52a05\u4e07\uff01"

    .line 2094
    goto/16 :goto_3

    .line 2095
    :cond_f
    const/16 v5, 0xa4

    if-ge v4, v5, :cond_10

    .line 2096
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2097
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, 0x186a0

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2098
    const-string v1, "    \u4e70\u5f69\u7968\u4e2d\u4e8610\u4e07\u5757\uff01 \u53d1\u5566\uff01"

    .line 2099
    goto/16 :goto_3

    .line 2100
    :cond_10
    const/16 v5, 0xa9

    if-ge v4, v5, :cond_11

    .line 2101
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2102
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 2103
    const-string v1, "    \u906d\u9047\u91d1\u878d\u5371\u673a\uff0c \u767e\u5e74\u94f6\u884c\u5012\u95ed\uff01 \u5b58\u6b3e\u51cf\u5c1150%\uff01"

    .line 2104
    goto/16 :goto_3

    .line 2105
    :cond_11
    const/16 v5, 0xb7

    if-ge v4, v5, :cond_12

    .line 2106
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2107
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 2108
    const-string v1, "    \u6211\u7528\u95f2\u94b1\u4e70\u4e86\u4f59\u989d\u5b9d\uff0c  \u5b58\u6b3e\u589e\u52a05%\uff01"

    .line 2109
    goto/16 :goto_3

    .line 2110
    :cond_12
    const/16 v5, 0xc5

    if-ge v4, v5, :cond_13

    .line 2111
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2112
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2113
    const-string v1, "    \u6b63\u9a91\u7740\u8f66\u5462\uff0c \u4e00\u4f4d\u5927\u5988\u7a81\u7136\u5f80\u6211\u8eab\u4e0a\u6454\u4e86\u8fc7\u6765\u3002 \u73b0\u91d1\u51cf\u5c1110%\uff01"

    .line 2114
    goto/16 :goto_3

    .line 2115
    :cond_13
    const/16 v5, 0xca

    if-ge v4, v5, :cond_14

    .line 2116
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2117
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2118
    const-string v1, "    \u6211\u56e0\u4e3a\u7ecf\u5e38\u6276\u8001\u5976\u5976\u8fc7\u9a6c\u8def\uff0c \u8d62\u5f97\u4e86\u793e\u533a\u597d\u9752\u5e74\u79f0\u53f7\uff0c \u73b0\u91d1\u589e\u52a01\u4e07\uff01"

    .line 2119
    goto/16 :goto_3

    .line 2120
    :cond_14
    const/16 v5, 0xcb

    if-ge v4, v5, :cond_3

    .line 2121
    iget v5, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    invoke-direct {p0, v5}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2122
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 2123
    const-string v1, "    \u5750\u98de\u673a\u9047\u5230\u6b79\u5f92\u52ab\u673a\uff0c \u6211\u679c\u65ad\u51fa\u624b\u5236\u6b62\uff0c \u516c\u53f8\u5956\u52b1\u6211\u89c1\u4e49\u52c7\u4e3a\uff0c \u73b0\u91d1\u589e\u52a0100\u4e07\uff01"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2125
    .end local v4    # "r":I
    :catch_0
    move-exception v0

    .line 2126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private GeneratePriceEvent()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1933
    const/4 v1, 0x0

    .line 1934
    .local v1, "event":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 1936
    .local v4, "r":D
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    .line 1937
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 1938
    cmpg-double v3, v4, v10

    if-gez v3, :cond_2

    .line 1939
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-lt v2, v3, :cond_1

    .line 1941
    const-string v1, "    \u5c0f\u9053\u6d88\u606f\u75af\u4f20\uff1a\u201c\u623f\u4ea7\u7a0e\u5373\u5c06\u51fa\u53f0\uff01\u201d\u8d2d\u623f\u8005\u7eb7\u7eb7\u6301\u5e01\u89c2\u671b\uff0c \u623f\u4ef7\u4e0b\u8dcc5%\u3002"

    .line 2015
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v1

    .line 1940
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1944
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget v3, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-lt v2, v3, :cond_3

    .line 1946
    const-string v1, "    \u4e13\u5bb6\u8bf4\uff1a\u201c\u4e2d\u56fd\u623f\u5730\u4ea7\u5e02\u573a\u57282100\u5e74\u4ee5\u524d\u4e0d\u4f1a\u51fa\u73b0\u6ce1\u6cab\uff01 \u623f\u4ef7\u5c06\u6301\u7eed\u4e0a\u6da8\uff0c \u623f\u4ef7\u4e0a\u6da810%\u3002\u201d"

    .line 1948
    goto :goto_1

    .line 1945
    :cond_3
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1944
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1950
    .end local v2    # "i":I
    :cond_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-double v4, v3

    .line 1951
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v12, :cond_0

    .line 1952
    int-to-double v6, v2

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_5

    .line 1951
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1955
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 1956
    cmpg-double v3, v4, v10

    if-gez v3, :cond_6

    .line 1957
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1960
    :goto_4
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1961
    cmpg-double v3, v4, v10

    if-gez v3, :cond_7

    .line 1962
    const-string v1, "    \u67d0\u8c03\u67e5\u8868\u660e\uff0c \u53d1\u8fbe\u56fd\u5bb6\u4eba\u6c11\u4e00\u76f4\u5728\u5403\u8f6c\u57fa\u56e0\u98df\u54c1\uff0c \u8f6c\u57fa\u56e0\u8c46\u5356\u706b\u4e86\u3002"

    goto/16 :goto_1

    .line 1959
    :cond_6
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2012
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1964
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_7
    :try_start_1
    const-string v1, "    \u7f51\u4e0a\u5c0f\u9053\u6d88\u606f\u75af\u4f20\uff0c \u90fd\u8bf4\u5403\u4e86\u8f6c\u57fa\u56e0\u98df\u54c1\u4f1a\u53d8\u6210\u5996\u602a\uff01 \u6ca1\u4eba\u6562\u4e70\u8f6c\u57fa\u56e0\u8c46\u4e86\u3002"

    .line 1965
    goto/16 :goto_1

    .line 1966
    :cond_8
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1967
    cmpg-double v3, v4, v10

    if-gez v3, :cond_9

    .line 1968
    const-string v1, "    \u6700\u65b0\u7814\u7a76\u8868\u660e\uff1a \u9e21\u8089\u662f\u4f18\u8d28\u86cb\u767d\u7684\u6700\u4f73\u6765\u6e90\uff0c \u9972\u6599\u8089\u9e21\u4f9b\u4e0d\u5e94\u6c42\u3002"

    goto/16 :goto_1

    .line 1970
    :cond_9
    const-string v1, "    H7N9\u79bd\u6d41\u611f\u75c5\u4f8b\u518d\u6b21\u51fa\u73b0\uff0c \u5168\u57ce\u706d\u6740\u6d3b\u79bd\uff0c \u6ca1\u4eba\u6562\u5403\u9972\u6599\u8089\u9e21\u4e86\u3002"

    .line 1971
    goto/16 :goto_1

    .line 1972
    :cond_a
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1973
    cmpg-double v3, v4, v10

    if-gez v3, :cond_b

    .line 1974
    const-string v1, "    \u7edf\u8ba1\u6570\u636e\u8868\u660e\uff1a \u4e2d\u56fd\u4eba\u5403\u4e8620\u5e74\u5730\u6c9f\u6cb9\uff0c 10\u987f\u996d\u5c31\u67091\u987f\u5730\u6c9f\u6cb9\uff0c \u5730\u6c9f\u6cb9\u6210\u4e3a\u4e86\u4eba\u4eec\u7684\u751f\u6d3b\u5fc5\u9700\u54c1\u3002"

    goto/16 :goto_1

    .line 1976
    :cond_b
    const-string v1, "    \u7816\u5bb6\u8bf4\uff1a\u201c\u5730\u6c9f\u6cb9\u6bd2\u6027\u6bd4\u7812\u971c\u8fd8\u5f3a\u767e\u500d\u3002\u201d\u4eba\u4eec\u8c08\u5730\u6c9f\u6cb9\u8272\u53d8\u3002"

    .line 1977
    goto/16 :goto_1

    .line 1978
    :cond_c
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1979
    cmpg-double v3, v4, v10

    if-gez v3, :cond_d

    .line 1980
    const-string v1, "    \u9999\u6e2f\u9881\u5e03\u5976\u7c89\u9650\u8d2d\u4ee4\uff0c \u643a\u5e26\u8d85\u91cd\u5976\u7c89\u5c06\u9762\u4e342\u5e74\u76d1\u7981\uff0c \u8fdb\u53e3\u5976\u7c89\u4ef7\u683c\u4e00\u8def\u98d9\u6da8\u3002"

    goto/16 :goto_1

    .line 1982
    :cond_d
    const-string v1, "    \u8fdb\u53e3\u5976\u7c89\u88ab\u68c0\u6d4b\u51fa\u6709\u6bd2\u7269\u8d28\uff0c \u8fdb\u53e3\u5976\u7c89\u4ef7\u683c\u4e0b\u8dcc\u3002"

    .line 1983
    goto/16 :goto_1

    .line 1984
    :cond_e
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1985
    cmpg-double v3, v4, v10

    if-gez v3, :cond_f

    .line 1986
    const-string v1, "    \u91cd\u5ea6\u96fe\u973e\u8fde\u7eed7\u5929\u7b3c\u7f69\u4e0d\u6563\uff0c \u9632\u6bd2\u9762\u5177\u5356\u8131\u9500\u4e86\uff01"

    goto/16 :goto_1

    .line 1988
    :cond_f
    const-string v1, "    APEC\u4f1a\u8bae\u9686\u91cd\u53ec\u5f00\uff0c \u84dd\u5929\u767d\u4e91\u98ce\u666f\u5982\u753b\uff0c \u9632\u6bd2\u9762\u5177\u65e0\u4eba\u95ee\u6d25\u3002"

    .line 1989
    goto/16 :goto_1

    .line 1990
    :cond_10
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1991
    cmpg-double v3, v4, v10

    if-gez v3, :cond_11

    .line 1992
    const-string v1, "    \u4e2d\u56fd\u5927\u5988\u6380\u8d77\u62a2\u91d1\u70ed\u6f6e\uff0c \u9ec4\u91d1\u9996\u9970\u4ef7\u683c\u98d9\u6da8\uff01"

    goto/16 :goto_1

    .line 1994
    :cond_11
    const-string v1, "    \u6b27\u7f8e\u7ecf\u6d4e\u6301\u7eed\u597d\u8f6c\uff0c \u56fd\u9645\u91d1\u4ef7\u4e00\u8def\u4e0b\u8dcc\uff0c \u9ec4\u91d1\u9996\u9970\u4ef7\u683c\u8d70\u4f4e\u3002"

    .line 1995
    goto/16 :goto_1

    .line 1996
    :cond_12
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1997
    cmpg-double v3, v4, v10

    if-gez v3, :cond_13

    .line 1998
    const-string v1, "    \u80be\u724c\u624b\u673a\u53c8\u51fa\u65b0\u6b3e\uff0c \u65e0\u77e5\u5c11\u5e74\u7eb7\u7eb7\u62a2\u8d2d\uff0c \u65b0\u8d27\u4f9b\u4e0d\u5e94\u6c42\uff01"

    goto/16 :goto_1

    .line 2000
    :cond_13
    const-string v1, "    \u975e\u6cd5\u5356\u80be\u635f\u5bb3\u5065\u5eb7\u5f97\u4e0d\u507f\u5931\uff0c \u65e0\u77e5\u5c11\u5e74\u5e61\u7136\u9192\u609f\uff0c \u80be\u724c\u624b\u673a\u964d\u4ef7\u9500\u552e\u3002"

    .line 2001
    goto/16 :goto_1

    .line 2002
    :cond_14
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2003
    cmpg-double v3, v4, v10

    if-gez v3, :cond_15

    .line 2004
    const-string v1, "    \u6c7d\u8f66\u7ecf\u9500\u5546\u8bf4\uff1a\u201c\u5de5\u5382\u4ea7\u80fd\u4e0d\u8db3\uff0c \u63d0\u8f66\u5fc5\u987b\u52a0\u4ef7\uff01\u201d"

    goto/16 :goto_1

    .line 2006
    :cond_15
    const-string v1, "    \u5404\u5730\u9646\u7eed\u63a8\u51fa\u8d2d\u8f66\u6447\u53f7\u653f\u7b56\uff0c \u673a\u52a8\u8f66\u9500\u91cf\u4e0b\u6ed1\u3002"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2008
    goto/16 :goto_1
.end method

.method private GenerateSick()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2131
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 2133
    .local v2, "r":I
    :try_start_0
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2134
    .local v1, "ihealth":I
    const/16 v4, 0x5f

    if-ge v1, v4, :cond_1

    rsub-int/lit8 v4, v1, 0x5f

    if-ge v2, v4, :cond_1

    .line 2135
    iget v4, p0, Lcom/zf/dsmfj/MaiFangJi;->s_dead:I

    invoke-direct {p0, v4}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    .line 2136
    const/4 v3, 0x2

    .line 2146
    .end local v1    # "ihealth":I
    :cond_0
    :goto_0
    return v3

    .line 2138
    .restart local v1    # "ihealth":I
    :cond_1
    rsub-int/lit8 v4, v1, 0x64

    if-ge v2, v4, :cond_0

    .line 2139
    iget v4, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    invoke-direct {p0, v4}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    const/4 v3, 0x1

    goto :goto_0

    .line 2144
    .end local v1    # "ihealth":I
    :catch_0
    move-exception v0

    .line 2145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private GetDailyGift()V
    .locals 1

    .prologue
    .line 1317
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$30;

    invoke-direct {v0, p0}, Lcom/zf/dsmfj/MaiFangJi$30;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 1487
    invoke-virtual {v0}, Lcom/zf/dsmfj/MaiFangJi$30;->start()V

    .line 1488
    return-void
.end method

.method private GetGift(Ljava/lang/String;)V
    .locals 28
    .param p1, "servertime"    # Ljava/lang/String;

    .prologue
    .line 1491
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    .local v24, "lognbr":Ljava/lang/String;
    move-object/from16 v19, v24

    .line 1492
    .local v19, "lastdate":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v25, "/data/data/com.zf.dsmfj/"

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v13, "fpath":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string v25, "/data/data/com.zf.dsmfj/data5"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v12, "f":Ljava/io/File;
    const/4 v14, 0x0

    .line 1496
    .local v14, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1497
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_0

    .line 1498
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 1499
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1501
    :try_start_0
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    .end local v14    # "fr":Ljava/io/FileReader;
    .local v15, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1503
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 1504
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v24

    .line 1513
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1519
    :goto_0
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .line 1527
    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    :cond_1
    :goto_1
    const-wide/16 v22, 0x0

    .line 1528
    .local v22, "llastdate":J
    const/16 v18, 0x0

    .line 1529
    .local v18, "ilognbr":I
    const-wide/16 v20, 0x0

    .line 1531
    .local v20, "lcurdate":J
    :try_start_5
    invoke-static/range {v19 .. v19}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result-wide v22

    .line 1536
    :goto_2
    :try_start_6
    invoke-static/range {v24 .. v24}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    move-result v18

    .line 1541
    :goto_3
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    move-result-wide v20

    .line 1545
    :goto_4
    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1546
    .local v10, "dlastdate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1547
    .local v7, "dcurdate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1548
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1549
    const/16 v25, 0x5

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1550
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1551
    .local v8, "ddayafterlastdate":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy-MM-dd"

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v9, "dformat":Ljava/text/SimpleDateFormat;
    const-string v25, "buddy"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "lastdate="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";curdate="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1554
    const-string v25, "buddy"

    const-string v26, "same day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :goto_5
    return-void

    .line 1505
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "dcurdate":Ljava/util/Date;
    .end local v8    # "ddayafterlastdate":Ljava/util/Date;
    .end local v9    # "dformat":Ljava/text/SimpleDateFormat;
    .end local v10    # "dlastdate":Ljava/util/Date;
    .end local v18    # "ilognbr":I
    .end local v20    # "lcurdate":J
    .end local v22    # "llastdate":J
    :catch_0
    move-exception v11

    .line 1507
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1513
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1519
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1520
    :catch_1
    move-exception v11

    .line 1522
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1514
    .local v11, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v11

    .line 1516
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1508
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 1510
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1513
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1519
    :goto_9
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 1520
    :catch_4
    move-exception v11

    .line 1522
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1514
    :catch_5
    move-exception v11

    .line 1516
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1511
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v25

    .line 1513
    :goto_a
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 1519
    :goto_b
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 1524
    :goto_c
    throw v25

    .line 1514
    :catch_6
    move-exception v11

    .line 1516
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 1520
    .end local v11    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v11

    .line 1522
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 1514
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v11

    .line 1516
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1520
    .end local v11    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v11

    .line 1522
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 1532
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v18    # "ilognbr":I
    .restart local v20    # "lcurdate":J
    .restart local v22    # "llastdate":J
    :catch_a
    move-exception v11

    .line 1533
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1537
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v11

    .line 1538
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1542
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v11

    .line 1543
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1557
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "dcurdate":Ljava/util/Date;
    .restart local v8    # "ddayafterlastdate":Ljava/util/Date;
    .restart local v9    # "dformat":Ljava/text/SimpleDateFormat;
    .restart local v10    # "dlastdate":Ljava/util/Date;
    :cond_2
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1558
    const-string v25, "buddy"

    const-string v26, "right day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    add-int/lit8 v25, v18, 0x1

    mul-int/lit8 v25, v25, 0xa

    invoke-static/range {v25 .. v25}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 1560
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/MaiFangJi;->lognbrtoshow:I

    .line 1561
    add-int/lit8 v18, v18, 0x1

    .line 1562
    const/16 v25, 0xa

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    .line 1563
    const/16 v18, 0x0

    .line 1564
    :cond_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1565
    const/16 v25, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 1576
    :goto_d
    const/16 v16, 0x0

    .line 1577
    .local v16, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 1579
    .local v4, "bw":Ljava/io/BufferedWriter;
    :try_start_10
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1580
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 1581
    :cond_4
    new-instance v17, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1582
    .end local v16    # "fw":Ljava/io/FileWriter;
    .local v17, "fw":Ljava/io/FileWriter;
    :try_start_11
    new-instance v5, Ljava/io/BufferedWriter;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1583
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_12
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1585
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1590
    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    .line 1596
    :goto_e
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object/from16 v16, v17

    .line 1597
    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_5

    .line 1568
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v16    # "fw":Ljava/io/FileWriter;
    :cond_5
    const-string v25, "buddy"

    const-string v26, "wrong day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/16 v18, 0x0

    .line 1570
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/MaiFangJi;->lognbrtoshow:I

    .line 1571
    const-string v25, "0"

    invoke-static/range {v25 .. v25}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1572
    const/16 v25, 0xa

    invoke-static/range {v25 .. v25}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 1573
    const/16 v25, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_d

    .line 1586
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    :catch_d
    move-exception v11

    .line 1587
    .restart local v11    # "e":Ljava/lang/Exception;
    :goto_f
    :try_start_15
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1590
    :try_start_16
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 1596
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_10
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    goto/16 :goto_5

    .line 1597
    :catch_e
    move-exception v11

    .line 1599
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1591
    .local v11, "e":Ljava/lang/Exception;
    :catch_f
    move-exception v11

    .line 1593
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 1588
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v25

    .line 1590
    :goto_11
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 1596
    :goto_12
    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 1601
    :goto_13
    throw v25

    .line 1591
    :catch_10
    move-exception v11

    .line 1593
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 1597
    .end local v11    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v11

    .line 1599
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 1591
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v17    # "fw":Ljava/io/FileWriter;
    :catch_12
    move-exception v11

    .line 1593
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 1597
    .end local v11    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v11

    .line 1599
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object/from16 v16, v17

    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_5

    .line 1588
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "fw":Ljava/io/FileWriter;
    .restart local v17    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v25

    move-object/from16 v16, v17

    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto :goto_11

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v16    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v17    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v25

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object/from16 v16, v17

    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto :goto_11

    .line 1586
    .end local v16    # "fw":Ljava/io/FileWriter;
    .restart local v17    # "fw":Ljava/io/FileWriter;
    :catch_14
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto :goto_f

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v16    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v17    # "fw":Ljava/io/FileWriter;
    :catch_15
    move-exception v11

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object/from16 v16, v17

    .end local v17    # "fw":Ljava/io/FileWriter;
    .restart local v16    # "fw":Ljava/io/FileWriter;
    goto :goto_f

    .line 1511
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "dcurdate":Ljava/util/Date;
    .end local v8    # "ddayafterlastdate":Ljava/util/Date;
    .end local v9    # "dformat":Ljava/text/SimpleDateFormat;
    .end local v10    # "dlastdate":Ljava/util/Date;
    .end local v14    # "fr":Ljava/io/FileReader;
    .end local v16    # "fw":Ljava/io/FileWriter;
    .end local v18    # "ilognbr":I
    .end local v20    # "lcurdate":J
    .end local v22    # "llastdate":J
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v25

    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catchall_5
    move-exception v25

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_a

    .line 1508
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catch_16
    move-exception v11

    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_8

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catch_17
    move-exception v11

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_8

    .line 1505
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catch_18
    move-exception v11

    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v14    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fr":Ljava/io/FileReader;
    :catch_19
    move-exception v11

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "fr":Ljava/io/FileReader;
    .restart local v14    # "fr":Ljava/io/FileReader;
    goto/16 :goto_6
.end method

.method private InitGame()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 328
    const/16 v1, 0xa

    iput v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    .line 338
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const-string v2, "\u5355\u8eab\u516c\u5bd3"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 340
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const-string v2, "\u4e8c\u624b\u65e7\u623f"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 341
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const-string v2, "\u9ad8\u6863\u5c0f\u533a"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 342
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const-string v2, "\u8dc3\u5c42\u5927\u623f"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 343
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "\u56db\u8054\u6392\u5c4b"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 344
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const-string v2, "\u4e00\u7ebf\u6c5f\u666f\u8c6a\u5b85"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 345
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "\u5185\u73af\u9ad8\u7aef\u5927\u5b85"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 346
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "\u5355\u4f53\u6cf3\u6c60\u522b\u5885"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 347
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\u70ed\u5e26\u5c0f\u5c9b\u522b\u5885"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 348
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\u706b\u661f\u79fb\u6c11\u57fa\u5730"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 349
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const-string v2, "    30\u5e73\u7c73\u7684\u5355\u8eab\u516c\u5bd3\uff0c 2\u4e2a\u4eba\u4f4f\u4e5f\u975e\u5e38\u6e29\u99a8\u3002"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 351
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const-string v2, "    90\u5e74\u4ee3\u5efa\u9020\u768480\u5e73\u7c73\u4e09\u623f\u65e7\u697c\uff0c \u867d\u7136\u662f\u8001\u623f\u5b50\uff0c \u4f46\u975e\u5e38\u5b9e\u7528\u3002"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 352
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const-string v2, "    \u73af\u5883\u4f18\u96c5\u7684\u65b0\u5efa\u9ad8\u6863\u5c0f\u533a\uff0c \u662f\u57ce\u5e02\u767d\u9886\u7684\u805a\u96c6\u5730\u3002"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 353
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const-string v2, "    180\u5e73\u7c73\u7684\u8dc3\u5c42\u697c\u9876\u5927\u623f\uff0c \u975e\u5e38\u5730\u5bbd\u655e\u597d\u7528\u3002"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 354
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "    280\u5e73\u7c73\u7684\u4e09\u5c42\u6392\u5c4b\uff0c \u8fd8\u5e26\u4e00\u4e2a\u5c0f\u9662\uff0c \u4e09\u4ee3\u4eba\u540c\u4f4f\u4e5f\u975e\u5e38\u8212\u9002\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 355
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const-string v2, "    \u98ce\u666f\u4f18\u7f8e\u3001 \u4f4d\u7f6e\u7a00\u7f3a\uff0c \u5c5e\u4e8e\u57ce\u5e02\u7cbe\u82f1\u7684\u4e00\u7ebf\u6c5f\u666f\u8c6a\u5b85\u3002"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 356
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "    \u4f4d\u4e8e\u6838\u5fc3\u57ce\u533a\uff0c \u8bbe\u8ba1\u5962\u534e\u3001 \u95f9\u4e2d\u53d6\u9759\u7684\u9ad8\u7aef\u8c6a\u534e\u5927\u5b85\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 357
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "    \u68ee\u6797\u73af\u7ed5\u3001 \u73af\u5883\u96c5\u81f4\uff0c \u5e26\u6cf3\u6c60\u548c\u82b1\u56ed\u7684\u8d85\u7ea7\u522b\u5885\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 358
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "    \u5efa\u9020\u5728\u5c0f\u5c9b\u4e0a\u7684\u5ea6\u5047\u522b\u5885\uff0c \u5c5e\u4e8e\u4f60\u7684\u79c1\u4eba\u5c0f\u5c9b\u548c\u79c1\u5bb6\u6d77\u6ee9\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 359
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "    \u4e3a\u5730\u7403\u6bc1\u706d\u800c\u51c6\u5907\u7684\uff0c \u5efa\u9020\u5728\u706b\u661f\u4e0a\u7684\u79fb\u6c11\u57fa\u5730\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 360
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const-string v2, "400000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 362
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const-string v2, "1200000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 363
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const-string v2, "2400000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 364
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const-string v2, "4000000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 365
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "6000000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 366
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const-string v2, "10000000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 367
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "20000000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 368
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "50000000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 369
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "100000000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 370
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "300000000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 371
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const-string v2, "    \u4e00\u5e74\u7684\u52aa\u529b\uff0c \u6211\u7ec8\u4e8e\u5728\u8fd9\u4e2a\u57ce\u5e02\u6709\u4e86\u4e00\u4e2a\u5bb6\uff0c \u867d\u7136\u5f88\u5c0f\uff0c \u4f46\u662f\u5f88\u6e29\u99a8\uff01"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 373
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const-string v2, "    \u4e00\u5e74\u7684\u54b8\u83dc\u9992\u5934\u6ca1\u6709\u767d\u8d39\uff0c \u6211\u7684\u52aa\u529b\u6362\u6765\u4e86\u4e00\u5957\u4e8c\u624b\u65e7\u623f\uff0c \u5728\u8fd9\u4e2a\u57ce\u5e02\u6709\u4e86\u5b89\u5bb6\u843d\u811a\u7684\u5730\u65b9\uff01"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 374
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const-string v2, "    \u901a\u8fc7\u4e00\u5e74\u7684\u52aa\u529b\uff0c \u6211\u7ec8\u4e8e\u5728\u4e00\u4e2a\u9ad8\u6863\u5c0f\u533a\u4e70\u4e0a\u4e86\u623f\u5b50\uff0c \u89e3\u51b3\u4e86\u5a5a\u623f\u95ee\u9898\uff0c \u7f8e\u597d\u7684\u751f\u6d3b\u5c31\u5728\u773c\u524d\uff01"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 375
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const-string v2, "    \u4e00\u5e74\u975e\u4eba\u7684\u751f\u6d3b\uff0c \u4ed8\u51fa\u8d85\u4e4e\u5e38\u4eba\u7684\u52aa\u529b\uff0c \u6211\u4e70\u5230\u4e86\u4e00\u5957\u8dc3\u5c42\u7684\u5927\u623f\u5b50\uff0c \u6210\u529f\u8dfb\u8eab\u5c0f\u571f\u8c6a\u884c\u5217\uff01"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 376
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "    \u6211\u7684\u667a\u6167\u548c\u52aa\u529b\u5f97\u5230\u4e86\u56de\u62a5\uff0c \u7528\u4e00\u5e74\u65f6\u95f4\u5728\u8fd9\u4e2a\u57ce\u5e02\u4e70\u5230\u4e86\u4e00\u59573\u5c42\u7684\u5927\u623f\u5b50\uff0c \u5b8c\u6210\u4e86\u51e0\u4e4e\u4e0d\u53ef\u80fd\u5b8c\u6210\u7684\u4efb\u52a1\uff0c \u65e0\u6127\u5c0f\u8d85\u4eba\u5934\u8854\uff01"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 377
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const-string v2, "    \u4e00\u5e74\u7684\u594b\u6597\uff0c \u6211\u4ece\u4e00\u540d\u8349\u6839\u9752\u5e74\u664b\u7ea7\u6210\u4e3a\u57ce\u5e02\u7cbe\u82f1\uff0c \u8fdb\u5165\u4e86\u8fd9\u4e2a\u57ce\u5e02\u7684\u6210\u529f\u4eba\u58eb\u5c0f\u5708\u5b50\u4e2d\uff01"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 378
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "    \u767d\u624b\u8d77\u5bb6\uff0c \u4e00\u5e74\u65f6\u95f4\u8dfb\u8eab\u5bcc\u8c6a\u884c\u5217\uff0c \u6211\u7684\u6210\u529f\u7ecf\u5386\uff0c \u6210\u4e3a\u4e86\u5145\u6ee1\u68a6\u60f3\u7684\u5e74\u8f7b\u4eba\u6d25\u6d25\u4e50\u9053\u7684\u699c\u6837\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 379
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "    \u4ece\u8349\u6839\u9752\u5e74\u5230\u8d85\u7ea7\u5bcc\u8c6a\uff0c \u6211\u53ea\u7528\u4e86\u4e00\u5e74\u65f6\u95f4\uff0c \u6211\u7684\u6210\u529f\u5728\u522b\u4eba\u773c\u4e2d\u663e\u5f97\u975e\u5e38\u795e\u79d8\u548c\u9065\u4e0d\u53ef\u53ca\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 380
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "    \u4e00\u5e74\u65f6\u95f4\uff0c \u6211\u521b\u9020\u51fa\u4e86\u4ece\u672a\u6709\u4eba\u521b\u9020\u8fc7\u7684\u795e\u8bdd\uff0c \u91d1\u94b1\u5bf9\u6211\u6765\u8bf4\u5df2\u7ecf\u50cf\u7a7a\u6c14\u4e00\u6837\u53d6\u4e4b\u4e0d\u5c3d\uff0c \u6211\u8eba\u5728\u81ea\u5bb6\u7684\u6c99\u6ee9\u4e0a\uff0c \u6652\u7740\u592a\u9633\uff0c \u601d\u8003\u4eba\u751f\u7684\u610f\u4e49\u7a76\u7adf\u4f55\u5728\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 381
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "    \u80fd\u529b\u8d8a\u5927\u7684\u4eba\uff0c \u6ce8\u5b9a\u8981\u627f\u62c5\u66f4\u5927\u7684\u8d23\u4efb\uff0c \u6211\u51b3\u5b9a\u6210\u4e3a\u4eba\u7c7b\u7684\u5148\u9a71\uff0c \u79fb\u6c11\u706b\u661f\uff0c \u6210\u4e3a\u4e00\u540d\u706b\u661f\u4eba\u3002 \u518d\u89c1\uff0c \u5730\u7403\u3002 \u518d\u89c1\uff0c \u4eba\u7c7b\u3002"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 382
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    .line 383
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const v2, 0x7f02010e

    aput v2, v1, v5

    .line 384
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const v2, 0x7f020110

    aput v2, v1, v6

    .line 385
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const v2, 0x7f020111

    aput v2, v1, v7

    .line 386
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const v2, 0x7f020112

    aput v2, v1, v8

    .line 387
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const/4 v2, 0x4

    const v3, 0x7f020113

    aput v3, v1, v2

    .line 388
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const v2, 0x7f020114

    aput v2, v1, v4

    .line 389
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const/4 v2, 0x6

    const v3, 0x7f020115

    aput v3, v1, v2

    .line 390
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const/4 v2, 0x7

    const v3, 0x7f020116

    aput v3, v1, v2

    .line 391
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const/16 v2, 0x8

    const v3, 0x7f020117

    aput v3, v1, v2

    .line 392
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    const/16 v2, 0x9

    const v3, 0x7f02010f

    aput v3, v1, v2

    .line 393
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    .line 394
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const v2, 0x7f020120

    aput v2, v1, v5

    .line 395
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const v2, 0x7f020122

    aput v2, v1, v6

    .line 396
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const v2, 0x7f020123

    aput v2, v1, v7

    .line 397
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const v2, 0x7f020124

    aput v2, v1, v8

    .line 398
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const/4 v2, 0x4

    const v3, 0x7f020125

    aput v3, v1, v2

    .line 399
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const v2, 0x7f020126

    aput v2, v1, v4

    .line 400
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const/4 v2, 0x6

    const v3, 0x7f020127

    aput v3, v1, v2

    .line 401
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const/4 v2, 0x7

    const v3, 0x7f020128

    aput v3, v1, v2

    .line 402
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const/16 v2, 0x8

    const v3, 0x7f020129

    aput v3, v1, v2

    .line 403
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    const/16 v2, 0x9

    const v3, 0x7f020121

    aput v3, v1, v2

    .line 404
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 406
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 407
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const-string v2, "5"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 408
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const-string v2, "7"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 409
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "9"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 410
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const-string v2, "11"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 411
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "13"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 412
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "15"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 413
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "20"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 414
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "50"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 416
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    .line 417
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    .line 418
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    .line 419
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfect:[Z

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-lt v0, v1, :cond_0

    .line 426
    iput v5, p0, Lcom/zf/dsmfj/MaiFangJi;->selhouse:I

    .line 427
    iput v5, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    .line 429
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const-string v2, "\u8f6c\u57fa\u56e0\u8c46"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 431
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const-string v2, "\u9972\u6599\u8089\u9e21"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 432
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const-string v2, "\u5730\u6c9f\u6cb9"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 433
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const-string v2, "\u8fdb\u53e3\u5976\u7c89"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 434
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "\u9632\u6bd2\u9762\u5177"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 435
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const-string v2, "\u9ec4\u91d1\u9996\u9970"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 436
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "\u80be\u724c\u624b\u673a"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 437
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "\u56fd\u4ea7\u6c7d\u8f66"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 438
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const-string v2, "90"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 440
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const-string v2, "170"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 441
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const-string v2, "380"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 442
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const-string v2, "720"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 443
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "1500"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 444
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const-string v2, "3000"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 445
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "7000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 446
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "19000"

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 447
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    .line 448
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const v2, 0x7f020109

    aput v2, v1, v5

    .line 449
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const v2, 0x7f0200f0

    aput v2, v1, v6

    .line 450
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const v2, 0x7f0200c8

    aput v2, v1, v7

    .line 451
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const v2, 0x7f0200d6

    aput v2, v1, v8

    .line 452
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const/4 v2, 0x4

    const v3, 0x7f0200cb

    aput v3, v1, v2

    .line 453
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const v2, 0x7f0200d4

    aput v2, v1, v4

    .line 454
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const/4 v2, 0x6

    const v3, 0x7f0200f4

    aput v3, v1, v2

    .line 455
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    const/4 v2, 0x7

    const v3, 0x7f0200cf

    aput v3, v1, v2

    .line 456
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    .line 457
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const v2, 0x7f02010a

    aput v2, v1, v5

    .line 458
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const v2, 0x7f0200f1

    aput v2, v1, v6

    .line 459
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const v2, 0x7f0200c9

    aput v2, v1, v7

    .line 460
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const v2, 0x7f0200d7

    aput v2, v1, v8

    .line 461
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const/4 v2, 0x4

    const v3, 0x7f0200cc

    aput v3, v1, v2

    .line 462
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const v2, 0x7f0200d5

    aput v2, v1, v4

    .line 463
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const/4 v2, 0x6

    const v3, 0x7f0200f5

    aput v3, v1, v2

    .line 464
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    const/4 v2, 0x7

    const v3, 0x7f0200d0

    aput v3, v1, v2

    .line 465
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    .line 466
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const v2, 0x7f0200be

    aput v2, v1, v5

    .line 467
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const v2, 0x7f020087

    aput v2, v1, v6

    .line 468
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const v2, 0x7f020032

    aput v2, v1, v7

    .line 469
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const v2, 0x7f02004f

    aput v2, v1, v8

    .line 470
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const/4 v2, 0x4

    const v3, 0x7f020039

    aput v3, v1, v2

    .line 471
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const v2, 0x7f02004b

    aput v2, v1, v4

    .line 472
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const/4 v2, 0x6

    const v3, 0x7f02008f

    aput v3, v1, v2

    .line 473
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    const/4 v2, 0x7

    const v3, 0x7f020041

    aput v3, v1, v2

    .line 474
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    .line 475
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const v2, 0x7f0200c0

    aput v2, v1, v5

    .line 476
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const v2, 0x7f020089

    aput v2, v1, v6

    .line 477
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const v2, 0x7f020034

    aput v2, v1, v7

    .line 478
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const v2, 0x7f020051

    aput v2, v1, v8

    .line 479
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const/4 v2, 0x4

    const v3, 0x7f02003b

    aput v3, v1, v2

    .line 480
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const v2, 0x7f02004d

    aput v2, v1, v4

    .line 481
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const/4 v2, 0x6

    const v3, 0x7f020091

    aput v3, v1, v2

    .line 482
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    const/4 v2, 0x7

    const v3, 0x7f020043

    aput v3, v1, v2

    .line 484
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    .line 485
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    .line 486
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    .line 487
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresmforw:[I

    .line 488
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgm:[I

    .line 489
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgmforw:[I

    .line 492
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    .line 493
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    .line 494
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    .line 495
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresw:[I

    .line 496
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgw:[I

    .line 498
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 507
    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 508
    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 509
    const-string v1, "100"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 510
    const-string v1, "100"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->reputation:Ljava/lang/String;

    .line 511
    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    .line 512
    const-string v1, "3000"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->defaultcash:Ljava/lang/String;

    .line 513
    const-string v1, ""

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    .line 514
    const-string v1, "100"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    .line 515
    const-string v1, "100"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    .line 516
    const-string v1, "100"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    .line 517
    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    .line 518
    const-string v1, ""

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    .line 519
    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    .line 526
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    .line 527
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshWarehouse()V

    .line 529
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->InitGame_SetInvisible()V

    .line 530
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->hchangecash:Landroid/os/Handler;

    .line 531
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadSound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zf/dsmfj/MaiFangJi;->soundon:Z

    .line 532
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    const-string v2, "\u4ece\u672a\u6210\u529f"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 422
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 423
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 424
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfect:[Z

    aput-boolean v6, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 501
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 503
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 504
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 505
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private InitGame_SetInvisible()V
    .locals 41

    .prologue
    .line 535
    const v40, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 536
    .local v9, "bmslot1":Landroid/widget/Button;
    const v40, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 537
    .local v10, "bmslot2":Landroid/widget/Button;
    const v40, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 538
    .local v11, "bmslot3":Landroid/widget/Button;
    const v40, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 539
    .local v12, "bmslot4":Landroid/widget/Button;
    const v40, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 540
    .local v13, "bmslot5":Landroid/widget/Button;
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 545
    const v40, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 546
    .local v24, "tmslotprice1":Landroid/widget/TextView;
    const v40, 0x7f070048

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 547
    .local v25, "tmslotprice2":Landroid/widget/TextView;
    const v40, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 548
    .local v26, "tmslotprice3":Landroid/widget/TextView;
    const v40, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 549
    .local v27, "tmslotprice4":Landroid/widget/TextView;
    const v40, 0x7f07004b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 550
    .local v28, "tmslotprice5":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    const/16 v40, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    const/16 v40, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    const/16 v40, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    const/16 v40, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    const v40, 0x7f070052

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 557
    .local v14, "bwslot1":Landroid/widget/Button;
    const v40, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 558
    .local v15, "bwslot2":Landroid/widget/Button;
    const v40, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 559
    .local v16, "bwslot3":Landroid/widget/Button;
    const v40, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 560
    .local v17, "bwslot4":Landroid/widget/Button;
    const v40, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 561
    .local v18, "bwslot5":Landroid/widget/Button;
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    const/16 v40, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    const/16 v40, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    const/16 v40, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 566
    const v40, 0x7f070057

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 567
    .local v35, "twslotprice1":Landroid/widget/TextView;
    const v40, 0x7f070058

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 568
    .local v36, "twslotprice2":Landroid/widget/TextView;
    const v40, 0x7f070059

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 569
    .local v37, "twslotprice3":Landroid/widget/TextView;
    const v40, 0x7f07005a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 570
    .local v38, "twslotprice4":Landroid/widget/TextView;
    const v40, 0x7f07005b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 571
    .local v39, "twslotprice5":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    const/16 v40, 0x4

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    const/16 v40, 0x4

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    const/16 v40, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    const/16 v40, 0x4

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    const v40, 0x7f07005c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 577
    .local v30, "twslotnbr1":Landroid/widget/TextView;
    const v40, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 578
    .local v31, "twslotnbr2":Landroid/widget/TextView;
    const v40, 0x7f07005e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 579
    .local v32, "twslotnbr3":Landroid/widget/TextView;
    const v40, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 580
    .local v33, "twslotnbr4":Landroid/widget/TextView;
    const v40, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 581
    .local v34, "twslotnbr5":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    const/16 v40, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    const/16 v40, 0x4

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    const/16 v40, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    const/16 v40, 0x4

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    const v40, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 588
    .local v23, "thouseprice":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    const v40, 0x7f07003c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 591
    .local v20, "tdate":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    const v40, 0x7f070064

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 594
    .local v19, "tcash":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    const v40, 0x7f07006b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 597
    .local v21, "tdeposit":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    const v40, 0x7f070066

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 600
    .local v22, "thealth":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    const v40, 0x7f07006d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 603
    .local v29, "treputation":Landroid/widget/TextView;
    const/16 v40, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    const v40, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 606
    .local v6, "bmarket1":Landroid/widget/Button;
    const v40, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 607
    .local v7, "bmarket2":Landroid/widget/Button;
    const v40, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 608
    .local v8, "bmarket3":Landroid/widget/Button;
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 609
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 610
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 611
    const v40, 0x7f070073

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 612
    .local v3, "bbank":Landroid/widget/Button;
    const v40, 0x7f070074

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 613
    .local v4, "bhospital":Landroid/widget/Button;
    const v40, 0x7f070075

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 614
    .local v5, "bhouseseller":Landroid/widget/Button;
    const v40, 0x7f070076

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 615
    .local v2, "bagent":Landroid/widget/Button;
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 617
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 623
    return-void
.end method

.method private NewGame()V
    .locals 58

    .prologue
    .line 1040

    invoke-static {}, Lcom/zf/dsmfj/Util;->RemoveAd()V

    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    const/16 v53, 0x5

    move/from16 v0, v26

    move/from16 v1, v53

    if-lt v0, v1, :cond_2

    .line 1046
    const/16 v26, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    move/from16 v53, v0

    move/from16 v0, v26

    move/from16 v1, v53

    if-lt v0, v1, :cond_3

    .line 1049
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->defaultcash:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v56

    add-long v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_2
    const-string v53, "0"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 1056
    const-string v53, "100"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 1057
    const-string v53, "100"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->reputation:Ljava/lang/String;

    .line 1058
    const-string v53, "0"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    .line 1059
    const-string v53, "100"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    .line 1060
    const-string v53, "500"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    .line 1061
    const-string v53, "100"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    .line 1062
    const-string v53, "0"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    .line 1065
    const v53, 0x7f07007b

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    .line 1066
    .local v31, "rgameover":Landroid/widget/RelativeLayout;
    const/16 v53, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1067
    const v53, 0x7f070006

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1068
    .local v12, "bmoregames":Landroid/widget/Button;
    const/16 v53, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    const/high16 v53, 0x7f070000

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 1070
    .local v28, "ibg1":Landroid/widget/ImageView;
    const/16 v53, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1071
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1073
    const v53, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1074
    .local v13, "bmslot1":Landroid/widget/Button;
    const v53, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1075
    .local v14, "bmslot2":Landroid/widget/Button;
    const v53, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 1076
    .local v15, "bmslot3":Landroid/widget/Button;
    const v53, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 1077
    .local v16, "bmslot4":Landroid/widget/Button;
    const v53, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 1078
    .local v17, "bmslot5":Landroid/widget/Button;
    const/16 v53, 0x0

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1079
    const/16 v53, 0x0

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1080
    const/16 v53, 0x0

    move/from16 v0, v53

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1081
    const/16 v53, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1082
    const/16 v53, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1083
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1084
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1085
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1086
    const/16 v53, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1087
    const/16 v53, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1088
    const v53, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 1089
    .local v37, "tmslotprice1":Landroid/widget/TextView;
    const v53, 0x7f070048

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1090
    .local v38, "tmslotprice2":Landroid/widget/TextView;
    const v53, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1091
    .local v39, "tmslotprice3":Landroid/widget/TextView;
    const v53, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1092
    .local v40, "tmslotprice4":Landroid/widget/TextView;
    const v53, 0x7f07004b

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1093
    .local v41, "tmslotprice5":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    const/16 v53, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    const/16 v53, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    const/16 v53, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    const/16 v53, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    const v53, 0x7f070052

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 1100
    .local v19, "bwslot1":Landroid/widget/Button;
    const v53, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 1101
    .local v20, "bwslot2":Landroid/widget/Button;
    const v53, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 1102
    .local v21, "bwslot3":Landroid/widget/Button;
    const v53, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 1103
    .local v22, "bwslot4":Landroid/widget/Button;
    const v53, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 1104
    .local v23, "bwslot5":Landroid/widget/Button;
    const/16 v53, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1105
    const/16 v53, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1106
    const/16 v53, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1107
    const/16 v53, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1108
    const/16 v53, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1109
    const/16 v53, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1110
    const/16 v53, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1111
    const/16 v53, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1112
    const/16 v53, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1113
    const/16 v53, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1114
    const v53, 0x7f070057

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 1115
    .local v48, "twslotprice1":Landroid/widget/TextView;
    const v53, 0x7f070058

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 1116
    .local v49, "twslotprice2":Landroid/widget/TextView;
    const v53, 0x7f070059

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 1117
    .local v50, "twslotprice3":Landroid/widget/TextView;
    const v53, 0x7f07005a

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 1118
    .local v51, "twslotprice4":Landroid/widget/TextView;
    const v53, 0x7f07005b

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 1119
    .local v52, "twslotprice5":Landroid/widget/TextView;
    const/16 v53, 0x4

    move-object/from16 v0, v48

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    const/16 v53, 0x4

    move-object/from16 v0, v49

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    const/16 v53, 0x4

    move-object/from16 v0, v50

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    const/16 v53, 0x4

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1123
    const/16 v53, 0x4

    invoke-virtual/range {v52 .. v53}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    const v53, 0x7f07005c

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 1125
    .local v43, "twslotnbr1":Landroid/widget/TextView;
    const v53, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 1126
    .local v44, "twslotnbr2":Landroid/widget/TextView;
    const v53, 0x7f07005e

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 1127
    .local v45, "twslotnbr3":Landroid/widget/TextView;
    const v53, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 1128
    .local v46, "twslotnbr4":Landroid/widget/TextView;
    const v53, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 1129
    .local v47, "twslotnbr5":Landroid/widget/TextView;
    const/16 v53, 0x4

    move-object/from16 v0, v43

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    const/16 v53, 0x4

    move-object/from16 v0, v44

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    const/16 v53, 0x4

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    const/16 v53, 0x4

    move-object/from16 v0, v46

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    const/16 v53, 0x4

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    const v53, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1136
    .local v36, "thouseprice":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    const v53, 0x7f07003c

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 1139
    .local v33, "tdate":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    const v53, 0x7f070064

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1142
    .local v32, "tcash":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    const v53, 0x7f07006b

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 1145
    .local v34, "tdeposit":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    const v53, 0x7f070066

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1148
    .local v35, "thealth":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    const v53, 0x7f07006d

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1151
    .local v42, "treputation":Landroid/widget/TextView;
    const/16 v53, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    const v53, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1154
    .local v9, "bmarket1":Landroid/widget/Button;
    const v53, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1155
    .local v10, "bmarket2":Landroid/widget/Button;
    const v53, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1156
    .local v11, "bmarket3":Landroid/widget/Button;
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1157
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1158
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1159
    const v53, 0x7f070073

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1160
    .local v6, "bbank":Landroid/widget/Button;
    const v53, 0x7f070074

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1161
    .local v7, "bhospital":Landroid/widget/Button;
    const v53, 0x7f070075

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1162
    .local v8, "bhouseseller":Landroid/widget/Button;
    const v53, 0x7f070076

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1163
    .local v5, "bagent":Landroid/widget/Button;
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1164
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1165
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1166
    const/16 v53, 0x1

    move/from16 v0, v53

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1168
    const v53, 0x7f070070

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1169
    .local v18, "bstart":Landroid/widget/Button;
    const v53, 0x7f0200d8

    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1170
    new-instance v53, Lcom/zf/dsmfj/MaiFangJi$26;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$26;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    const-string v53, "5"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->moretimecount:Ljava/lang/String;

    .line 1179
    new-instance v53, Lcom/zf/dsmfj/MaiFangJi$27;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$27;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->hevent:Landroid/os/Handler;

    .line 1192
    new-instance v53, Lcom/zf/dsmfj/MaiFangJi$28;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$28;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->hsickevent:Landroid/os/Handler;

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->NewWeek()V

    .line 1212
    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    .line 1214
    const-string v53, "    \u6211\u6765\u5230\u8fd9\u4e2a\u57ce\u5e02\u5df2\u7ecf\u56db\u5e74\u4e86\uff0c \u5408\u79df\u3001 \u52a0\u73ed\u3001 \u6708\u5149\u7684\u65e5\u5b50\u8ba9\u6211\u5341\u5206\u75b2\u60eb\uff0c \u4e70\u623f\u7684\u68a6\u60f3\u9065\u4e0d\u53ef\u53ca\uff0c \u56de\u8001\u5bb6\u8fd8\u662f\u7ee7\u7eed\u575a\u6301\uff1f \u6211\u51b3\u5b9a\u7528\u4e00\u5e74\u65f6\u95f4\u505a\u6700\u540e\u4e00\u6b21\u52aa\u529b\uff01"

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    .line 1215
    const/16 v53, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 1216
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zf/dsmfj/MaiFangJi;->adshowing:Z

    .line 1217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->badadmax:I

    move/from16 v53, v0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zf/dsmfj/MaiFangJi;->badadleft:I

    .line 1219
    const/16 v30, 0x0

    .line 1221
    .local v30, "iextracash":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v30

    .line 1226
    :goto_3
    if-lez v30, :cond_0

    .line 1227
    const-string v53, "addcash"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1228
    .local v4, "addcash":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1230
    .local v27, "iaddcash":I
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v27

    .line 1235
    :goto_4
    add-int/lit8 v27, v27, 0x1

    .line 1236
    const-string v53, "addcash"

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .end local v4    # "addcash":Ljava/lang/String;
    .end local v27    # "iaddcash":I
    :cond_0
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v53

    if-eqz v53, :cond_1

    .line 1240
    const-string v53, "crazy"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1241
    .local v24, "crazy":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1243
    .local v29, "icrazy":I
    :try_start_3
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v29

    .line 1248
    :goto_5
    add-int/lit8 v29, v29, 0x1

    .line 1249
    const-string v53, "crazy"

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .end local v24    # "crazy":Ljava/lang/String;
    .end local v29    # "icrazy":I
    :cond_1
    return-void

    .line 1041
    .end local v5    # "bagent":Landroid/widget/Button;
    .end local v6    # "bbank":Landroid/widget/Button;
    .end local v7    # "bhospital":Landroid/widget/Button;
    .end local v8    # "bhouseseller":Landroid/widget/Button;
    .end local v9    # "bmarket1":Landroid/widget/Button;
    .end local v10    # "bmarket2":Landroid/widget/Button;
    .end local v11    # "bmarket3":Landroid/widget/Button;
    .end local v12    # "bmoregames":Landroid/widget/Button;
    .end local v13    # "bmslot1":Landroid/widget/Button;
    .end local v14    # "bmslot2":Landroid/widget/Button;
    .end local v15    # "bmslot3":Landroid/widget/Button;
    .end local v16    # "bmslot4":Landroid/widget/Button;
    .end local v17    # "bmslot5":Landroid/widget/Button;
    .end local v18    # "bstart":Landroid/widget/Button;
    .end local v19    # "bwslot1":Landroid/widget/Button;
    .end local v20    # "bwslot2":Landroid/widget/Button;
    .end local v21    # "bwslot3":Landroid/widget/Button;
    .end local v22    # "bwslot4":Landroid/widget/Button;
    .end local v23    # "bwslot5":Landroid/widget/Button;
    .end local v28    # "ibg1":Landroid/widget/ImageView;
    .end local v30    # "iextracash":I
    .end local v31    # "rgameover":Landroid/widget/RelativeLayout;
    .end local v32    # "tcash":Landroid/widget/TextView;
    .end local v33    # "tdate":Landroid/widget/TextView;
    .end local v34    # "tdeposit":Landroid/widget/TextView;
    .end local v35    # "thealth":Landroid/widget/TextView;
    .end local v36    # "thouseprice":Landroid/widget/TextView;
    .end local v37    # "tmslotprice1":Landroid/widget/TextView;
    .end local v38    # "tmslotprice2":Landroid/widget/TextView;
    .end local v39    # "tmslotprice3":Landroid/widget/TextView;
    .end local v40    # "tmslotprice4":Landroid/widget/TextView;
    .end local v41    # "tmslotprice5":Landroid/widget/TextView;
    .end local v42    # "treputation":Landroid/widget/TextView;
    .end local v43    # "twslotnbr1":Landroid/widget/TextView;
    .end local v44    # "twslotnbr2":Landroid/widget/TextView;
    .end local v45    # "twslotnbr3":Landroid/widget/TextView;
    .end local v46    # "twslotnbr4":Landroid/widget/TextView;
    .end local v47    # "twslotnbr5":Landroid/widget/TextView;
    .end local v48    # "twslotprice1":Landroid/widget/TextView;
    .end local v49    # "twslotprice2":Landroid/widget/TextView;
    .end local v50    # "twslotprice3":Landroid/widget/TextView;
    .end local v51    # "twslotprice4":Landroid/widget/TextView;
    .end local v52    # "twslotprice5":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, ""

    aput-object v54, v53, v26

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, ""

    aput-object v54, v53, v26

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, ""

    aput-object v54, v53, v26

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, ""

    aput-object v54, v53, v26

    .line 1040
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 1047
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housepriceo:[Ljava/lang/String;

    move-object/from16 v54, v0

    aget-object v54, v54, v26

    invoke-static/range {v54 .. v54}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v53, v26

    .line 1046
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 1051
    :catch_0
    move-exception v25

    .line 1052
    .local v25, "e":Ljava/lang/Exception;
    const-string v53, "3000"

    invoke-static/range {v53 .. v53}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 1053
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1222
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v5    # "bagent":Landroid/widget/Button;
    .restart local v6    # "bbank":Landroid/widget/Button;
    .restart local v7    # "bhospital":Landroid/widget/Button;
    .restart local v8    # "bhouseseller":Landroid/widget/Button;
    .restart local v9    # "bmarket1":Landroid/widget/Button;
    .restart local v10    # "bmarket2":Landroid/widget/Button;
    .restart local v11    # "bmarket3":Landroid/widget/Button;
    .restart local v12    # "bmoregames":Landroid/widget/Button;
    .restart local v13    # "bmslot1":Landroid/widget/Button;
    .restart local v14    # "bmslot2":Landroid/widget/Button;
    .restart local v15    # "bmslot3":Landroid/widget/Button;
    .restart local v16    # "bmslot4":Landroid/widget/Button;
    .restart local v17    # "bmslot5":Landroid/widget/Button;
    .restart local v18    # "bstart":Landroid/widget/Button;
    .restart local v19    # "bwslot1":Landroid/widget/Button;
    .restart local v20    # "bwslot2":Landroid/widget/Button;
    .restart local v21    # "bwslot3":Landroid/widget/Button;
    .restart local v22    # "bwslot4":Landroid/widget/Button;
    .restart local v23    # "bwslot5":Landroid/widget/Button;
    .restart local v28    # "ibg1":Landroid/widget/ImageView;
    .restart local v30    # "iextracash":I
    .restart local v31    # "rgameover":Landroid/widget/RelativeLayout;
    .restart local v32    # "tcash":Landroid/widget/TextView;
    .restart local v33    # "tdate":Landroid/widget/TextView;
    .restart local v34    # "tdeposit":Landroid/widget/TextView;
    .restart local v35    # "thealth":Landroid/widget/TextView;
    .restart local v36    # "thouseprice":Landroid/widget/TextView;
    .restart local v37    # "tmslotprice1":Landroid/widget/TextView;
    .restart local v38    # "tmslotprice2":Landroid/widget/TextView;
    .restart local v39    # "tmslotprice3":Landroid/widget/TextView;
    .restart local v40    # "tmslotprice4":Landroid/widget/TextView;
    .restart local v41    # "tmslotprice5":Landroid/widget/TextView;
    .restart local v42    # "treputation":Landroid/widget/TextView;
    .restart local v43    # "twslotnbr1":Landroid/widget/TextView;
    .restart local v44    # "twslotnbr2":Landroid/widget/TextView;
    .restart local v45    # "twslotnbr3":Landroid/widget/TextView;
    .restart local v46    # "twslotnbr4":Landroid/widget/TextView;
    .restart local v47    # "twslotnbr5":Landroid/widget/TextView;
    .restart local v48    # "twslotprice1":Landroid/widget/TextView;
    .restart local v49    # "twslotprice2":Landroid/widget/TextView;
    .restart local v50    # "twslotprice3":Landroid/widget/TextView;
    .restart local v51    # "twslotprice4":Landroid/widget/TextView;
    .restart local v52    # "twslotprice5":Landroid/widget/TextView;
    :catch_1
    move-exception v25

    .line 1223
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 1224
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 1231
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v4    # "addcash":Ljava/lang/String;
    .restart local v27    # "iaddcash":I
    :catch_2
    move-exception v25

    .line 1232
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 1233
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 1244
    .end local v4    # "addcash":Ljava/lang/String;
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v27    # "iaddcash":I
    .restart local v24    # "crazy":Ljava/lang/String;
    .restart local v29    # "icrazy":I
    :catch_3
    move-exception v25

    .line 1245
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 1246
    const/16 v29, 0x0

    goto :goto_5
.end method

.method private NewWeek()V
    .locals 22

    .prologue
    .line 626
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    if-le v15, v0, :cond_0

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    .line 634
    const-string v15, "    \u6211\u7684\u8c6a\u60c5\u58ee\u5fd7\u6700\u7ec8\u6ca1\u6709\u6210\u4e3a\u73b0\u5b9e\uff0c \u4e00\u5e74\u65f6\u95f4\u8fc7\u53bb\u4e86\uff0c \u6211\u6ca1\u80fd\u4e70\u5230\u5c5e\u4e8e\u81ea\u5df1\u7684\u623f\u5b50\u3002 \u56de\u5230\u51b0\u51b7\u7684\u51fa\u79df\u5c4b\uff0c \u6211\u6536\u62fe\u4e1c\u897f\u6253\u7b97\u56de\u8001\u5bb6\u53bb\u4e86\u3002"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    .line 635
    const/16 v15, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 636
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->s_timeup:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :goto_1
    return-void

    .line 627
    :catch_0
    move-exception v5

    .line 628
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    goto :goto_0

    .line 639
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 640
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    goto :goto_1

    .line 645
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 647
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-lt v6, v15, :cond_5

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff0147ae147ae14L    # 1.005

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 657
    .end local v6    # "i":I
    :cond_1
    :goto_3
    const/4 v14, -0x1

    .line 658
    .local v14, "type":I
    const/4 v4, 0x0

    .line 659
    .local v4, "conflict":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    const/4 v15, 0x5

    if-lt v6, v15, :cond_6

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    .line 709
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    .line 711
    const v15, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 712
    .local v11, "twarehouseinfo":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "("

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    const/4 v15, 0x5

    new-array v2, v15, [Landroid/widget/Button;

    .line 715
    .local v2, "bmslot":[Landroid/widget/Button;
    const/16 v18, 0x0

    const v15, 0x7f070042

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v2, v18

    .line 716
    const/16 v18, 0x1

    const v15, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v2, v18

    .line 717
    const/16 v18, 0x2

    const v15, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v2, v18

    .line 718
    const/16 v18, 0x3

    const v15, 0x7f070045

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v2, v18

    .line 719
    const/16 v18, 0x4

    const v15, 0x7f070046

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v2, v18

    .line 720
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_2

    .line 721
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    aget-object v15, v2, v15

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 722
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    .line 724
    :cond_2
    const/4 v15, 0x5

    new-array v3, v15, [Landroid/widget/Button;

    .line 725
    .local v3, "bwslot":[Landroid/widget/Button;
    const/16 v18, 0x0

    const v15, 0x7f070052

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v18

    .line 726
    const/16 v18, 0x1

    const v15, 0x7f070053

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v18

    .line 727
    const/16 v18, 0x2

    const v15, 0x7f070054

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v18

    .line 728
    const/16 v18, 0x3

    const v15, 0x7f070055

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v18

    .line 729
    const/16 v18, 0x4

    const v15, 0x7f070056

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v18

    .line 730
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    .line 731
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    aget-object v15, v3, v15

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    .line 734
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->GeneratePriceEvent()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    if-eqz v15, :cond_13

    .line 737
    const/16 v15, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 750
    :cond_4
    :goto_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfectset:Z

    goto/16 :goto_1

    .line 648
    .end local v2    # "bmslot":[Landroid/widget/Button;
    .end local v3    # "bwslot":[Landroid/widget/Button;
    .end local v4    # "conflict":Z
    .end local v11    # "twarehouseinfo":Landroid/widget/TextView;
    .end local v14    # "type":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff028f5c28f5c29L    # 1.01

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 647
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 651
    :catch_2
    move-exception v5

    .line 652
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 660
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "conflict":Z
    .restart local v14    # "type":I
    :cond_6
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 662
    .local v12, "r":D
    :cond_7
    const/4 v4, 0x0

    .line 663
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    .line 664
    const-wide/high16 v18, 0x3fc0000000000000L    # 0.125

    cmpg-double v15, v12, v18

    if-gez v15, :cond_9

    .line 665
    const/4 v14, 0x0

    .line 680
    :cond_8
    :goto_6
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    if-lt v7, v6, :cond_10

    .line 686
    :goto_8
    if-nez v4, :cond_7

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v14

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v6

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v14

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v6

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresform:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    aput v18, v15, v6

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresmforw:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresforw:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    aput v18, v15, v6

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgm:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgform:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    aput v18, v15, v6

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgmforw:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgforw:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    aput v18, v15, v6

    .line 698
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    .line 699
    .local v16, "up":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    div-double v8, v18, v20

    .line 700
    .local v8, "increase":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpl-double v15, v16, v18

    if-lez v15, :cond_12

    .line 701
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v18

    .line 704
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v6

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 666
    .end local v7    # "j":I
    .end local v8    # "increase":D
    .end local v16    # "up":D
    :cond_9
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    cmpg-double v15, v12, v18

    if-gez v15, :cond_a

    .line 667
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 668
    :cond_a
    const-wide/high16 v18, 0x3fd8000000000000L    # 0.375

    cmpg-double v15, v12, v18

    if-gez v15, :cond_b

    .line 669
    const/4 v14, 0x2

    goto/16 :goto_6

    .line 670
    :cond_b
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v15, v12, v18

    if-gez v15, :cond_c

    .line 671
    const/4 v14, 0x3

    goto/16 :goto_6

    .line 672
    :cond_c
    const-wide/high16 v18, 0x3fe4000000000000L    # 0.625

    cmpg-double v15, v12, v18

    if-gez v15, :cond_d

    .line 673
    const/4 v14, 0x4

    goto/16 :goto_6

    .line 674
    :cond_d
    const-wide/high16 v18, 0x3fe8000000000000L    # 0.75

    cmpg-double v15, v12, v18

    if-gez v15, :cond_e

    .line 675
    const/4 v14, 0x5

    goto/16 :goto_6

    .line 676
    :cond_e
    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    cmpg-double v15, v12, v18

    if-gez v15, :cond_f

    .line 677
    const/4 v14, 0x6

    goto/16 :goto_6

    .line 678
    :cond_f
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v12, v18

    if-gtz v15, :cond_8

    .line 679
    const/4 v14, 0x7

    goto/16 :goto_6

    .line 681
    .restart local v7    # "j":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v14

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 682
    const/4 v4, 0x1

    .line 683
    goto/16 :goto_8

    .line 680
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 703
    .restart local v8    # "increase":D
    .restart local v16    # "up":D
    :cond_12
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v8, v18, v8

    goto/16 :goto_9

    .line 739
    .end local v7    # "j":I
    .end local v8    # "increase":D
    .end local v12    # "r":D
    .end local v16    # "up":D
    .restart local v2    # "bmslot":[Landroid/widget/Button;
    .restart local v3    # "bwslot":[Landroid/widget/Button;
    .restart local v11    # "twarehouseinfo":Landroid/widget/TextView;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->GenerateEvent()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    if-eqz v15, :cond_14

    .line 741
    const/16 v15, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto/16 :goto_5

    .line 743
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->hsickevent:Landroid/os/Handler;

    if-eqz v15, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->hsickevent:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 745
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zf/dsmfj/MaiFangJi;->hsickevent:Landroid/os/Handler;

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5
.end method

.method private PlaySound(I)V
    .locals 7
    .param p1, "soundid"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2400
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->soundon:Z

    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2402
    :cond_0
    return-void
.end method

.method private ReadGiftFlag()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2175
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2176
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data0"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return v2

    .line 2179
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2182
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ReadHelpFlag()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2165
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2166
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data6"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return v2

    .line 2169
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2172
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ReadHintLeft()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2443
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2444
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2445
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return v8

    .line 2447
    :cond_1
    const/4 v5, 0x0

    .line 2448
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2450
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2451
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2452
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2453
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 2455
    .local v7, "left":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 2465
    if-eqz v1, :cond_2

    .line 2467
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2473
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 2475
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2476
    :catch_0
    move-exception v2

    .line 2478
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2468
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2470
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2457
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v9

    if-eqz v9, :cond_5

    .line 2465
    if-eqz v1, :cond_4

    .line 2467
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2473
    :cond_4
    :goto_2
    if-eqz v6, :cond_0

    .line 2475
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 2476
    :catch_2
    move-exception v2

    .line 2478
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2468
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2470
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2460
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v8

    .line 2465
    if-eqz v1, :cond_6

    .line 2467
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 2473
    :cond_6
    :goto_3
    if-eqz v6, :cond_0

    .line 2475
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_0

    .line 2476
    :catch_4
    move-exception v2

    .line 2478
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2468
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 2470
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2461
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "left":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    .line 2462
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2465
    if-eqz v0, :cond_7

    .line 2467
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 2473
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    if-eqz v5, :cond_0

    .line 2475
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_0

    .line 2476
    :catch_7
    move-exception v2

    .line 2478
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2468
    .local v2, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v2

    .line 2470
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2464
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 2465
    :goto_6
    if-eqz v0, :cond_8

    .line 2467
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 2473
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 2475
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 2481
    :cond_9
    :goto_8
    throw v8

    .line 2468
    :catch_9
    move-exception v2

    .line 2470
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2476
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 2478
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2464
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6

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
    goto :goto_6

    .line 2461
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4
.end method

.method private ReadHintStatus()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2404
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2405
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2406
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2422
    :cond_0
    :goto_0
    return v8

    .line 2408
    :cond_1
    const/4 v5, 0x0

    .line 2409
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2411
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2412
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2413
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 2414
    .local v7, "status":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 2424
    if-eqz v1, :cond_2

    .line 2426
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2432
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 2434
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2435
    :catch_0
    move-exception v2

    .line 2437
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2427
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2429
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2416
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    const-string v9, "hinton"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v9

    if-eqz v9, :cond_6

    .line 2424
    if-eqz v1, :cond_4

    .line 2426
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2432
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 2434
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2417
    :cond_5
    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    .line 2427
    :catch_2
    move-exception v2

    .line 2429
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2435
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2437
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2424
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    if-eqz v1, :cond_7

    .line 2426
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2432
    :cond_7
    :goto_4
    if-eqz v6, :cond_0

    .line 2434
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 2435
    :catch_4
    move-exception v2

    .line 2437
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2427
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 2429
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2420
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "status":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    .line 2421
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2424
    if-eqz v0, :cond_8

    .line 2426
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 2432
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    if-eqz v5, :cond_0

    .line 2434
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_0

    .line 2435
    :catch_7
    move-exception v2

    .line 2437
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2427
    .local v2, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v2

    .line 2429
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2423
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 2424
    :goto_7
    if-eqz v0, :cond_9

    .line 2426
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 2432
    :cond_9
    :goto_8
    if-eqz v5, :cond_a

    .line 2434
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 2440
    :cond_a
    :goto_9
    throw v8

    .line 2427
    :catch_9
    move-exception v2

    .line 2429
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2435
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 2437
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2423
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_7

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
    goto :goto_7

    .line 2420
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private ReadRecord()V
    .locals 10

    .prologue
    .line 2293
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data2"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2295
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 2296
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2298
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2299
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2300
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2301
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v8, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_3

    .line 2330
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2332
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2338
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 2340
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2347
    .end local v7    # "i":I
    :cond_2
    :goto_3
    return-void

    .line 2302
    .restart local v7    # "i":I
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2303
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2301
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2306
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2307
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2308
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v8, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-ge v7, v8, :cond_0

    .line 2309
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2310
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2308
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2314
    .end local v7    # "i":I
    :cond_5
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2315
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2316
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    :try_start_5
    iget v8, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    if-lt v7, v8, :cond_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 2327
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 2317
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_6
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2318
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_7

    .line 2319
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2320
    :cond_7
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2321
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    const-string v9, "\u4ece\u672a\u6210\u529f"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2322
    :cond_8
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2323
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    .line 2324
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2316
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2327
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "i":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 2328
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2330
    if-eqz v0, :cond_a

    .line 2332
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2338
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v5, :cond_2

    .line 2340
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 2341
    :catch_1
    move-exception v2

    .line 2343
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2333
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2335
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2329
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 2330
    :goto_8
    if-eqz v0, :cond_b

    .line 2332
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2338
    :cond_b
    :goto_9
    if-eqz v5, :cond_c

    .line 2340
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 2346
    :cond_c
    :goto_a
    throw v8

    .line 2333
    :catch_3
    move-exception v2

    .line 2335
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2341
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2343
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2333
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    :catch_5
    move-exception v2

    .line 2335
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2341
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 2343
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2329
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

    .line 2327
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

.method private ReadSound()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2356
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2357
    .local v1, "fpath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data4"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2358
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2363
    :cond_0
    :goto_0
    return v2

    .line 2360
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2361
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private ReadVoucher()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 2199
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2200
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/data/com.zf.dsmfj/data1"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2201
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 2202
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2203
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 2205
    .local v8, "voucher":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2206
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2207
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    :goto_0
    if-eqz v0, :cond_0

    .line 2222
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2228
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 2230
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2238
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    .line 2239
    const-string v8, ""

    .line 2240
    :cond_2
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 2241
    .local v7, "l":I
    if-gt v7, v10, :cond_8

    .line 2242
    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2250
    :goto_3
    return-object v8

    .line 2209
    .end local v7    # "l":I
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2210
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2217
    :catch_0
    move-exception v2

    .line 2218
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2220
    if-eqz v0, :cond_4

    .line 2222
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2228
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    if-eqz v5, :cond_1

    .line 2230
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 2231
    :catch_1
    move-exception v2

    .line 2233
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2213
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2214
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2215
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 2217
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 2223
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2225
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2219
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 2220
    :goto_6
    if-eqz v0, :cond_6

    .line 2222
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2228
    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    .line 2230
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 2236
    :cond_7
    :goto_8
    throw v9

    .line 2223
    :catch_3
    move-exception v2

    .line 2225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2231
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2233
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2223
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 2225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2231
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 2233
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2245
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "l":I
    :cond_8
    :try_start_c
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result-object v8

    goto :goto_3

    .line 2246
    :catch_7
    move-exception v2

    .line 2247
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2219
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "l":I
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

    .line 2217
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_4
.end method

.method private RefreshMarket()V
    .locals 24

    .prologue
    .line 1806
    const v22, 0x7f07003d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 1807
    .local v13, "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v22, v0

    const v23, 0x7f020010

    invoke-static/range {v22 .. v23}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1809
    const v22, 0x7f070039

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1810
    .local v18, "tthouseprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1811
    const v22, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1812
    .local v16, "thouseprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selhouse:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->FormatPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1815
    const v22, 0x7f07003b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1816
    .local v17, "ttdate":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1817
    const v22, 0x7f07003c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1818
    .local v15, "tdate":Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u5468"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1821
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1822
    .local v14, "icurdate":I
    const/16 v22, 0x2f

    move/from16 v0, v22

    if-le v14, v0, :cond_0

    .line 1823
    const v22, -0x8dd7f3

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    .end local v14    # "icurdate":I
    :goto_0
    const v22, 0x7f07003f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1831
    .local v19, "ttmarket":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1832
    const v22, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1833
    .local v20, "ttmgoods":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1834
    const v22, 0x7f070041

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1835
    .local v21, "ttmprice":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1836
    const v22, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1837
    .local v2, "bmslot1":Landroid/widget/Button;
    const v22, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1838
    .local v3, "bmslot2":Landroid/widget/Button;
    const v22, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1839
    .local v4, "bmslot3":Landroid/widget/Button;
    const v22, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1840
    .local v5, "bmslot4":Landroid/widget/Button;
    const v22, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1841
    .local v6, "bmslot5":Landroid/widget/Button;
    const v22, 0xffffff

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1843
    const v22, 0xffffff

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1845
    const v22, 0xffffff

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1847
    const v22, 0xffffff

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1849
    const v22, 0xffffff

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsresm:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1851
    const v22, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1852
    .local v7, "bmslotprice1":Landroid/widget/TextView;
    const v22, 0x7f070048

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1853
    .local v8, "bmslotprice2":Landroid/widget/TextView;
    const v22, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1854
    .local v9, "bmslotprice3":Landroid/widget/TextView;
    const v22, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1855
    .local v10, "bmslotprice4":Landroid/widget/TextView;
    const v22, 0x7f07004b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1856
    .local v11, "bmslotprice5":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1867
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ShowHint()V

    .line 1868
    return-void

    .line 1825
    .end local v2    # "bmslot1":Landroid/widget/Button;
    .end local v3    # "bmslot2":Landroid/widget/Button;
    .end local v4    # "bmslot3":Landroid/widget/Button;
    .end local v5    # "bmslot4":Landroid/widget/Button;
    .end local v6    # "bmslot5":Landroid/widget/Button;
    .end local v7    # "bmslotprice1":Landroid/widget/TextView;
    .end local v8    # "bmslotprice2":Landroid/widget/TextView;
    .end local v9    # "bmslotprice3":Landroid/widget/TextView;
    .end local v10    # "bmslotprice4":Landroid/widget/TextView;
    .end local v11    # "bmslotprice5":Landroid/widget/TextView;
    .end local v19    # "ttmarket":Landroid/widget/TextView;
    .end local v20    # "ttmgoods":Landroid/widget/TextView;
    .end local v21    # "ttmprice":Landroid/widget/TextView;
    .restart local v14    # "icurdate":I
    :cond_0
    const/16 v22, -0x1

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1826
    .end local v14    # "icurdate":I
    :catch_0
    move-exception v12

    .line 1827
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private RefreshStatus()V
    .locals 14

    .prologue
    .line 1765
    const v12, 0x7f070061

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1766
    .local v1, "ibg1":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v13, 0x7f020017

    invoke-static {v12, v13}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1767
    const v12, 0x7f070068

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1768
    .local v2, "ibg2":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v13, 0x7f020018

    invoke-static {v12, v13}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1770
    const v12, 0x7f070063

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1771
    .local v8, "ttcash":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1772
    const v12, 0x7f070064

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1773
    .local v4, "tcash":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1776
    const v12, 0x7f07006a

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1777
    .local v9, "ttdeposit":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1778
    const v12, 0x7f07006b

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1779
    .local v5, "tdeposit":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1782
    const v12, 0x7f070065

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1783
    .local v10, "tthealth":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1784
    const v12, 0x7f070066

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1785
    .local v6, "thealth":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1788
    :try_start_0
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1789
    .local v3, "ihealth":I
    const/16 v12, 0x5f

    if-ge v3, v12, :cond_0

    .line 1790
    const v12, -0x8dd7f3

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    .end local v3    # "ihealth":I
    :goto_0
    const v12, 0x7f07006c

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1798
    .local v11, "ttreputation":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1799
    const v12, 0x7f07006d

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1800
    .local v7, "treputation":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->reputation:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1803
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ShowHint()V

    .line 1804
    return-void

    .line 1792
    .end local v7    # "treputation":Landroid/widget/TextView;
    .end local v11    # "ttreputation":Landroid/widget/TextView;
    .restart local v3    # "ihealth":I
    :cond_0
    const/4 v12, -0x1

    :try_start_1
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1793
    .end local v3    # "ihealth":I
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private RefreshWarehouse()V
    .locals 14

    .prologue
    .line 1683
    const v12, 0x7f07004d

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1684
    .local v4, "ttwarehouse":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1685
    const v12, 0x7f07004e

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1686
    .local v5, "ttwarehouseinfo":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1687
    const v12, 0x7f07004f

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1688
    .local v6, "ttwgoods":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1689
    const v12, 0x7f070050

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1690
    .local v8, "ttwprice":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1691
    const v12, 0x7f070051

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1692
    .local v7, "ttwnumber":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1693
    const/4 v12, 0x5

    new-array v0, v12, [Landroid/widget/Button;

    .line 1694
    .local v0, "bwslot":[Landroid/widget/Button;
    const/4 v13, 0x0

    const v12, 0x7f070052

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v0, v13

    .line 1695
    const/4 v13, 0x1

    const v12, 0x7f070053

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v0, v13

    .line 1696
    const/4 v13, 0x2

    const v12, 0x7f070054

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v0, v13

    .line 1697
    const/4 v13, 0x3

    const v12, 0x7f070055

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v0, v13

    .line 1698
    const/4 v13, 0x4

    const v12, 0x7f070056

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    aput-object v12, v0, v13

    .line 1699
    const/4 v12, 0x5

    new-array v11, v12, [Landroid/widget/TextView;

    .line 1700
    .local v11, "twslotprice":[Landroid/widget/TextView;
    const/4 v13, 0x0

    const v12, 0x7f070057

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v11, v13

    .line 1701
    const/4 v12, 0x0

    aget-object v12, v11, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1702
    const/4 v13, 0x1

    const v12, 0x7f070058

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v11, v13

    .line 1703
    const/4 v12, 0x1

    aget-object v12, v11, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1704
    const/4 v13, 0x2

    const v12, 0x7f070059

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v11, v13

    .line 1705
    const/4 v12, 0x2

    aget-object v12, v11, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1706
    const/4 v13, 0x3

    const v12, 0x7f07005a

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v11, v13

    .line 1707
    const/4 v12, 0x3

    aget-object v12, v11, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1708
    const/4 v13, 0x4

    const v12, 0x7f07005b

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v11, v13

    .line 1709
    const/4 v12, 0x4

    aget-object v12, v11, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1710
    const/4 v12, 0x5

    new-array v10, v12, [Landroid/widget/TextView;

    .line 1711
    .local v10, "twslotnbr":[Landroid/widget/TextView;
    const/4 v13, 0x0

    const v12, 0x7f07005c

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v13

    .line 1712
    const/4 v12, 0x0

    aget-object v12, v10, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1713
    const/4 v13, 0x1

    const v12, 0x7f07005d

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v13

    .line 1714
    const/4 v12, 0x1

    aget-object v12, v10, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1715
    const/4 v13, 0x2

    const v12, 0x7f07005e

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v13

    .line 1716
    const/4 v12, 0x2

    aget-object v12, v10, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1717
    const/4 v13, 0x3

    const v12, 0x7f07005f

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v13

    .line 1718
    const/4 v12, 0x3

    aget-object v12, v10, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1719
    const/4 v13, 0x4

    const v12, 0x7f070060

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v13

    .line 1720
    const/4 v12, 0x4

    aget-object v12, v10, v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1722
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v12, 0x5

    if-lt v2, v12, :cond_1

    .line 1744
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    .line 1747
    const/4 v3, 0x0

    .line 1748
    .local v3, "n":I
    const/4 v2, 0x0

    :goto_1
    const/4 v12, 0x5

    if-lt v2, v12, :cond_3

    .line 1753
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    .line 1754
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    :goto_2
    const v12, 0x7f07004e

    invoke-virtual {p0, v12}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1760
    .local v9, "twarehouseinfo":Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->wused:Ljava/lang/String;

    invoke-static {v13}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    invoke-static {v13}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ShowHint()V

    .line 1763
    return-void

    .line 1723
    .end local v3    # "n":I
    .end local v9    # "twarehouseinfo":Landroid/widget/TextView;
    :cond_1
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    aget-object v12, v12, v2

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1724
    aget-object v12, v0, v2

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 1725
    aget-object v12, v0, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1726
    aget-object v12, v11, v2

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    aget-object v12, v10, v2

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1722
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1730
    :cond_2
    aget-object v12, v0, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 1731
    aget-object v12, v0, v2

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1735
    aget-object v12, v0, v2

    const v13, 0xffffff

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1736
    aget-object v12, v0, v2

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresw:[I

    aget v13, v13, v2

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1738
    aget-object v12, v11, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1739
    aget-object v12, v11, v2

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-static {v13}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    aget-object v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1741
    aget-object v12, v10, v2

    iget-object v13, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-static {v13}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1749
    .restart local v3    # "n":I
    :cond_3
    :try_start_1
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    aget-object v12, v12, v2

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1751
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    add-int/2addr v3, v12

    .line 1748
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1755
    :catch_0
    move-exception v1

    .line 1756
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private ReportClick()V
    .locals 1

    .prologue
    .line 1604
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$31;

    invoke-direct {v0, p0}, Lcom/zf/dsmfj/MaiFangJi$31;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 1642
    invoke-virtual {v0}, Lcom/zf/dsmfj/MaiFangJi$31;->start()V

    .line 1643
    return-void
.end method

.method private SaveJudgeLevel(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2863
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2864
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data14"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2865
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 2866
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 2867
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2868
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2870
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2871
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2872
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2873
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2874
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    if-nez p1, :cond_2

    .line 2875
    :try_start_2
    const-string p1, ""

    .line 2876
    :cond_2
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2880
    if-eqz v1, :cond_3

    .line 2882
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2888
    :cond_3
    :goto_0
    if-eqz v6, :cond_8

    .line 2890
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 2897
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_4
    :goto_1
    return-void

    .line 2877
    :catch_0
    move-exception v2

    .line 2878
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2880
    if-eqz v0, :cond_5

    .line 2882
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2888
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v5, :cond_4

    .line 2890
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 2891
    :catch_1
    move-exception v2

    .line 2893
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2883
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2885
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2879
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2880
    :goto_4
    if-eqz v0, :cond_6

    .line 2882
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2888
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 2890
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2896
    :cond_7
    :goto_6
    throw v7

    .line 2883
    :catch_3
    move-exception v2

    .line 2885
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2891
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2893
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2883
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 2885
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2891
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 2893
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
    goto :goto_1

    .line 2879
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

    .line 2877
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
    .line 2254
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2255
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.zf.dsmfj/data2"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2256
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 2257
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 2259
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2260
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2261
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2262
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2263
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2265
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_2
    iget v8, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lt v7, v8, :cond_4

    .line 2274
    if-eqz v1, :cond_2

    .line 2276
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2282
    :cond_2
    :goto_1
    if-eqz v6, :cond_8

    .line 2284
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 2291
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_2
    return-void

    .line 2266
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_date:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 2268
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi;->record_succnbr:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2265
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2271
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v7    # "i":I
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 2272
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2274
    if-eqz v0, :cond_5

    .line 2276
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2282
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v5, :cond_3

    .line 2284
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 2285
    :catch_1
    move-exception v2

    .line 2287
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2277
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2279
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2273
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 2274
    :goto_5
    if-eqz v0, :cond_6

    .line 2276
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2282
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 2284
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 2290
    :cond_7
    :goto_7
    throw v8

    .line 2277
    :catch_3
    move-exception v2

    .line 2279
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2285
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2287
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2277
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "i":I
    :catch_5
    move-exception v2

    .line 2279
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2285
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 2287
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

    .line 2273
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

    .line 2271
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

.method private SaveShareMsg(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2827
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2828
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data13"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2829
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 2830
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 2831
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2832
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2834
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2835
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2836
    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2837
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2838
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    if-nez p1, :cond_2

    .line 2839
    :try_start_2
    const-string p1, ""

    .line 2840
    :cond_2
    invoke-static {p1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2844
    if-eqz v1, :cond_3

    .line 2846
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2852
    :cond_3
    :goto_0
    if-eqz v6, :cond_8

    .line 2854
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 2861
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_4
    :goto_1
    return-void

    .line 2841
    :catch_0
    move-exception v2

    .line 2842
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2844
    if-eqz v0, :cond_5

    .line 2846
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2852
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v5, :cond_4

    .line 2854
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 2855
    :catch_1
    move-exception v2

    .line 2857
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2847
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2849
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2843
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2844
    :goto_4
    if-eqz v0, :cond_6

    .line 2846
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2852
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 2854
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2860
    :cond_7
    :goto_6
    throw v7

    .line 2847
    :catch_3
    move-exception v2

    .line 2849
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2855
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2857
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2847
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 2849
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2855
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 2857
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
    goto :goto_1

    .line 2843
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

    .line 2841
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

.method private SaveShareUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1645
    if-nez p1, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1649
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v4, "fpath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.zf.dsmfj/data9"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v3, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 1652
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 1653
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1654
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1656
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1657
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1658
    :cond_3
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1660
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1664
    if-eqz v1, :cond_4

    .line 1666
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1672
    :cond_4
    :goto_1
    if-eqz v6, :cond_8

    .line 1674
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 1675
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 1661
    :catch_0
    move-exception v2

    .line 1662
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1664
    if-eqz v0, :cond_5

    .line 1666
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1672
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    .line 1674
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 1675
    :catch_1
    move-exception v2

    .line 1677
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1667
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1669
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1663
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1664
    :goto_4
    if-eqz v0, :cond_6

    .line 1666
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1672
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 1674
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1680
    :cond_7
    :goto_6
    throw v7

    .line 1667
    :catch_3
    move-exception v2

    .line 1669
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1675
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 1677
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1667
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 1669
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1675
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1677
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
    goto :goto_0

    .line 1663
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

    .line 1661
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

.method private SetGiftFlag()V
    .locals 4

    .prologue
    .line 2185
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data0"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2188
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2189
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2190
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2197
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2193
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SetHint(Z)V
    .locals 14
    .param p1, "flag"    # Z

    .prologue
    .line 2484
    new-instance v6, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/"

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2485
    .local v6, "fpath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v13, "/data/data/com.zf.dsmfj/data12"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2486
    .local v5, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 2487
    .local v7, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 2488
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 2489
    .local v9, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 2490
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v12, ""

    .line 2491
    .local v12, "status":Ljava/lang/String;
    const-string v11, "0"

    .line 2493
    .local v11, "left":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2494
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 2495
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 2496
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2497
    :cond_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2498
    .end local v7    # "fr":Ljava/io/FileReader;
    .local v8, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2499
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 2500
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v11

    .line 2504
    if-eqz v1, :cond_2

    .line 2506
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2512
    :cond_2
    :goto_0
    if-eqz v8, :cond_b

    .line 2514
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 2521
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-nez v12, :cond_4

    .line 2522
    const-string v12, ""

    .line 2523
    :cond_4
    if-nez v11, :cond_5

    .line 2524
    const-string v11, "0"

    .line 2526
    :cond_5
    :try_start_5
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2527
    .end local v9    # "fw":Ljava/io/FileWriter;
    .local v10, "fw":Ljava/io/FileWriter;
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2528
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_c

    .line 2529
    :try_start_7
    const-string v13, "hinton"

    invoke-virtual {v3, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2532
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 2533
    invoke-virtual {v3, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2537
    if-eqz v3, :cond_6

    .line 2539
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 2545
    :cond_6
    :goto_3
    if-eqz v10, :cond_10

    .line 2547
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 2554
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :cond_7
    :goto_4
    return-void

    .line 2501
    :catch_0
    move-exception v4

    .line 2502
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2504
    if-eqz v0, :cond_8

    .line 2506
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 2512
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    if-eqz v7, :cond_3

    .line 2514
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    .line 2515
    :catch_1
    move-exception v4

    .line 2517
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2507
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 2509
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2503
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 2504
    :goto_7
    if-eqz v0, :cond_9

    .line 2506
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 2512
    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 2514
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 2520
    :cond_a
    :goto_9
    throw v13

    .line 2507
    :catch_3
    move-exception v4

    .line 2509
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2515
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 2517
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2507
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    .line 2509
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2515
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 2517
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

    .line 2531
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

    .line 2534
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 2535
    .end local v10    # "fw":Ljava/io/FileWriter;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "fw":Ljava/io/FileWriter;
    :goto_a
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2537
    if-eqz v2, :cond_d

    .line 2539
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 2545
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    if-eqz v9, :cond_7

    .line 2547
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_4

    .line 2548
    :catch_8
    move-exception v4

    .line 2550
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2540
    .local v4, "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 2542
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2536
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 2537
    :goto_c
    if-eqz v2, :cond_e

    .line 2539
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 2545
    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 2547
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 2553
    :cond_f
    :goto_e
    throw v13

    .line 2540
    :catch_a
    move-exception v4

    .line 2542
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 2548
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 2550
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 2540
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :catch_c
    move-exception v4

    .line 2542
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2548
    .end local v4    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v4

    .line 2550
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

    .line 2536
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

    .line 2534
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

    .line 2503
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

    .line 2501
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

.method private ShowAd()V
    .locals 2

    .prologue
    .line 2349
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadShowAd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->adinited:Z

    if-eqz v0, :cond_1

    .line 2351
    const-string v0, "buddy"

    const-string v1, "\u663e\u793a\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->show()V

    .line 2354
    :cond_1
    return-void
.end method

.method private ShowHint()V
    .locals 44

    .prologue
    .line 2635
    const v39, 0x7f070052

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 2636
    .local v17, "bwslot1":Landroid/widget/Button;
    const v39, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 2637
    .local v18, "bwslot2":Landroid/widget/Button;
    const v39, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 2638
    .local v19, "bwslot3":Landroid/widget/Button;
    const v39, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 2639
    .local v20, "bwslot4":Landroid/widget/Button;
    const v39, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 2640
    .local v21, "bwslot5":Landroid/widget/Button;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->clearAnimation()V

    .line 2641
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Button;->clearAnimation()V

    .line 2642
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Button;->clearAnimation()V

    .line 2643
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->clearAnimation()V

    .line 2644
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->clearAnimation()V

    .line 2645
    const v39, 0x7f070075

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2646
    .local v8, "bhouseseller":Landroid/widget/Button;
    invoke-virtual {v8}, Landroid/widget/Button;->clearAnimation()V

    .line 2647
    const v39, 0x7f070074

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 2648
    .local v7, "bhospital":Landroid/widget/Button;
    invoke-virtual {v7}, Landroid/widget/Button;->clearAnimation()V

    .line 2649
    const v39, 0x7f070042

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 2650
    .local v12, "bmslot1":Landroid/widget/Button;
    const v39, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 2651
    .local v13, "bmslot2":Landroid/widget/Button;
    const v39, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 2652
    .local v14, "bmslot3":Landroid/widget/Button;
    const v39, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 2653
    .local v15, "bmslot4":Landroid/widget/Button;
    const v39, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 2654
    .local v16, "bmslot5":Landroid/widget/Button;
    invoke-virtual {v12}, Landroid/widget/Button;->clearAnimation()V

    .line 2655
    invoke-virtual {v13}, Landroid/widget/Button;->clearAnimation()V

    .line 2656
    invoke-virtual {v14}, Landroid/widget/Button;->clearAnimation()V

    .line 2657
    invoke-virtual {v15}, Landroid/widget/Button;->clearAnimation()V

    .line 2658
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Button;->clearAnimation()V

    .line 2659
    const v39, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2660
    .local v9, "bmarket1":Landroid/widget/Button;
    const v39, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 2661
    .local v10, "bmarket2":Landroid/widget/Button;
    const v39, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 2662
    .local v11, "bmarket3":Landroid/widget/Button;
    invoke-virtual {v9}, Landroid/widget/Button;->clearAnimation()V

    .line 2663
    invoke-virtual {v10}, Landroid/widget/Button;->clearAnimation()V

    .line 2664
    invoke-virtual {v11}, Landroid/widget/Button;->clearAnimation()V

    .line 2665
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 2825
    .end local v7    # "bhospital":Landroid/widget/Button;
    .end local v8    # "bhouseseller":Landroid/widget/Button;
    .end local v9    # "bmarket1":Landroid/widget/Button;
    .end local v10    # "bmarket2":Landroid/widget/Button;
    .end local v11    # "bmarket3":Landroid/widget/Button;
    .end local v12    # "bmslot1":Landroid/widget/Button;
    .end local v13    # "bmslot2":Landroid/widget/Button;
    .end local v14    # "bmslot3":Landroid/widget/Button;
    .end local v15    # "bmslot4":Landroid/widget/Button;
    .end local v16    # "bmslot5":Landroid/widget/Button;
    .end local v17    # "bwslot1":Landroid/widget/Button;
    .end local v18    # "bwslot2":Landroid/widget/Button;
    .end local v19    # "bwslot3":Landroid/widget/Button;
    .end local v20    # "bwslot4":Landroid/widget/Button;
    .end local v21    # "bwslot5":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 2668
    .restart local v7    # "bhospital":Landroid/widget/Button;
    .restart local v8    # "bhouseseller":Landroid/widget/Button;
    .restart local v9    # "bmarket1":Landroid/widget/Button;
    .restart local v10    # "bmarket2":Landroid/widget/Button;
    .restart local v11    # "bmarket3":Landroid/widget/Button;
    .restart local v12    # "bmslot1":Landroid/widget/Button;
    .restart local v13    # "bmslot2":Landroid/widget/Button;
    .restart local v14    # "bmslot3":Landroid/widget/Button;
    .restart local v15    # "bmslot4":Landroid/widget/Button;
    .restart local v16    # "bmslot5":Landroid/widget/Button;
    .restart local v17    # "bwslot1":Landroid/widget/Button;
    .restart local v18    # "bwslot2":Landroid/widget/Button;
    .restart local v19    # "bwslot3":Landroid/widget/Button;
    .restart local v20    # "bwslot4":Landroid/widget/Button;
    .restart local v21    # "bwslot5":Landroid/widget/Button;
    :cond_1
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v39, 0x3f800000    # 1.0f

    const v40, 0x3e4ccccd    # 0.2f

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2669
    .local v2, "ani":Landroid/view/animation/Animation;
    const-wide/16 v40, 0x12c

    move-wide/from16 v0, v40

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2670
    const/16 v39, -0x1

    move/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 2671
    const/16 v39, 0x2

    move/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2674
    .local v28, "lcash":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 2676
    .local v30, "ldeposit":J
    const/16 v38, 0x0

    .line 2677
    .local v38, "wslot":I
    const/4 v3, 0x0

    .line 2678
    .local v3, "avgprice":F
    const/16 v32, 0x0

    .line 2679
    .local v32, "mprice":F
    const/16 v37, 0x0

    .line 2680
    .local v37, "wprice":F
    const/16 v38, 0x0

    :goto_1
    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_3

    .line 2735
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v39, v39, v40

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 2736
    .local v24, "hprice":J
    add-long v40, v28, v30

    cmp-long v39, v40, v24

    if-ltz v39, :cond_d

    .line 2737
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2738
    invoke-virtual {v8, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2822
    .end local v2    # "ani":Landroid/view/animation/Animation;
    .end local v3    # "avgprice":F
    .end local v7    # "bhospital":Landroid/widget/Button;
    .end local v8    # "bhouseseller":Landroid/widget/Button;
    .end local v9    # "bmarket1":Landroid/widget/Button;
    .end local v10    # "bmarket2":Landroid/widget/Button;
    .end local v11    # "bmarket3":Landroid/widget/Button;
    .end local v12    # "bmslot1":Landroid/widget/Button;
    .end local v13    # "bmslot2":Landroid/widget/Button;
    .end local v14    # "bmslot3":Landroid/widget/Button;
    .end local v15    # "bmslot4":Landroid/widget/Button;
    .end local v16    # "bmslot5":Landroid/widget/Button;
    .end local v17    # "bwslot1":Landroid/widget/Button;
    .end local v18    # "bwslot2":Landroid/widget/Button;
    .end local v19    # "bwslot3":Landroid/widget/Button;
    .end local v20    # "bwslot4":Landroid/widget/Button;
    .end local v21    # "bwslot5":Landroid/widget/Button;
    .end local v24    # "hprice":J
    .end local v28    # "lcash":J
    .end local v30    # "ldeposit":J
    .end local v32    # "mprice":F
    .end local v37    # "wprice":F
    .end local v38    # "wslot":I
    :catch_0
    move-exception v22

    .line 2823
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2681
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v2    # "ani":Landroid/view/animation/Animation;
    .restart local v3    # "avgprice":F
    .restart local v7    # "bhospital":Landroid/widget/Button;
    .restart local v8    # "bhouseseller":Landroid/widget/Button;
    .restart local v9    # "bmarket1":Landroid/widget/Button;
    .restart local v10    # "bmarket2":Landroid/widget/Button;
    .restart local v11    # "bmarket3":Landroid/widget/Button;
    .restart local v12    # "bmslot1":Landroid/widget/Button;
    .restart local v13    # "bmslot2":Landroid/widget/Button;
    .restart local v14    # "bmslot3":Landroid/widget/Button;
    .restart local v15    # "bmslot4":Landroid/widget/Button;
    .restart local v16    # "bmslot5":Landroid/widget/Button;
    .restart local v17    # "bwslot1":Landroid/widget/Button;
    .restart local v18    # "bwslot2":Landroid/widget/Button;
    .restart local v19    # "bwslot3":Landroid/widget/Button;
    .restart local v20    # "bwslot4":Landroid/widget/Button;
    .restart local v21    # "bwslot5":Landroid/widget/Button;
    .restart local v28    # "lcash":J
    .restart local v30    # "ldeposit":J
    .restart local v32    # "mprice":F
    .restart local v37    # "wprice":F
    .restart local v38    # "wslot":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v38

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_2

    .line 2684
    const/16 v34, 0x0

    .local v34, "pos":I
    :goto_2
    const/16 v39, 0x5

    move/from16 v0, v34

    move/from16 v1, v39

    if-lt v0, v1, :cond_5

    .line 2689
    :cond_4
    const/16 v39, 0x5

    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 2691
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    const/16 v39, 0x8

    move/from16 v0, v23

    move/from16 v1, v39

    if-lt v0, v1, :cond_6

    .line 2698
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v34

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v38

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v37

    .line 2702
    sub-float v39, v32, v37

    div-float v39, v39, v37

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fc999999999999aL    # 0.2

    cmpl-double v39, v40, v42

    if-lez v39, :cond_c

    const v39, 0x3f4ccccd    # 0.8f

    mul-float v39, v39, v3

    cmpl-float v39, v32, v39

    if-lez v39, :cond_c

    .line 2703
    if-nez v38, :cond_8

    .line 2704
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2705
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2685
    .end local v23    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v34

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v40, v0

    aget-object v40, v40, v38

    invoke-static/range {v40 .. v40}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    .line 2684
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .line 2692
    .restart local v23    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v38

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    move-object/from16 v40, v0

    aget-object v40, v40, v23

    invoke-static/range {v40 .. v40}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v23

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2694
    goto/16 :goto_4

    .line 2691
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 2708
    :cond_8
    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 2709
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2710
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2713
    :cond_9
    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a

    .line 2714
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2715
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2718
    :cond_a
    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_b

    .line 2719
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2720
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2723
    :cond_b
    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    .line 2724
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2725
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2680
    .end local v23    # "i":I
    :cond_c
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 2742
    .end local v34    # "pos":I
    .restart local v24    # "hprice":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2743
    .local v26, "ihealth":I
    const/16 v39, 0x5f

    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_e

    add-long v40, v28, v30

    rsub-int/lit8 v39, v26, 0x64

    move/from16 v0, v39

    mul-int/lit16 v0, v0, 0x1388

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    cmp-long v39, v40, v42

    if-ltz v39, :cond_e

    .line 2744
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2745
    invoke-virtual {v7, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2749
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2750
    .local v27, "iwavailable":I
    if-lez v27, :cond_17

    .line 2752
    const/16 v33, 0x0

    .line 2753
    .local v33, "mslot":I
    const/4 v4, 0x0

    .line 2754
    .local v4, "bestprice":I
    const/4 v6, -0x1

    .line 2755
    .local v6, "bestslot":I
    const/high16 v5, 0x41200000    # 10.0f

    .line 2756
    .local v5, "bestratio":F
    const/16 v36, 0x0

    .line 2757
    .local v36, "ratio":F
    const/16 v33, 0x0

    :goto_5
    const/16 v39, 0x5

    move/from16 v0, v33

    move/from16 v1, v39

    if-lt v0, v1, :cond_f

    .line 2774
    const/16 v39, -0x1

    move/from16 v0, v39

    if-le v6, v0, :cond_17

    add-long v40, v28, v30

    int-to-long v0, v4

    move-wide/from16 v42, v0

    cmp-long v39, v40, v42

    if-lez v39, :cond_17

    .line 2775
    if-nez v6, :cond_13

    .line 2776
    invoke-virtual {v12, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2777
    invoke-virtual {v12, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2759
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v33

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    .line 2761
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_6
    const/16 v39, 0x8

    move/from16 v0, v23

    move/from16 v1, v39

    if-lt v0, v1, :cond_11

    .line 2767
    :goto_7
    div-float v36, v32, v3

    .line 2768
    cmpg-float v39, v36, v5

    if-gez v39, :cond_10

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3fe999999999999aL    # 0.8

    cmpg-double v39, v40, v42

    if-gez v39, :cond_10

    .line 2769
    move/from16 v5, v36

    .line 2770
    move/from16 v6, v33

    .line 2771
    move/from16 v0, v32

    float-to-int v4, v0

    .line 2757
    :cond_10
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 2762
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v33

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsname:[Ljava/lang/String;

    move-object/from16 v40, v0

    aget-object v40, v40, v23

    invoke-static/range {v40 .. v40}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspriceavg:[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v23

    invoke-static/range {v39 .. v39}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2764
    goto :goto_7

    .line 2761
    :cond_12
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 2780
    .end local v23    # "i":I
    :cond_13
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v6, v0, :cond_14

    .line 2781
    invoke-virtual {v13, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2782
    invoke-virtual {v13, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2785
    :cond_14
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v6, v0, :cond_15

    .line 2786
    invoke-virtual {v14, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2787
    invoke-virtual {v14, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2790
    :cond_15
    const/16 v39, 0x3

    move/from16 v0, v39

    if-ne v6, v0, :cond_16

    .line 2791
    invoke-virtual {v15, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2792
    invoke-virtual {v15, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2795
    :cond_16
    const/16 v39, 0x4

    move/from16 v0, v39

    if-ne v6, v0, :cond_17

    .line 2796
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2797
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2805
    .end local v4    # "bestprice":I
    .end local v5    # "bestratio":F
    .end local v6    # "bestslot":I
    .end local v33    # "mslot":I
    .end local v36    # "ratio":F
    :cond_17
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v40

    const-wide/high16 v42, 0x4008000000000000L    # 3.0

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v35, v0

    .line 2806
    .local v35, "r":I
    if-nez v35, :cond_18

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 2807
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2808
    invoke-virtual {v9, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2811
    :cond_18
    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v39

    if-eqz v39, :cond_19

    .line 2812
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2813
    invoke-virtual {v10, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2816
    :cond_19
    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    invoke-virtual {v11}, Landroid/widget/Button;->isEnabled()Z

    move-result v39

    if-eqz v39, :cond_17

    .line 2817
    invoke-virtual {v11, v2}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2818
    invoke-virtual {v11, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private TurnonSound(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 2366
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2367
    .local v2, "fpath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.zf.dsmfj/data4"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2368
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2369
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2370
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2371
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2372
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zf/dsmfj/MaiFangJi;->soundon:Z

    .line 2383
    :cond_1
    :goto_0
    return-void

    .line 2374
    :cond_2
    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2376
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2377
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zf/dsmfj/MaiFangJi;->soundon:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v0

    .line 2380
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->buyvoucherfrom:I

    return v0
.end method

.method static synthetic access$1(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->GetGift(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2862
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->SaveJudgeLevel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$101(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    return-void
.end method

.method static synthetic access$102(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hevent:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$103(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2384
    invoke-static {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$104(Lcom/zf/dsmfj/MaiFangJi;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$105(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2198
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadVoucher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$106(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$107(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->moretimecount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$108(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->askhintfrom:I

    return v0
.end method

.method static synthetic access$109(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->castlink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->casttitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->casttitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GetDailyGift()V

    return-void
.end method

.method static synthetic access$14(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->InitGame()V

    return-void
.end method

.method static synthetic access$15(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->DefButton()V

    return-void
.end method

.method static synthetic access$16(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 2164
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadHelpFlag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_button:I

    return v0
.end method

.method static synthetic access$18(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 2399
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->PlaySound(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_changeplace:I

    return v0
.end method

.method static synthetic access$2(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->SaveShareUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->NewWeek()V

    return-void
.end method

.method static synthetic access$21(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 2348
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ShowAd()V

    return-void
.end method

.method static synthetic access$22(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->badadleft:I

    return v0
.end method

.method static synthetic access$23(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->badadleft:I

    return-void
.end method

.method static synthetic access$24(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_selgoods:I

    return v0
.end method

.method static synthetic access$25(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    return-void
.end method

.method static synthetic access$26(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    return-void
.end method

.method static synthetic access$27(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->housenbr:I

    return v0
.end method

.method static synthetic access$28(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->soundon:Z

    return v0
.end method

.method static synthetic access$29(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->housename:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zf/dsmfj/MaiFangJi;Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    return-void
.end method

.method static synthetic access$30(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgressucc:[I

    return-object v0
.end method

.method static synthetic access$31(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->housesuccmsg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->selhouse:I

    return v0
.end method

.method static synthetic access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->reputation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfectset:Z

    return v0
.end method

.method static synthetic access$37(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    return v0
.end method

.method static synthetic access$38(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->housepricec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->houseinfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    return v0
.end method

.method static synthetic access$40(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->houseimgres:[I

    return-object v0
.end method

.method static synthetic access$41(Lcom/zf/dsmfj/MaiFangJi;)[Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfect:[Z

    return-object v0
.end method

.method static synthetic access$42(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->housefirstbuygift:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2017
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GenerateEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$44(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hsickevent:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$47(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GenerateSick()I

    move-result v0

    return v0
.end method

.method static synthetic access$48(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->curdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->datelimit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->adinited:Z

    return v0
.end method

.method static synthetic access$50(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->moretimecount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$51(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->castcontent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$52(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->castlink:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hgetdailygift:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$54(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$55(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 2355
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadSound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$56(Lcom/zf/dsmfj/MaiFangJi;Z)V
    .locals 0

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->TurnonSound(Z)V

    return-void
.end method

.method static synthetic access$57(Lcom/zf/dsmfj/MaiFangJi;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    return v0
.end method

.method static synthetic access$58(Lcom/zf/dsmfj/MaiFangJi;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    return-void
.end method

.method static synthetic access$59(Lcom/zf/dsmfj/MaiFangJi;Z)V
    .locals 0

    .prologue
    .line 2483
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->SetHint(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    return-object v0
.end method

.method static synthetic access$60(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 2442
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadHintLeft()I

    move-result v0

    return v0
.end method

.method static synthetic access$61(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->askhintfrom:I

    return-void
.end method

.method static synthetic access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$64(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$65(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->defaultcash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$66(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hchangecash:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$67(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->rinccash:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$68(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->rdeccash:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$69(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->NewGame()V

    return-void
.end method

.method static synthetic access$7(Lcom/zf/dsmfj/MaiFangJi;Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/zf/dsmfj/MaiFangJi;->adinited:Z

    return-void
.end method

.method static synthetic access$70(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 2555
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->ChangeHintLeft(I)V

    return-void
.end method

.method static synthetic access$71(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_addcash:I

    return v0
.end method

.method static synthetic access$72(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->buyvoucherfrom:I

    return-void
.end method

.method static synthetic access$73(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    return-void
.end method

.method static synthetic access$74(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ReportClick()V

    return-void
.end method

.method static synthetic access$75(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    return v0
.end method

.method static synthetic access$76(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_error:I

    return v0
.end method

.method static synthetic access$77(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->badadmax:I

    return-void
.end method

.method static synthetic access$80(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$81(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_money:I

    return v0
.end method

.method static synthetic access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$86(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshWarehouse()V

    return-void
.end method

.method static synthetic access$87(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresw:[I

    return-object v0
.end method

.method static synthetic access$88(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsresmforw:[I

    return-object v0
.end method

.method static synthetic access$89(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgw:[I

    return-object v0
.end method

.method static synthetic access$9(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2826
    invoke-direct {p0, p1}, Lcom/zf/dsmfj/MaiFangJi;->SaveShareMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$90(Lcom/zf/dsmfj/MaiFangJi;)[I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgmforw:[I

    return-object v0
.end method

.method static synthetic access$91(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    return v0
.end method

.method static synthetic access$92(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->reputation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$93(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    return-void
.end method

.method static synthetic access$94(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$95(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$96(Lcom/zf/dsmfj/MaiFangJi;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/zf/dsmfj/MaiFangJi;->rentnbr:I

    return-void
.end method

.method static synthetic access$97(Lcom/zf/dsmfj/MaiFangJi;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/zf/dsmfj/MaiFangJi;->rentnbr:I

    return v0
.end method

.method static synthetic access$98(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$99(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi;->wcapacity:Ljava/lang/String;

    return-void
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x1

    .line 2385
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2386
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2387
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 2388
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 2392
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2397
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 2393
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1870
    if-nez p1, :cond_2

    .line 1871
    const-string v1, "cash"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 1872
    const-string v1, "deposit"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    .line 1873
    const-string v1, "selhouse"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zf/dsmfj/MaiFangJi;->selhouse:I

    .line 1874
    const-string v1, "reputationinfectset"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zf/dsmfj/MaiFangJi;->reputationinfectset:Z

    .line 1875
    const-string v1, "gamestatus"

    const/4 v2, 0x2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    .line 1876
    iget v1, p0, Lcom/zf/dsmfj/MaiFangJi;->gamestatus:I

    if-eq v1, v3, :cond_0

    .line 1877
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    .line 1878
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->ShowAd()V

    .line 1881
    :cond_0
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshStatus()V

    .line 1882
    invoke-direct {p0}, Lcom/zf/dsmfj/MaiFangJi;->RefreshMarket()V

    .line 1883
    if-ne p2, v3, :cond_1

    .line 1884
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadJudgeGiftShouldGive()I

    move-result v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadJudgeGiftShouldGive()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e07"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->note_buyv:Ljava/lang/String;

    .line 1886
    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 1894
    :cond_1
    :goto_0
    return-void

    .line 1889
    :cond_2
    if-ne p1, v3, :cond_1

    .line 1890
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1891
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const-class v2, Lcom/zf/dsmfj/Help;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1892
    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iput-object p0, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    .line 137
    invoke-virtual {p0, v8}, Lcom/zf/dsmfj/MaiFangJi;->requestWindowFeature(I)Z

    .line 138
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/zf/dsmfj/MaiFangJi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/GirlType.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    .line 141
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/16 v7, 0x64

    invoke-direct {v0, v1, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    .line 142
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const/high16 v7, 0x7f040000

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_addcash:I

    .line 143
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040001

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_button:I

    .line 144
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040002

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_changeplace:I

    .line 145
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040003

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_dead:I

    .line 146
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040004

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_error:I

    .line 147
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040005

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventbad:I

    .line 148
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040006

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventgood:I

    .line 149
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040007

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_eventhealth:I

    .line 150
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f040009

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_money:I

    .line 151
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f04000a

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_selgoods:I

    .line 152
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f04000b

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_success:I

    .line 153
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f04000c

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_success_mars:I

    .line 154
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f04000d

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/zf/dsmfj/MaiFangJi;->s_timeup:I

    .line 156
    iput-boolean v10, p0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    .line 157
    iput-boolean v10, p0, Lcom/zf/dsmfj/MaiFangJi;->adinited:Z

    .line 159
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zf/dsmfj/MaiFangJi$1;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hbuyvsucc:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zf/dsmfj/MaiFangJi$2;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hbuyvfail:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zf/dsmfj/MaiFangJi$3;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->hgetdailygift:Landroid/os/Handler;

    .line 289
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 290
    .local v6, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0xbb8

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 291
    const v0, 0x7f0700a2

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 292
    .local v2, "rstartpage":Landroid/widget/RelativeLayout;
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 293
    .local v3, "istart1":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v1, 0x7f02011d

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 295
    .local v4, "istart2":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v1, 0x7f02011e

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 297
    .local v5, "istart3":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    const v1, 0x7f02011f

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    new-instance v0, Lcom/zf/dsmfj/MaiFangJi$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zf/dsmfj/MaiFangJi$4;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 325
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2912
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f060001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2913
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2915
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2916
    new-instance v1, Lcom/zf/dsmfj/MaiFangJi$32;

    invoke-direct {v1, p0}, Lcom/zf/dsmfj/MaiFangJi$32;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2927
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 2899
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2900
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2902
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2903
    iget-boolean v0, p0, Lcom/zf/dsmfj/MaiFangJi;->adshowing:Z

    if-nez v0, :cond_0

    .line 2905
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 2907
    :cond_0
    const/4 v0, 0x1

    .line 2909
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 114
    .param p1, "dialogid"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2930
    packed-switch p1, :pswitch_data_0

    .line 4926
    :goto_0
    :pswitch_0
    return-void

    .line 2932
    :pswitch_1
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2933
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$33;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$33;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2964
    const v108, 0x7f03000e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2965
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 2966
    .local v59, "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020011

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2967
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 2968
    .local v13, "bclose":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$34;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$34;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2974
    const v108, 0x7f07001e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/ImageView;

    .line 2975
    .local v60, "img1":Landroid/widget/ImageView;
    const v108, 0x7f07001f

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/ImageView;

    .line 2976
    .local v62, "img2":Landroid/widget/ImageView;
    const v108, 0x7f070020

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/ImageView;

    .line 2977
    .local v63, "img3":Landroid/widget/ImageView;
    const v108, 0x7f070021

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/ImageView;

    .line 2978
    .local v64, "img4":Landroid/widget/ImageView;
    const v108, 0x7f070022

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v65

    check-cast v65, Landroid/widget/ImageView;

    .line 2979
    .local v65, "img5":Landroid/widget/ImageView;
    const v108, 0x7f070023

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Landroid/widget/ImageView;

    .line 2980
    .local v66, "img6":Landroid/widget/ImageView;
    const v108, 0x7f070024

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v67

    check-cast v67, Landroid/widget/ImageView;

    .line 2981
    .local v67, "img7":Landroid/widget/ImageView;
    const v108, 0x7f070025

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v68

    check-cast v68, Landroid/widget/ImageView;

    .line 2982
    .local v68, "img8":Landroid/widget/ImageView;
    const v108, 0x7f070026

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v69

    check-cast v69, Landroid/widget/ImageView;

    .line 2983
    .local v69, "img9":Landroid/widget/ImageView;
    const v108, 0x7f070027

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/ImageView;

    .line 2984
    .local v61, "img10":Landroid/widget/ImageView;
    const/16 v108, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2985
    const/16 v108, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2986
    const/16 v108, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2987
    const/16 v108, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2988
    const/16 v108, 0x0

    move-object/from16 v0, v65

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2989
    const/16 v108, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2990
    const/16 v108, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2991
    const/16 v108, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2992
    const/16 v108, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2993
    const/16 v108, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->lognbrtoshow:I

    move/from16 v108, v0

    packed-switch v108, :pswitch_data_1

    goto/16 :goto_0

    .line 2996
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v60

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2999
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v62

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3002
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v63

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3005
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v64

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3008
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v65

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3011
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v66

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3014
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v67

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3017
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v68

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3020
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v69

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3023
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020012

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v61

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3028
    .end local v13    # "bclose":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v60    # "img1":Landroid/widget/ImageView;
    .end local v61    # "img10":Landroid/widget/ImageView;
    .end local v62    # "img2":Landroid/widget/ImageView;
    .end local v63    # "img3":Landroid/widget/ImageView;
    .end local v64    # "img4":Landroid/widget/ImageView;
    .end local v65    # "img5":Landroid/widget/ImageView;
    .end local v66    # "img6":Landroid/widget/ImageView;
    .end local v67    # "img7":Landroid/widget/ImageView;
    .end local v68    # "img8":Landroid/widget/ImageView;
    .end local v69    # "img9":Landroid/widget/ImageView;
    :pswitch_c
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3029
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$35;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$35;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3053
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadHintStatus()Z

    move-result v108

    move/from16 v0, v108

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    .line 3054
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadHintLeft()I

    move-result v57

    .line 3055
    .local v57, "hintleft":I
    if-gtz v57, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    move/from16 v108, v0

    if-eqz v108, :cond_0

    .line 3056
    const/16 v108, 0x0

    move/from16 v0, v108

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    .line 3057
    const/16 v108, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->SetHint(Z)V

    .line 3059
    :cond_0
    const v108, 0x7f030013

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3060
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3061
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02000d

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3062
    const v108, 0x7f070005

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/Button;

    .line 3063
    .local v37, "bsound":Landroid/widget/Button;
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadSound()Z

    move-result v108

    if-eqz v108, :cond_1

    .line 3064
    const v108, 0x7f0200f3

    move-object/from16 v0, v37

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3067
    :goto_1
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$36;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$36;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3080
    const v108, 0x7f07002e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/Button;

    .line 3081
    .local v40, "bstarthint":Landroid/widget/Button;
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadHintEnable()Z

    move-result v108

    if-eqz v108, :cond_3

    .line 3082
    const/16 v108, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3083
    const/16 v108, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3084
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->hinton:Z

    move/from16 v108, v0

    if-eqz v108, :cond_2

    .line 3085
    const v108, 0x7f0200d3

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3088
    :goto_2
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$37;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$37;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/app/Dialog;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3119
    :goto_3
    const v108, 0x7f07002f

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 3120
    .local v14, "bcrazy":Landroid/widget/Button;
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyEnable()Z

    move-result v108

    if-eqz v108, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    move/from16 v108, v0

    if-eqz v108, :cond_5

    .line 3121
    const/16 v108, 0x1

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3122
    const/16 v108, 0x0

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3123
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v108

    if-eqz v108, :cond_4

    .line 3124
    const v108, 0x7f0200c6

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3127
    :goto_4
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$38;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v14, v2}, Lcom/zf/dsmfj/MaiFangJi$38;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3148
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadVoucher()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    .line 3149
    const v108, 0x7f070030

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v104

    check-cast v104, Landroid/widget/TextView;

    .line 3150
    .local v104, "tvoucher":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v104

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v104

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3152
    const v108, 0x7f070032

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v94

    check-cast v94, Landroid/widget/TextView;

    .line 3153
    .local v94, "tcash":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v94

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->defaultcash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->extracash:Ljava/lang/String;

    move-object/from16 v110, v0

    invoke-static/range {v110 .. v110}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v110

    add-long v108, v108, v110

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v94

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3159
    :goto_6
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$39;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v94

    move-object/from16 v3, v104

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$39;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->rinccash:Ljava/lang/Runnable;

    .line 3180
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$40;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v94

    move-object/from16 v3, v104

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$40;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->rdeccash:Ljava/lang/Runnable;

    .line 3201
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    .line 3202
    .local v27, "bnewgameok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$41;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$41;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3217
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 3218
    .local v26, "bnewgamecancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$42;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$42;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3225
    const v108, 0x7f070033

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 3226
    .local v22, "binccash":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$43;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v94

    move-object/from16 v3, v104

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$43;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3238
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$44;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$44;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3246
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$45;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$45;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3257
    const v108, 0x7f070031

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 3258
    .local v15, "bdeccash":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$46;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v94

    move-object/from16 v3, v104

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$46;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v108

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3270
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$47;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$47;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v108

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3278
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$48;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$48;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v108

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3289
    const v108, 0x7f07002a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3290
    .local v6, "baddvoucher":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$49;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$49;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v108, 0x3f800000    # 1.0f

    const v109, 0x3ecccccd    # 0.4f

    move/from16 v0, v108

    move/from16 v1, v109

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3299
    .local v4, "ani_inc":Landroid/view/animation/Animation;
    const-wide/16 v108, 0xc8

    move-wide/from16 v0, v108

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3300
    const/16 v108, 0xc

    move/from16 v0, v108

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 3301
    const/16 v108, 0x2

    move/from16 v0, v108

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 3303
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->voucher:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    const/16 v109, 0x1388

    move/from16 v0, v108

    move/from16 v1, v109

    if-ge v0, v1, :cond_6

    .line 3304
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3307
    :catch_0
    move-exception v49

    .line 3308
    .local v49, "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3066
    .end local v4    # "ani_inc":Landroid/view/animation/Animation;
    .end local v6    # "baddvoucher":Landroid/widget/Button;
    .end local v14    # "bcrazy":Landroid/widget/Button;
    .end local v15    # "bdeccash":Landroid/widget/Button;
    .end local v22    # "binccash":Landroid/widget/Button;
    .end local v26    # "bnewgamecancel":Landroid/widget/Button;
    .end local v27    # "bnewgameok":Landroid/widget/Button;
    .end local v40    # "bstarthint":Landroid/widget/Button;
    .end local v49    # "e":Ljava/lang/Exception;
    .end local v94    # "tcash":Landroid/widget/TextView;
    .end local v104    # "tvoucher":Landroid/widget/TextView;
    :cond_1
    const v108, 0x7f0200f2

    move-object/from16 v0, v37

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3087
    .restart local v40    # "bstarthint":Landroid/widget/Button;
    :cond_2
    const v108, 0x7f0200d2

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3115
    :cond_3
    const/16 v108, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3116
    const/16 v108, 0x4

    move-object/from16 v0, v40

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 3126
    .restart local v14    # "bcrazy":Landroid/widget/Button;
    :cond_4
    const v108, 0x7f0200c5

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 3144
    :cond_5
    const/16 v108, 0x0

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3145
    const/16 v108, 0x4

    move/from16 v0, v108

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 3156
    .restart local v94    # "tcash":Landroid/widget/TextView;
    .restart local v104    # "tvoucher":Landroid/widget/TextView;
    :catch_1
    move-exception v49

    .line 3157
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 3306
    .end local v49    # "e":Ljava/lang/Exception;
    .restart local v4    # "ani_inc":Landroid/view/animation/Animation;
    .restart local v6    # "baddvoucher":Landroid/widget/Button;
    .restart local v15    # "bdeccash":Landroid/widget/Button;
    .restart local v22    # "binccash":Landroid/widget/Button;
    .restart local v26    # "bnewgamecancel":Landroid/widget/Button;
    .restart local v27    # "bnewgameok":Landroid/widget/Button;
    :cond_6
    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3312
    .end local v4    # "ani_inc":Landroid/view/animation/Animation;
    .end local v6    # "baddvoucher":Landroid/widget/Button;
    .end local v14    # "bcrazy":Landroid/widget/Button;
    .end local v15    # "bdeccash":Landroid/widget/Button;
    .end local v22    # "binccash":Landroid/widget/Button;
    .end local v26    # "bnewgamecancel":Landroid/widget/Button;
    .end local v27    # "bnewgameok":Landroid/widget/Button;
    .end local v37    # "bsound":Landroid/widget/Button;
    .end local v40    # "bstarthint":Landroid/widget/Button;
    .end local v57    # "hintleft":I
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v94    # "tcash":Landroid/widget/TextView;
    .end local v104    # "tvoucher":Landroid/widget/TextView;
    :pswitch_d
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3313
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$50;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$50;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3336
    const v108, 0x7f030001

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3337
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3338
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02000c

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3339
    const v108, 0x7f070005

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/Button;

    .line 3340
    .local v38, "bsound_end":Landroid/widget/Button;
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadSound()Z

    move-result v108

    if-eqz v108, :cond_7

    .line 3341
    const v108, 0x7f0200f3

    move-object/from16 v0, v38

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3344
    :goto_7
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$51;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$51;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3394
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 3395
    .local v33, "brestartok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$52;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$52;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3403
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Button;

    .line 3404
    .local v32, "brestartcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$53;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$53;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3410
    const v108, 0x7f070006

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 3411
    .local v23, "bmoregames":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$54;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$54;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3343
    .end local v23    # "bmoregames":Landroid/widget/Button;
    .end local v32    # "brestartcancel":Landroid/widget/Button;
    .end local v33    # "brestartok":Landroid/widget/Button;
    :cond_7
    const v108, 0x7f0200f2

    move-object/from16 v0, v38

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_7

    .line 3426
    .end local v38    # "bsound_end":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    :pswitch_e
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3427
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$55;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$55;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3450
    const v108, 0x7f030001

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3451
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3452
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001a

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3453
    const v108, 0x7f070005

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/Button;

    .line 3454
    .local v39, "bsound_quit":Landroid/widget/Button;
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadSound()Z

    move-result v108

    if-eqz v108, :cond_8

    .line 3455
    const v108, 0x7f0200f3

    move-object/from16 v0, v39

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3458
    :goto_8
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$56;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$56;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3508
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    .line 3509
    .local v31, "bquitok":Landroid/widget/Button;
    const v108, 0x7f0200e3

    move-object/from16 v0, v31

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3510
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$57;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$57;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3518
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 3519
    .local v30, "bquitcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$58;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$58;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3525
    const v108, 0x7f070006

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 3526
    .restart local v23    # "bmoregames":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$59;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$59;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3457
    .end local v23    # "bmoregames":Landroid/widget/Button;
    .end local v30    # "bquitcancel":Landroid/widget/Button;
    .end local v31    # "bquitok":Landroid/widget/Button;
    :cond_8
    const v108, 0x7f0200f2

    move-object/from16 v0, v39

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 3541
    .end local v39    # "bsound_quit":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    :pswitch_f
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3542
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$60;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$60;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3557
    const v108, 0x7f03000b

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3558
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3559
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02000e

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3560
    const-wide/16 v42, 0x0

    .line 3562
    .local v42, "buynbrtoshow":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    move-object/from16 v110, v0

    invoke-static/range {v110 .. v110}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v110

    add-long v108, v108, v110

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v110, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    move/from16 v111, v0

    aget-object v110, v110, v111

    invoke-static/range {v110 .. v110}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    div-long v42, v108, v110

    .line 3563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    move/from16 v0, v108

    int-to-long v0, v0

    move-wide/from16 v108, v0

    cmp-long v108, v42, v108

    if-lez v108, :cond_9

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v108

    move/from16 v0, v108

    int-to-long v0, v0

    move-wide/from16 v42, v0

    .line 3568
    :cond_9
    :goto_9
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 3569
    .local v97, "tnote":Landroid/widget/TextView;
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u4f60\u6700\u591a\u53ef\u4ee5\u8d2d\u4e70"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4e2a"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v109, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    move/from16 v110, v0

    aget-object v109, v109, v110

    invoke-static/range {v109 .. v109}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3571
    const v108, 0x7f070015

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v70

    check-cast v70, Landroid/widget/ImageView;

    .line 3572
    .local v70, "iname":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgm:[I

    move-object/from16 v109, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsm:I

    move/from16 v110, v0

    aget v109, v109, v110

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v70

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3575
    const v108, 0x7f070001

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/EditText;

    .line 3576
    .local v53, "ebuynbr":Landroid/widget/EditText;
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v53

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3578
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$61;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$61;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/EditText;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3586
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 3587
    .local v9, "bbuycancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$62;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$62;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3593
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 3594
    .local v10, "bbuyok":Landroid/widget/Button;
    const v108, 0x7f0200e2

    move/from16 v0, v108

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3595
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$63;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$63;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3565
    .end local v9    # "bbuycancel":Landroid/widget/Button;
    .end local v10    # "bbuyok":Landroid/widget/Button;
    .end local v53    # "ebuynbr":Landroid/widget/EditText;
    .end local v70    # "iname":Landroid/widget/ImageView;
    .end local v97    # "tnote":Landroid/widget/TextView;
    :catch_2
    move-exception v49

    .line 3566
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 3691
    .end local v42    # "buynbrtoshow":J
    .end local v49    # "e":Ljava/lang/Exception;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    :pswitch_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v108, v0

    if-ltz v108, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v108, v0

    const/16 v109, 0x4

    move/from16 v0, v108

    move/from16 v1, v109

    if-le v0, v1, :cond_b

    .line 3692
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/Dialog;->dismiss()V

    .line 3694
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    aget-object v108, v108, v109

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    aget-object v108, v108, v109

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3704
    :goto_a
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3705
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$64;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$64;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3720
    const v108, 0x7f03000b

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3721
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3722
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02000e

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3724
    const/16 v56, 0x0

    .line 3726
    .local v56, "flag":Z
    const/16 v84, 0x0

    .local v84, "pos":I
    :goto_b
    const/16 v108, 0x5

    move/from16 v0, v84

    move/from16 v1, v108

    if-lt v0, v1, :cond_c

    .line 3732
    :goto_c
    const v108, 0x7f070015

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v70

    check-cast v70, Landroid/widget/ImageView;

    .line 3733
    .restart local v70    # "iname":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsimgw:[I

    move-object/from16 v109, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v110, v0

    aget v109, v109, v110

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v70

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3734
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 3735
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3736
    const v108, 0x7f070001

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/EditText;

    .line 3737
    .local v54, "esellnbr":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3738
    if-eqz v56, :cond_13

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    aget-object v108, v108, v109

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v88

    .line 3740
    .local v88, "pricew":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    aget-object v108, v108, v109

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v82

    .line 3741
    .local v82, "nbr":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v108, v0

    aget-object v108, v108, v84

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v86

    .line 3742
    .local v86, "pricem":J
    sub-long v108, v86, v88

    mul-long v90, v108, v82

    .line 3743
    .local v90, "profit":J
    const-string v81, ""

    .line 3744
    .local v81, "msg":Ljava/lang/String;
    const-wide/16 v108, 0x0

    cmp-long v108, v90, v108

    if-ltz v108, :cond_10

    .line 3745
    const-wide/32 v108, 0x5f5e100

    cmp-long v108, v90, v108

    if-ltz v108, :cond_e

    .line 3746
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v108, v0

    const-wide v110, 0x4197d78400000000L    # 1.0E8

    div-double v50, v108, v110

    .line 3747
    .local v50, "dprofit":D
    new-instance v48, Ljava/text/DecimalFormat;

    const-string v108, "0.00"

    move-object/from16 v0, v48

    move-object/from16 v1, v108

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3748
    .local v48, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3749
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u53ef\u76c8\u5229 "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4ebf"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3779
    .end local v48    # "df":Ljava/text/DecimalFormat;
    .end local v50    # "dprofit":D
    :goto_d
    move-object/from16 v0, v97

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    aget-object v108, v108, v109

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v54

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3786
    .end local v81    # "msg":Ljava/lang/String;
    .end local v82    # "nbr":J
    .end local v86    # "pricem":J
    .end local v88    # "pricew":J
    .end local v90    # "profit":J
    :goto_e
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$65;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$65;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/EditText;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3794
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/Button;

    .line 3795
    .local v35, "bsellcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$66;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$66;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3801
    move/from16 v55, v56

    .line 3802
    .local v55, "fflag":Z
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Button;

    .line 3803
    .local v36, "bsellok":Landroid/widget/Button;
    const v108, 0x7f0200e0

    move-object/from16 v0, v36

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3804
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$67;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$67;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;Z)V

    move-object/from16 v0, v36

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3696
    .end local v35    # "bsellcancel":Landroid/widget/Button;
    .end local v36    # "bsellok":Landroid/widget/Button;
    .end local v54    # "esellnbr":Landroid/widget/EditText;
    .end local v55    # "fflag":Z
    .end local v56    # "flag":Z
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v70    # "iname":Landroid/widget/ImageView;
    .end local v84    # "pos":I
    .end local v97    # "tnote":Landroid/widget/TextView;
    :catch_3
    move-exception v49

    .line 3697
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    .line 3698
    const-string v108, "buddy"

    new-instance v109, Ljava/lang/StringBuilder;

    const-string v110, "xiaomi error: goodspricew[selgoodsw]="

    invoke-direct/range {v109 .. v110}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricew:[Ljava/lang/String;

    move-object/from16 v110, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v111, v0

    aget-object v110, v110, v111

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    const-string v110, ";goodsnbrw[selgoodsw]="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnbrw:[Ljava/lang/String;

    move-object/from16 v110, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v111, v0

    aget-object v110, v110, v111

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    invoke-virtual/range {v109 .. v109}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v109

    invoke-static/range {v108 .. v109}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v109, v0

    const-string v110, ""

    aput-object v110, v108, v109

    .line 3700
    invoke-virtual/range {p2 .. p2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_a

    .line 3727
    .end local v49    # "e":Ljava/lang/Exception;
    .restart local v56    # "flag":Z
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    .restart local v84    # "pos":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamem:[Ljava/lang/String;

    move-object/from16 v108, v0

    aget-object v108, v108, v84

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodsnamew:[Ljava/lang/String;

    move-object/from16 v109, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->selgoodsw:I

    move/from16 v110, v0

    aget-object v109, v109, v110

    invoke-static/range {v109 .. v109}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v108

    if-eqz v108, :cond_d

    .line 3728
    const/16 v56, 0x1

    .line 3729
    goto/16 :goto_c

    .line 3726
    :cond_d
    add-int/lit8 v84, v84, 0x1

    goto/16 :goto_b

    .line 3751
    .restart local v54    # "esellnbr":Landroid/widget/EditText;
    .restart local v70    # "iname":Landroid/widget/ImageView;
    .restart local v81    # "msg":Ljava/lang/String;
    .restart local v82    # "nbr":J
    .restart local v86    # "pricem":J
    .restart local v88    # "pricew":J
    .restart local v90    # "profit":J
    .restart local v97    # "tnote":Landroid/widget/TextView;
    :cond_e
    const-wide/16 v108, 0x2710

    cmp-long v108, v90, v108

    if-ltz v108, :cond_f

    .line 3752
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v108, v0

    const-wide v110, 0x40c3880000000000L    # 10000.0

    div-double v50, v108, v110

    .line 3753
    .restart local v50    # "dprofit":D
    new-instance v48, Ljava/text/DecimalFormat;

    const-string v108, "0.00"

    move-object/from16 v0, v48

    move-object/from16 v1, v108

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3754
    .restart local v48    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3755
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u53ef\u76c8\u5229 "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4e07"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3756
    goto/16 :goto_d

    .line 3758
    .end local v48    # "df":Ljava/text/DecimalFormat;
    .end local v50    # "dprofit":D
    :cond_f
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u53ef\u76c8\u5229 "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-wide/from16 v1, v90

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3760
    goto/16 :goto_d

    .line 3762
    :cond_10
    const-wide/16 v108, 0x0

    sub-long v90, v108, v90

    .line 3763
    const-wide/32 v108, 0x5f5e100

    cmp-long v108, v90, v108

    if-ltz v108, :cond_11

    .line 3764
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v108, v0

    const-wide v110, 0x4197d78400000000L    # 1.0E8

    div-double v50, v108, v110

    .line 3765
    .restart local v50    # "dprofit":D
    new-instance v48, Ljava/text/DecimalFormat;

    const-string v108, "0.00"

    move-object/from16 v0, v48

    move-object/from16 v1, v108

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3766
    .restart local v48    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3767
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u4f1a\u4e8f\u635f "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4ebf"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3768
    goto/16 :goto_d

    .line 3769
    .end local v48    # "df":Ljava/text/DecimalFormat;
    .end local v50    # "dprofit":D
    :cond_11
    const-wide/16 v108, 0x2710

    cmp-long v108, v90, v108

    if-ltz v108, :cond_12

    .line 3770
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v108, v0

    const-wide v110, 0x40c3880000000000L    # 10000.0

    div-double v50, v108, v110

    .line 3771
    .restart local v50    # "dprofit":D
    new-instance v48, Ljava/text/DecimalFormat;

    const-string v108, "0.00"

    move-object/from16 v0, v48

    move-object/from16 v1, v108

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3772
    .restart local v48    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3773
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u4f1a\u4e8f\u635f "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4e07"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 3774
    goto/16 :goto_d

    .line 3776
    .end local v48    # "df":Ljava/text/DecimalFormat;
    .end local v50    # "dprofit":D
    :cond_12
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5356\u51fa\u4f1a\u4e8f\u635f "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-wide/from16 v1, v90

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    goto/16 :goto_d

    .line 3783
    .end local v81    # "msg":Ljava/lang/String;
    .end local v82    # "nbr":J
    .end local v86    # "pricem":J
    .end local v88    # "pricew":J
    .end local v90    # "profit":J
    :cond_13
    const-string v108, "\u5e02\u573a\u4e2d\u6ca1\u6709\u8fd9\u79cd\u8d27\u7269\uff0c \u4f60\u65e0\u6cd5\u51fa\u552e"

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3784
    const-string v108, "0"

    move-object/from16 v0, v54

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 3885
    .end local v54    # "esellnbr":Landroid/widget/EditText;
    .end local v56    # "flag":Z
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v70    # "iname":Landroid/widget/ImageView;
    .end local v84    # "pos":I
    .end local v97    # "tnote":Landroid/widget/TextView;
    :pswitch_11
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3886
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$68;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$68;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3895
    const v108, 0x7f030017

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3896
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3897
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001c

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3898
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 3899
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 3903
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v97    # "tnote":Landroid/widget/TextView;
    :pswitch_12
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3904
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$69;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$69;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3919
    const v108, 0x7f030006

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3920
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3921
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001e

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3922
    const v108, 0x7f07000f

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/Button;

    .line 3923
    .local v34, "bsavemoney":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$70;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$70;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3933
    const v108, 0x7f070010

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 3934
    .local v19, "bgetmoney":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$71;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$71;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3944
    const v108, 0x7f070011

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 3945
    .local v18, "bexit":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$72;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$72;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3953
    .end local v18    # "bexit":Landroid/widget/Button;
    .end local v19    # "bgetmoney":Landroid/widget/Button;
    .end local v34    # "bsavemoney":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    :pswitch_13
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3954
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$73;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$73;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3967
    const v108, 0x7f030010

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3968
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 3969
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001f

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    rsub-int/lit8 v108, v108, 0x64

    move/from16 v0, v108

    mul-int/lit16 v0, v0, 0x1388

    move/from16 v108, v0

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 3971
    .local v80, "moneyneedforh":Ljava/lang/String;
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v96

    check-cast v96, Landroid/widget/TextView;

    .line 3972
    .local v96, "thospitalnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v96

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3973
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 3975
    .local v21, "bhospitalok":Landroid/widget/Button;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    const/16 v109, 0x64

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_14

    .line 3976
    const-string v108, "    \u8eab\u4f53\u597d\u597d\u7684\u6765\u533b\u9662\u5e72\u5565\uff0c \u8d76\u7d27\u5e72\u6b63\u4e8b\u513f\u53bb\u5427\u3002"

    move-object/from16 v0, v96

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3977
    const/16 v108, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 4011
    :goto_f
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 4012
    .local v20, "bhospitalcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$75;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$75;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3979
    .end local v20    # "bhospitalcancel":Landroid/widget/Button;
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    move-object/from16 v110, v0

    invoke-static/range {v110 .. v110}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v110

    add-long v108, v108, v110

    invoke-static/range {v80 .. v80}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v110

    cmp-long v108, v108, v110

    if-gez v108, :cond_15

    .line 3980
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "    \u770b\u75c5\u9700\u8981\u82b1\u8d39"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v80 .. v80}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u5143\uff0c \u4f60\u6ca1\u6709\u8db3\u591f\u7684\u94b1\u770b\u75c5\uff01"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v96

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3981
    const/16 v108, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    .line 4008
    :catch_4
    move-exception v49

    .line 4009
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 3984
    .end local v49    # "e":Ljava/lang/Exception;
    :cond_15
    :try_start_7
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "    \u770b\u75c5\u9700\u8981\u82b1\u8d39"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v80 .. v80}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u5143\uff0c \u786e\u5b9a\u8981\u770b\u75c5\u5417\uff1f"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v96

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3985
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$74;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$74;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_f

    .line 4020
    .end local v21    # "bhospitalok":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v80    # "moneyneedforh":Ljava/lang/String;
    .end local v96    # "thospitalnote":Landroid/widget/TextView;
    :pswitch_14
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4021
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$76;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$76;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4034
    const/high16 v108, 0x7f030000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4035
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4036
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020020

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4038
    const/16 v85, 0x0

    .line 4039
    .local v85, "price":I
    const/16 v72, 0x0

    .line 4040
    .local v72, "iwavailable":I
    const/16 v75, 0x0

    .line 4041
    .local v75, "maxprice":I
    const-wide/16 v76, 0x0

    .line 4042
    .local v76, "lcash":J
    const-wide/16 v78, 0x0

    .line 4043
    .local v78, "ldeposit":J
    const-wide/16 v16, 0x0

    .line 4045
    .local v16, "bestnbr":J
    const/16 v58, 0x0

    .local v58, "i":I
    :goto_10
    const/16 v108, 0x5

    move/from16 v0, v58

    move/from16 v1, v108

    if-lt v0, v1, :cond_17

    .line 4050
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v76

    .line 4051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->deposit:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v78

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->wavailable:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v72

    .line 4057
    :goto_11
    add-long v108, v76, v78

    mul-int v110, v75, v72

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    sub-long v108, v108, v110

    move/from16 v0, v75

    add-int/lit16 v0, v0, 0x2710

    move/from16 v110, v0

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    div-long v16, v108, v110

    .line 4058
    const-wide/16 v108, 0x0

    cmp-long v108, v16, v108

    if-gez v108, :cond_16

    .line 4059
    const-wide/16 v16, 0x0

    .line 4061
    :cond_16
    const v108, 0x7f070001

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/EditText;

    .line 4062
    .local v52, "eagentnbr":Landroid/widget/EditText;
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 4063
    .restart local v97    # "tnote":Landroid/widget/TextView;
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5171\u9700\u8981\u82b1\u8d39"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u4e07\u5143"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4064
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v52

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4066
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$77;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$77;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/EditText;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4074
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$78;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/zf/dsmfj/MaiFangJi$78;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/EditText;Landroid/app/Dialog;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4095
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    .end local v97    # "tnote":Landroid/widget/TextView;
    check-cast v97, Landroid/widget/TextView;

    .line 4096
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4097
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 4098
    .local v8, "bagentok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$79;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$79;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4138
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 4139
    .local v7, "bagentcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$80;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$80;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4046
    .end local v7    # "bagentcancel":Landroid/widget/Button;
    .end local v8    # "bagentok":Landroid/widget/Button;
    .end local v52    # "eagentnbr":Landroid/widget/EditText;
    .end local v97    # "tnote":Landroid/widget/TextView;
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->goodspricem:[Ljava/lang/String;

    move-object/from16 v108, v0

    aget-object v108, v108, v58

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result v85

    .line 4047
    move/from16 v0, v85

    move/from16 v1, v75

    if-le v0, v1, :cond_18

    .line 4048
    move/from16 v75, v85

    .line 4045
    :cond_18
    add-int/lit8 v58, v58, 0x1

    goto/16 :goto_10

    .line 4054
    :catch_5
    move-exception v49

    .line 4055
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 4147
    .end local v16    # "bestnbr":J
    .end local v49    # "e":Ljava/lang/Exception;
    .end local v58    # "i":I
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v72    # "iwavailable":I
    .end local v75    # "maxprice":I
    .end local v76    # "lcash":J
    .end local v78    # "ldeposit":J
    .end local v85    # "price":I
    :pswitch_15
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4148
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$81;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$81;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4162
    const v108, 0x7f030015

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4163
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4164
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020009

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4165
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v100

    check-cast v100, Landroid/widget/TextView;

    .line 4166
    .local v100, "tnotenote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 4170
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v100    # "tnotenote":Landroid/widget/TextView;
    :pswitch_16
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4171
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$82;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$82;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4186
    const v108, 0x7f030014

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4187
    const/16 v59, 0x0

    .line 4188
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    .end local v59    # "ibg":Landroid/widget/ImageView;
    check-cast v59, Landroid/widget/ImageView;

    .line 4189
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001c

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4190
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v100

    check-cast v100, Landroid/widget/TextView;

    .line 4191
    .restart local v100    # "tnotenote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 4195
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v100    # "tnotenote":Landroid/widget/TextView;
    :pswitch_17
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4196
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$83;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$83;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4213
    const v108, 0x7f030018

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4214
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4215
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001c

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4216
    const-string v108, "0"

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 4218
    .local v93, "spend":Ljava/lang/String;
    const v108, 0x7f07000a

    :try_start_a
    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v100

    check-cast v100, Landroid/widget/TextView;

    .line 4219
    .restart local v100    # "tnotenote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v110, v0

    invoke-static/range {v110 .. v110}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    rsub-int/lit8 v110, v110, 0x64

    move/from16 v0, v110

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v110, v0

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    cmp-long v108, v108, v110

    if-lez v108, :cond_19

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    rsub-int/lit8 v108, v108, 0x64

    move/from16 v0, v108

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v108, v0

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 4221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    invoke-static/range {v93 .. v93}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    sub-long v108, v108, v110

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 4222
    const-string v108, "100"

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 4223
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "    \u6211\u7531\u4e8e\u52b3\u7d2f\u8fc7\u5ea6\u6655\u5012\u5728\u8857\u5934\uff0c \u597d\u5fc3\u4eba\u9001\u6211\u53bb\u4e86\u533b\u9662\uff0c \u82b1\u6389\u6025\u6551\u8d39"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v93 .. v93}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u5143\uff01"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 4240
    .end local v100    # "tnotenote":Landroid/widget/TextView;
    :catch_6
    move-exception v49

    .line 4241
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4227
    .end local v49    # "e":Ljava/lang/Exception;
    .restart local v100    # "tnotenote":Landroid/widget/TextView;
    :cond_19
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    move/from16 v0, v108

    div-int/lit16 v0, v0, 0x2710

    move/from16 v108, v0

    move/from16 v0, v108

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v108, v0

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 4228
    invoke-static/range {v93 .. v93}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    if-nez v108, :cond_1a

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    add-int/lit8 v108, v108, -0x1

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 4230
    const-string v108, "    \u6211\u7531\u4e8e\u52b3\u7d2f\u8fc7\u5ea6\u6655\u5012\u5728\u8857\u5934\uff0c \u6ca1\u6709\u4e00\u4e2a\u4eba\u6562\u6765\u6276\u6211\u3002 \u5065\u5eb7\u51cf\u5c111\uff01"

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 4234
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v109, v0

    invoke-static/range {v109 .. v109}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-static/range {v109 .. v109}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v110

    const-wide v112, 0x40c3880000000000L    # 10000.0

    div-double v110, v110, v112

    move-wide/from16 v0, v110

    double-to-int v0, v0

    move/from16 v109, v0

    add-int v108, v108, v109

    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->health:Ljava/lang/String;

    .line 4235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    move-object/from16 v108, v0

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v108

    invoke-static/range {v93 .. v93}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    move/from16 v0, v110

    int-to-long v0, v0

    move-wide/from16 v110, v0

    sub-long v108, v108, v110

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v108

    invoke-static/range {v108 .. v108}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->cash:Ljava/lang/String;

    .line 4236
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "    \u6211\u7531\u4e8e\u52b3\u7d2f\u8fc7\u5ea6\u6655\u5012\u5728\u8857\u5934\uff0c \u597d\u5fc3\u4eba\u9001\u6211\u53bb\u4e86\u533b\u9662\uff0c \u82b1\u6389\u6025\u6551\u8d39"

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v93 .. v93}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    const-string v109, "\u5143\uff01"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 4245
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v93    # "spend":Ljava/lang/String;
    .end local v100    # "tnotenote":Landroid/widget/TextView;
    :pswitch_18
    const/16 v108, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4246
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$84;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$84;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4280
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->GameOver()V

    .line 4281
    const v108, 0x7f030019

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4282
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4283
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001c

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4284
    const v108, 0x7f07000a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v100

    check-cast v100, Landroid/widget/TextView;

    .line 4285
    .restart local v100    # "tnotenote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->event:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v100

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4287
    const v108, 0x7f070006

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 4288
    .restart local v23    # "bmoregames":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$85;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$85;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4303
    .end local v23    # "bmoregames":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v100    # "tnotenote":Landroid/widget/TextView;
    :pswitch_19
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4304
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$86;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$86;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4319
    const v108, 0x7f030012

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4320
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4321
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001d

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4322
    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadVoucher()Ljava/lang/String;

    move-result-object v106

    .line 4323
    .local v106, "v":Ljava/lang/String;
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v105

    check-cast v105, Landroid/widget/TextView;

    .line 4324
    .local v105, "tvoucherleft":Landroid/widget/TextView;
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u4e70\u623f\u4ee3\u91d1\u5238\u4f59\u989d\uff1a "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v106 .. v106}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v105

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v105

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4326
    const v108, 0x7f07002b

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v101

    check-cast v101, Landroid/widget/TextView;

    .line 4327
    .local v101, "ttimeleft":Landroid/widget/TextView;
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u5269\u4f59\u53ef\u52a0\u65f6\u6b21\u6570\uff1a "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->moretimecount:Ljava/lang/String;

    move-object/from16 v109, v0

    invoke-static/range {v109 .. v109}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v101

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v101

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4329
    const v108, 0x7f07002c

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v98

    check-cast v98, Landroid/widget/TextView;

    .line 4330
    .local v98, "tnote2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4331
    const v108, 0x7f07002d

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v99

    check-cast v99, Landroid/widget/TextView;

    .line 4332
    .local v99, "tnote3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v99

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4333
    const v108, 0x7f07001c

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v92

    check-cast v92, Landroid/widget/RelativeLayout;

    .line 4334
    .local v92, "rbig":Landroid/widget/RelativeLayout;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$87;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$87;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v92

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4343
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$88;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$88;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v92

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4351
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v108, 0x3f800000    # 1.0f

    const v109, 0x3f19999a    # 0.6f

    move/from16 v0, v108

    move/from16 v1, v109

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4352
    .local v5, "ani_moretime":Landroid/view/animation/Animation;
    const-wide/16 v108, 0x12c

    move-wide/from16 v0, v108

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4353
    const/16 v108, -0x1

    move/from16 v0, v108

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 4354
    const/16 v108, 0x2

    move/from16 v0, v108

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 4355
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 4356
    .local v25, "bmoretime_ok":Landroid/widget/Button;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4357
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$89;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$89;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4397
    const v108, 0x7f07000e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 4398
    .local v24, "bmoretime_close":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$90;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$90;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4406
    const v108, 0x7f07002a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 4407
    .restart local v6    # "baddvoucher":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$91;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$91;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4438
    .end local v5    # "ani_moretime":Landroid/view/animation/Animation;
    .end local v6    # "baddvoucher":Landroid/widget/Button;
    .end local v24    # "bmoretime_close":Landroid/widget/Button;
    .end local v25    # "bmoretime_ok":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v92    # "rbig":Landroid/widget/RelativeLayout;
    .end local v98    # "tnote2":Landroid/widget/TextView;
    .end local v99    # "tnote3":Landroid/widget/TextView;
    .end local v101    # "ttimeleft":Landroid/widget/TextView;
    .end local v105    # "tvoucherleft":Landroid/widget/TextView;
    .end local v106    # "v":Ljava/lang/String;
    :pswitch_1a
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4439
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$92;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$92;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4460
    const v108, 0x7f03000c

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4461
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4462
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02000b

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4463
    const v108, 0x7f07000e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 4464
    .restart local v13    # "bclose":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$93;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$93;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4477
    const v108, 0x7f070016

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/Button;

    .line 4478
    .local v44, "bvoucher1":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$94;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$94;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4489
    const v108, 0x7f070017

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/Button;

    .line 4490
    .local v45, "bvoucher10":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$95;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$95;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4501
    const v108, 0x7f070018

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/Button;

    .line 4502
    .local v46, "bvoucher50":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$96;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$96;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4513
    const v108, 0x7f070019

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/Button;

    .line 4514
    .local v47, "bvoucher98":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$97;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$97;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4525
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v71

    check-cast v71, Landroid/widget/ImageView;

    .line 4526
    .local v71, "inote":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    move/from16 v108, v0

    if-eqz v108, :cond_1c

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020028

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v71

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4530
    :goto_12
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v108, 0x3f800000    # 1.0f

    const v109, 0x3f19999a    # 0.6f

    move/from16 v0, v108

    move/from16 v1, v109

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4531
    .restart local v5    # "ani_moretime":Landroid/view/animation/Animation;
    const-wide/16 v108, 0x12c

    move-wide/from16 v0, v108

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4532
    const/16 v108, -0x1

    move/from16 v0, v108

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 4533
    const/16 v108, 0x2

    move/from16 v0, v108

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 4534
    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4536
    const-string v74, ""

    .line 4537
    .local v74, "lable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->buyvoucherfrom:I

    move/from16 v108, v0

    const/16 v109, 0x1

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_1d

    .line 4538
    const-string v74, "way1click"

    .line 4543
    :cond_1b
    :goto_13
    invoke-static/range {v74 .. v74}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 4544
    .local v107, "waynclick":Ljava/lang/String;
    const/16 v73, 0x0

    .line 4546
    .local v73, "iwaynclick":I
    :try_start_c
    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v73

    .line 4551
    :goto_14
    add-int/lit8 v73, v73, 0x1

    .line 4552
    invoke-static/range {v73 .. v73}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v74

    move-object/from16 v1, v108

    invoke-static {v0, v1}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4554
    const v108, 0x7f07001a

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Button;

    .line 4555
    .local v41, "bvideo":Landroid/widget/Button;
    const v108, 0x7f07001b

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v103

    check-cast v103, Landroid/widget/TextView;

    .line 4556
    .local v103, "tvideonote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zf/dsmfj/MaiFangJi;->adshouldinit:Z

    move/from16 v108, v0

    if-eqz v108, :cond_1f

    .line 4574
    const/16 v108, 0x0

    move-object/from16 v0, v103

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v103

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4576
    const-string v108, "\u770b\u89c6\u9891\u514d\u8d39\u9886\u53d6\u4e70\u623f\u4ee3\u91d1\u5238\u6d3b\u52a8\u5df2\u7ed3\u675f"

    move-object/from16 v0, v103

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4578
    const/16 v108, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4579
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$98;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$98;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4628
    :goto_15
    const/16 v108, 0x4

    move-object/from16 v0, v41

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4629
    const/16 v108, 0x4

    move-object/from16 v0, v103

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4529
    .end local v5    # "ani_moretime":Landroid/view/animation/Animation;
    .end local v41    # "bvideo":Landroid/widget/Button;
    .end local v73    # "iwaynclick":I
    .end local v74    # "lable":Ljava/lang/String;
    .end local v103    # "tvideonote":Landroid/widget/TextView;
    .end local v107    # "waynclick":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020029

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v71

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_12

    .line 4539
    .restart local v5    # "ani_moretime":Landroid/view/animation/Animation;
    .restart local v74    # "lable":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->buyvoucherfrom:I

    move/from16 v108, v0

    const/16 v109, 0x2

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_1e

    .line 4540
    const-string v74, "way2click"

    goto/16 :goto_13

    .line 4541
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zf/dsmfj/MaiFangJi;->buyvoucherfrom:I

    move/from16 v108, v0

    const/16 v109, 0x3

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_1b

    .line 4542
    const-string v74, "way3click"

    goto/16 :goto_13

    .line 4547
    .restart local v73    # "iwaynclick":I
    .restart local v107    # "waynclick":Ljava/lang/String;
    :catch_7
    move-exception v49

    .line 4548
    .restart local v49    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V

    .line 4549
    const/16 v73, 0x0

    goto/16 :goto_14

    .line 4621
    .end local v49    # "e":Ljava/lang/Exception;
    .restart local v41    # "bvideo":Landroid/widget/Button;
    .restart local v103    # "tvideonote":Landroid/widget/TextView;
    :cond_1f
    const/16 v108, 0x4

    move-object/from16 v0, v103

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4622
    const/16 v108, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4623
    const/16 v108, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4625
    const-string v108, "\u66f4\u591a\u5957\u9910"

    move-object/from16 v0, v41

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 4632
    .end local v5    # "ani_moretime":Landroid/view/animation/Animation;
    .end local v13    # "bclose":Landroid/widget/Button;
    .end local v41    # "bvideo":Landroid/widget/Button;
    .end local v44    # "bvoucher1":Landroid/widget/Button;
    .end local v45    # "bvoucher10":Landroid/widget/Button;
    .end local v46    # "bvoucher50":Landroid/widget/Button;
    .end local v47    # "bvoucher98":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v71    # "inote":Landroid/widget/ImageView;
    .end local v73    # "iwaynclick":I
    .end local v74    # "lable":Ljava/lang/String;
    .end local v103    # "tvideonote":Landroid/widget/TextView;
    .end local v107    # "waynclick":Ljava/lang/String;
    :pswitch_1b
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4633
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$99;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$99;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4650
    const v108, 0x7f03000d

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4651
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4652
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020008

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4653
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 4654
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->note_buyv:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4656
    const v108, 0x7f07001d

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 4657
    .local v11, "bbuyvclose":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$100;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$100;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4667
    .end local v11    # "bbuyvclose":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v97    # "tnote":Landroid/widget/TextView;
    :pswitch_1c
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4668
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$101;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$101;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4679
    const v108, 0x7f030016

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4680
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4681
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001b

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4682
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 4683
    .local v29, "bquit":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$102;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$102;-><init>(Lcom/zf/dsmfj/MaiFangJi;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4694
    .end local v29    # "bquit":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    :pswitch_1d
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4695
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$103;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$103;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4706
    const v108, 0x7f03000f

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4707
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4708
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001d

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4709
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 4710
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4711
    const-string v108, "    \u5728\u63d0\u793a\u6a21\u5f0f\u4e2d\uff0c \u4f60\u53ef\u4ee5\u9075\u5faa\u95ea\u52a8\u6309\u94ae\u7684\u63d0\u793a\u8fdb\u884c\u4e70\u5356\u64cd\u4f5c\u3002\n    \u4ef7\u683c\u662f\u6e38\u620f\u7684\u5173\u952e\uff0c \u4f60\u8981\u5c3d\u91cf\u5728\u63d0\u793a\u6a21\u5f0f\u7684\u5e2e\u52a9\u4e0b\uff0c \u6478\u6e05\u8d27\u7269\u4ef7\u683c\u7684\u53d8\u52a8\u533a\u95f4\u3002"

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4712
    const v108, 0x7f070012

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v98

    check-cast v98, Landroid/widget/TextView;

    .line 4713
    .restart local v98    # "tnote2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4714
    const-string v108, "\u63d0\u793a\u6a21\u5f0f\u5df2\u5f00\u542f"

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4715
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 4716
    .restart local v29    # "bquit":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$104;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$104;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4726
    .end local v29    # "bquit":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v97    # "tnote":Landroid/widget/TextView;
    .end local v98    # "tnote2":Landroid/widget/TextView;
    :pswitch_1e
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4727
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$105;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$105;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4740
    const v108, 0x7f030003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4741
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4742
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020022

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4743
    const v108, 0x7f070008

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v105

    check-cast v105, Landroid/widget/TextView;

    .line 4744
    .restart local v105    # "tvoucherleft":Landroid/widget/TextView;
    new-instance v108, Ljava/lang/StringBuilder;

    const-string v109, "\u4e70\u623f\u4ee3\u91d1\u5238\u4f59\u989d\uff1a "

    invoke-direct/range {v108 .. v109}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zf/dsmfj/MaiFangJi;->ReadVoucher()Ljava/lang/String;

    move-result-object v109

    invoke-static/range {v109 .. v109}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-virtual/range {v108 .. v109}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v108

    invoke-virtual/range {v108 .. v108}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    move-object/from16 v0, v105

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v105

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4746
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v98

    check-cast v98, Landroid/widget/TextView;

    .line 4747
    .restart local v98    # "tnote2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4748
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 4749
    .local v28, "bok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$106;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$106;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4784
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 4785
    .local v12, "bcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$107;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$107;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4801
    .end local v12    # "bcancel":Landroid/widget/Button;
    .end local v28    # "bok":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v98    # "tnote2":Landroid/widget/TextView;
    .end local v105    # "tvoucherleft":Landroid/widget/TextView;
    :pswitch_1f
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4802
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$108;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$108;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4815
    const v108, 0x7f030007

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4816
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4817
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001d

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4818
    const v108, 0x7f070012

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v102

    check-cast v102, Landroid/widget/TextView;

    .line 4819
    .local v102, "ttitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v102

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->casttitle:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v102

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4821
    const v108, 0x7f070013

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v95

    check-cast v95, Landroid/widget/TextView;

    .line 4822
    .local v95, "tcontent":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->castcontent:Ljava/lang/String;

    move-object/from16 v108, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4824
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 4825
    .restart local v28    # "bok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$109;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$109;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4840
    const v108, 0x7f07000e

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 4841
    .restart local v13    # "bclose":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$110;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$110;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4851
    .end local v13    # "bclose":Landroid/widget/Button;
    .end local v28    # "bok":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v95    # "tcontent":Landroid/widget/TextView;
    .end local v102    # "ttitle":Landroid/widget/TextView;
    :pswitch_20
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4852
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$111;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$111;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4865
    const v108, 0x7f030002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4866
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4867
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f020022

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4868
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 4869
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4870
    const-string v108, "    \u5728\u75af\u72c2\u6a21\u5f0f\u4e0b\uff0c \u6210\u529f\u4e70\u623f\u80fd\u5f97\u5230\u66f4\u591a\u7684\u4e70\u623f\u4ee3\u91d1\u5238\uff0c \u4f46\u6e38\u620f\u8fc7\u7a0b\u4e2d\u4f1a\u5f39\u51fa\u5f88\u591a\u5e7f\u544a\uff01 \u786e\u5b9a\u5f00\u542f\u5417\uff1f"

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4871
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 4872
    .restart local v28    # "bok":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$112;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$112;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4882
    const v108, 0x7f070004

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 4883
    .restart local v12    # "bcancel":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$113;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$113;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v108

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4894
    .end local v12    # "bcancel":Landroid/widget/Button;
    .end local v28    # "bok":Landroid/widget/Button;
    .end local v59    # "ibg":Landroid/widget/ImageView;
    .end local v97    # "tnote":Landroid/widget/TextView;
    :pswitch_21
    const/16 v108, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4895
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$114;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$114;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4906
    const v108, 0x7f03000f

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4907
    const/high16 v108, 0x7f070000

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/ImageView;

    .line 4908
    .restart local v59    # "ibg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->instance:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v108, v0

    const v109, 0x7f02001d

    invoke-static/range {v108 .. v109}, Lcom/zf/dsmfj/MaiFangJi;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v108

    move-object/from16 v0, v59

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4909
    const v108, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v97

    check-cast v97, Landroid/widget/TextView;

    .line 4910
    .restart local v97    # "tnote":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4911
    const-string v108, "    \u5728\u75af\u72c2\u6a21\u5f0f\u4e2d\uff0c \u6210\u529f\u4e70\u623f\u80fd\u5f97\u5230\u66f4\u591a\u4e70\u623f\u4ee3\u91d1\u5238\uff0c \u4f46\u6e38\u620f\u8fc7\u7a0b\u4e2d\u4f1a\u6709\u8f83\u591a\u5e7f\u544a\u3002\u8be6\u60c5\u5982\u4e0b\uff1a\n    1\u3001\u9996\u6b21\u8d2d\u4e70\u5956\u52b1\u7ffb\u500d\uff1b\n    2\u3001\u975e\u9996\u6b21\u8d2d\u4e70\u4e5f\u80fd\u5f97\u5230\u9996\u6b21\u8d2d\u4e70\u5956\u52b1"

    move-object/from16 v0, v97

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4912
    const v108, 0x7f070012

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v98

    check-cast v98, Landroid/widget/TextView;

    .line 4913
    .restart local v98    # "tnote2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->tface:Landroid/graphics/Typeface;

    move-object/from16 v108, v0

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4914
    const-string v108, "\u75af\u72c2\u6a21\u5f0f\u5df2\u5f00\u542f"

    move-object/from16 v0, v98

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4915
    const v108, 0x7f070003

    move-object/from16 v0, p2

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 4916
    .restart local v29    # "bquit":Landroid/widget/Button;
    new-instance v108, Lcom/zf/dsmfj/MaiFangJi$115;

    move-object/from16 v0, v108

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zf/dsmfj/MaiFangJi$115;-><init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2930
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_1
        :pswitch_e
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 2994
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

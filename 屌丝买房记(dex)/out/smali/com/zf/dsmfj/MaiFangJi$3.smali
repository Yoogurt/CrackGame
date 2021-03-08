.class Lcom/zf/dsmfj/MaiFangJi$3;
.super Landroid/os/Handler;
.source "MaiFangJi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/MaiFangJi$3;)Lcom/zf/dsmfj/MaiFangJi;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 177
    .local v3, "b":Landroid/os/Bundle;
    const-string v18, "servertime"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 178
    .local v13, "servertime":Ljava/lang/String;
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "url":Ljava/lang/String;
    const-string v18, "ad"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "ad":Ljava/lang/String;
    const-string v18, "badadnbr"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "badadnbr":Ljava/lang/String;
    const-string v18, "sharemsg"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, "sharemsg":Ljava/lang/String;
    const-string v18, "judgelevel"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "judgelevel":Ljava/lang/String;
    const-string v18, "sharegiftshouldgive"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "sharegiftshouldgive":Ljava/lang/String;
    const-string v18, "judgegiftshouldgive"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "judgegiftshouldgive":Ljava/lang/String;
    const-string v18, "hintenable"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "hintenable":Ljava/lang/String;
    const-string v18, "normalsharegiftleft"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "normalsharegiftleft":Ljava/lang/String;
    const-string v18, "normalsharegift"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "normalsharegift":Ljava/lang/String;
    const-string v18, "crazyenable"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "crazyenable":Ljava/lang/String;
    const-string v18, "videogift"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, "videogift":Ljava/lang/String;
    const-string v18, "moregameurl"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "moregameurl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/zf/dsmfj/MaiFangJi;->access$1(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$2(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 196
    if-nez v2, :cond_0

    .line 197
    const-string v2, ""

    .line 198
    :cond_0
    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "adon"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$3(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 202
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/MaiFangJi;->access$4(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/MaiFangJi;->access$5(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 204
    const-string v18, "buddy"

    const-string v19, "\u521d\u59cb\u5316\u5e7f\u544a"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    new-instance v19, Lcom/qq/e/ads/interstitial/InterstitialAD;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v20

    const-string v21, "1103546598"

    const-string v22, "4030311615494390"

    invoke-direct/range {v19 .. v22}, Lcom/qq/e/ads/interstitial/InterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/zf/dsmfj/MaiFangJi;->iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

    move-object/from16 v18, v0

    new-instance v19, Lcom/zf/dsmfj/MaiFangJi$3$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zf/dsmfj/MaiFangJi$3$1;-><init>(Lcom/zf/dsmfj/MaiFangJi$3;)V

    invoke-virtual/range {v18 .. v19}, Lcom/qq/e/ads/interstitial/InterstitialAD;->setADListener(Lcom/qq/e/ads/interstitial/InterstitialADListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi;->iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qq/e/ads/interstitial/InterstitialAD;->loadAD()V

    .line 248
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$8(Lcom/zf/dsmfj/MaiFangJi;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static {v15}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$9(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$10(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/MaiFangJi;->access$11(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$12(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 260
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/MaiFangJi;->access$11(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    const/16 v19, 0x21

    invoke-virtual/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 263
    :cond_3
    invoke-static {v14}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveShareGiftShouldGive(Ljava/lang/String;)V

    .line 265
    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveJudgeGiftShouldGive(Ljava/lang/String;)V

    .line 267
    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 268
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SetHintEnable(Z)V

    .line 272
    :goto_2
    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveNormalShareGiftLeft(Ljava/lang/String;)V

    .line 274
    invoke-static {v11}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveNormalShareGift(Ljava/lang/String;)V

    .line 276
    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 277
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SetCrazyEnable(Z)V

    .line 283
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveVideoGift(Ljava/lang/String;)V

    .line 285
    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SaveMoreGameURL(Ljava/lang/String;)V

    .line 286
    return-void

    .line 201
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$3(Lcom/zf/dsmfj/MaiFangJi;Z)V

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v6

    .line 250
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/MaiFangJi$3;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/zf/dsmfj/MaiFangJi;->access$8(Lcom/zf/dsmfj/MaiFangJi;I)V

    goto/16 :goto_1

    .line 270
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SetHintEnable(Z)V

    goto :goto_2

    .line 279
    :cond_6
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SetCrazyEnable(Z)V

    .line 280
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/zf/dsmfj/Util;->SetCrazyOn(Z)V

    goto :goto_3
.end method

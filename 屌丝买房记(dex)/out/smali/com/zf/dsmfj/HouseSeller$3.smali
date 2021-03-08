.class Lcom/zf/dsmfj/HouseSeller$3;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/HouseSeller;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const-wide/32 v10, 0xf4240

    const-wide/16 v8, 0x2710

    .line 240
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v2, v2, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 241
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$15(Lcom/zf/dsmfj/HouseSeller;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v2}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 267
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v2}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    mul-long/2addr v4, v10

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v2}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 253
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long/2addr v4, v6

    mul-long/2addr v4, v8

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    goto/16 :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    goto/16 :goto_0

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 260
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    goto/16 :goto_0

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$3;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class Lcom/zf/dsmfj/MaiFangJi$89;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$89;->val$dialog:Landroid/app/Dialog;

    .line 4357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 4361
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4362
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$105(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v6

    .line 4363
    .local v6, "v":Ljava/lang/String;
    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0xc350

    if-lt v7, v8, :cond_0

    .line 4364
    const/16 v7, -0x32

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 4366
    :try_start_0
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$49(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4367
    .local v1, "idatelimit":I
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    add-int/lit8 v8, v1, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$106(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4368
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$50(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4369
    .local v3, "imoretimecount":I
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    add-int/lit8 v8, v3, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$107(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4373
    .end local v1    # "idatelimit":I
    .end local v3    # "imoretimecount":I
    :goto_0
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 4374
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$101(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4376
    const-string v7, "moretime"

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->ReadUsage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4377
    .local v4, "moretime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4379
    .local v2, "imoretime":I
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 4384
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 4385
    const-string v7, "moretime"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/Util;->SaveUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4395
    .end local v2    # "imoretime":I
    .end local v4    # "moretime":Ljava/lang/String;
    :goto_2
    return-void

    .line 4370
    :catch_0
    move-exception v0

    .line 4371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4380
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "imoretime":I
    .restart local v4    # "moretime":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 4381
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4382
    const/4 v2, 0x0

    goto :goto_1

    .line 4388
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "imoretime":I
    .end local v4    # "moretime":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 4389
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$72(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4390
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 4391
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$89;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v7

    const-string v8, "\u4f60\u7684\u4e70\u623f\u4ee3\u91d1\u5238\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u9009\u62e9\u4f60\u8981\u8d2d\u4e70\u7684\u4ee3\u91d1\u5238\u6570\u91cf"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 4392
    .local v5, "t":Landroid/widget/Toast;
    const/16 v7, 0x11

    invoke-virtual {v5, v7, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 4393
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

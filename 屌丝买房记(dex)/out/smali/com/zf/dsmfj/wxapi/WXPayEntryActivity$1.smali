.class Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;
.super Landroid/os/Handler;
.source "WXPayEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "result"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "result":Ljava/lang/String;
    const-string v5, "voucher"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "voucher":Ljava/lang/String;
    const/4 v2, 0x0

    .line 71
    .local v2, "ivoucher":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    :goto_0
    const-string v5, "SUCC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    invoke-static {v2}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 77
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u652f\u4ed8\u6210\u529f\uff0c\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v7, v2, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e07"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-static {}, Lcom/zf/dsmfj/Util;->RemoveAd()V

    .line 90
    :goto_1
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    invoke-virtual {v5}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->finish()V

    .line 91
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "FAIL_NOTFOUND"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    const-string v6, "\u652f\u4ed8\u5931\u8d25\uff0cnot found"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 82
    :cond_1
    const-string v5, "FAIL_DELIVERED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    const-string v6, "\u652f\u4ed8\u5931\u8d25\uff0calready delivered"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 84
    :cond_2
    const-string v5, "FAIL_NOTPAID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    const-string v6, "\u652f\u4ed8\u5931\u8d25\uff0cnot paid"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 86
    :cond_3
    const-string v5, "FAIL_WXCONFIRM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    const-string v6, "\u652f\u4ed8\u5931\u8d25\uff0cwx confirm"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 89
    :cond_4
    iget-object v5, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$1;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    const-string v6, "\u652f\u4ed8\u5931\u8d25\uff0cunknown"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

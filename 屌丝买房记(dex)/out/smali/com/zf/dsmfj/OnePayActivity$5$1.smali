.class Lcom/zf/dsmfj/OnePayActivity$5$1;
.super Landroid/os/Handler;
.source "OnePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zf/dsmfj/OnePayActivity$5;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity$5;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "result":Ljava/lang/String;
    const-string v4, "voucher"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "voucher":Ljava/lang/String;
    const-string v4, "SUCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "ivoucher":I
    invoke-static {v1}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 159
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e70\u623f\u4ee3\u91d1\u5238\u5df2\u589e\u52a0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v6, v1, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4e07"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 160
    invoke-static {}, Lcom/zf/dsmfj/Util;->RemoveAd()V

    .line 161
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    .line 179
    .end local v1    # "ivoucher":I
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v4, "FAIL_NOTFOUND"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    const-string v5, "\u672a\u627e\u5230\u8ba2\u5355"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    goto :goto_0

    .line 167
    :cond_2
    const-string v4, "FAIL_DELIVERED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    const-string v5, "\u91cd\u590d\u63d0\u4ea4\u8bf7\u6c42"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    goto :goto_0

    .line 171
    :cond_3
    const-string v4, "FAIL_ALICONFIRM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    const-string v5, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    goto :goto_0

    .line 175
    :cond_4
    const-string v4, "FAIL_NOTPAID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    const-string v5, "\u8ba2\u5355\u672a\u5b8c\u6210\u652f\u4ed8"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$1;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    goto/16 :goto_0
.end method

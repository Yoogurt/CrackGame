.class Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$hconfirm:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    iput-object p2, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->val$hconfirm:Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    const/4 v2, 0x5

    .line 96
    .local v2, "n":I
    :goto_0
    if-gtz v2, :cond_0

    .line 110
    :goto_1
    return-void

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->this$0:Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;

    invoke-static {v4}, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;->access$0(Lcom/zf/dsmfj/wxapi/WXPayEntryActivity;)Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->val$hconfirm:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 104
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    iget-object v4, p0, Lcom/zf/dsmfj/wxapi/WXPayEntryActivity$2;->val$hconfirm:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

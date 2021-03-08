.class Lcom/zf/dsmfj/OnePayActivity$5$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    iput-object p2, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->val$orderNo:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 187
    const/4 v2, 0x5

    .line 188
    .local v2, "n":I
    :goto_0
    if-gtz v2, :cond_0

    .line 202
    :goto_1
    return-void

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->val$orderNo:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/zf/dsmfj/OnePayActivity;->access$4(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/zf/dsmfj/OnePayActivity;->hconfirmali:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    iget-object v4, p0, Lcom/zf/dsmfj/OnePayActivity$5$2;->this$1:Lcom/zf/dsmfj/OnePayActivity$5;

    invoke-static {v4}, Lcom/zf/dsmfj/OnePayActivity$5;->access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/zf/dsmfj/OnePayActivity;->hconfirmali:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

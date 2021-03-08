.class Lcom/zf/dsmfj/OnePayActivity$5;
.super Landroid/os/Handler;
.source "OnePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity;->BuyVoucher(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/OnePayActivity;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$5;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/OnePayActivity$5;)Lcom/zf/dsmfj/OnePayActivity;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$5;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget-object v3, p0, Lcom/zf/dsmfj/OnePayActivity$5;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    new-instance v4, Lcom/zf/dsmfj/OnePayActivity$5$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/zf/dsmfj/OnePayActivity$5$1;-><init>(Lcom/zf/dsmfj/OnePayActivity$5;Landroid/os/Looper;)V

    iput-object v4, v3, Lcom/zf/dsmfj/OnePayActivity;->hconfirmali:Landroid/os/Handler;

    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "orderNo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "orderNo":Ljava/lang/String;
    iget-object v3, p0, Lcom/zf/dsmfj/OnePayActivity$5;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 184
    .local v2, "r2":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    new-instance v3, Lcom/zf/dsmfj/OnePayActivity$5$2;

    invoke-direct {v3, p0, v1}, Lcom/zf/dsmfj/OnePayActivity$5$2;-><init>(Lcom/zf/dsmfj/OnePayActivity$5;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Lcom/zf/dsmfj/OnePayActivity$5$2;->start()V

    .line 204
    return-void
.end method

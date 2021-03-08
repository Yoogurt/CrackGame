.class Lcom/zf/dsmfj/MaiFangJi$3$1;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial/InterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zf/dsmfj/MaiFangJi$3;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$3$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$3;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "buddy"

    const-string v1, "\u5e7f\u544a\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onADClosed()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$3$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$3;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi$3;->access$0(Lcom/zf/dsmfj/MaiFangJi$3;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$7(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 216
    const-string v0, "buddy"

    const-string v1, "\u5e7f\u544a\u88ab\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public onADExposure()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "buddy"

    const-string v1, "\u5e7f\u544a\u88ab\u5c55\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onADOpened()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onADReceive()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "buddy"

    const-string v1, "\u6210\u529f\u8f7d\u5165\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$3$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$3;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi$3;->access$0(Lcom/zf/dsmfj/MaiFangJi$3;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$7(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 238
    return-void
.end method

.method public onNoAD(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 242
    const-string v0, "buddy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f7d\u5165\u5e7f\u544a\u5931\u8d25\uff0c\u9519\u8bef\u4ee3\u7801"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

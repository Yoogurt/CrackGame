.class Lcom/zf/dsmfj/MaiFangJi$2;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 164
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$2;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0
.end method

.class Lcom/zf/dsmfj/MaiFangJi$27;
.super Landroid/os/Handler;
.source "MaiFangJi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->NewGame()V
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 1179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$43(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$44(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$45(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1183
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1187
    .local v0, "msg1":Landroid/os/Message;
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$27;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

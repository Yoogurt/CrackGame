.class Lcom/zf/dsmfj/MaiFangJi$28;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 1192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1194
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$47(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    .line 1195
    .local v1, "sick":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v3, "    \u4e00\u4e2a\u6f06\u9ed1\u5bd2\u51b7\u7684\u591c\u665a\uff0c \u6211\u518d\u6b21\u6655\u5012\u5728\u8857\u5934\u3002 \u957f\u671f\u7684\u54b8\u83dc\u9992\u5934\u548c\u63ea\u5fc3\u7684\u623f\u4ef7\u6467\u6bc1\u4e86\u6211\u7684\u5065\u5eb7\uff0c \u8ba9\u6211\u518d\u4e5f\u6ca1\u80fd\u9192\u8fc7\u6765\u3002\u3002\u3002"

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$44(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 1199
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0

    .line 1203
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$48(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$49(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$50(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$28;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

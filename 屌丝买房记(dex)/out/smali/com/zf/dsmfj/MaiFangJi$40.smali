.class Lcom/zf/dsmfj/MaiFangJi$40;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$tcash:Landroid/widget/TextView;

.field private final synthetic val$tvoucher:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->val$tcash:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$40;->val$tvoucher:Landroid/widget/TextView;

    .line 3180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 3185
    :try_start_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 3186
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$64(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3187
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$54(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3188
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->val$tcash:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$65(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3189
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->val$tvoucher:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3198
    :goto_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$66(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$68(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3199
    return-void

    .line 3192
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$66(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$40;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$68(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3195
    :catch_0
    move-exception v0

    .line 3196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

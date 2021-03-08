.class Lcom/zf/dsmfj/MaiFangJi$43;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$43;->val$tcash:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$43;->val$tvoucher:Landroid/widget/TextView;

    .line 3226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x17ae8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$64(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3232
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$54(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3233
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->val$tcash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$65(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$63(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3234
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$43;->val$tvoucher:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$43;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3236
    :cond_0
    return-void
.end method

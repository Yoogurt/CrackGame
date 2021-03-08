.class Lcom/zf/dsmfj/MaiFangJi$74;
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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$74;->val$dialog:Landroid/app/Dialog;

    .line 3985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3987
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$81(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3988
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$94(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3989
    .local v0, "moneyneed":Ljava/lang/String;
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 3990
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4005
    :goto_0
    return-void

    .line 3992
    :cond_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 3993
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3994
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v2, "100"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$95(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3995
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3996
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$93(Lcom/zf/dsmfj/MaiFangJi;)V

    goto :goto_0

    .line 3999
    :cond_1
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4000
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v2, "0"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4001
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v2, "100"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$95(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4002
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4003
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$74;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$93(Lcom/zf/dsmfj/MaiFangJi;)V

    goto/16 :goto_0
.end method

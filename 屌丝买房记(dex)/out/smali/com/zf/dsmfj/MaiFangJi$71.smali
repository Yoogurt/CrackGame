.class Lcom/zf/dsmfj/MaiFangJi$71;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$71;->val$dialog:Landroid/app/Dialog;

    .line 3934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3936
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3937
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3938
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v0

    .line 3939
    .local v0, "depositbak":Ljava/lang/String;
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v2, "0"

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3940
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

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

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3941
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$71;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$93(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 3942
    return-void
.end method

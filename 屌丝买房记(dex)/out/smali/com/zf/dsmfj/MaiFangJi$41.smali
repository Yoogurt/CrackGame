.class Lcom/zf/dsmfj/MaiFangJi$41;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$41;->val$dialog:Landroid/app/Dialog;

    .line 3202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3205
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$62(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->SaveVoucher(Ljava/lang/String;)V

    .line 3206
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$69(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 3207
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v1, "0"

    invoke-static {v1}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$54(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3208
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3209
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$57(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$70(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3211
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 3213
    :cond_0
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3214
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$41;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 3215
    :cond_1
    return-void
.end method

.class Lcom/zf/dsmfj/MaiFangJi$38;
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

.field private final synthetic val$bcrazy:Landroid/widget/Button;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$38;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$38;->val$bcrazy:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$38;->val$dialog:Landroid/app/Dialog;

    .line 3127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$38;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$38;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3132
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->SetCrazyOn(Z)V

    .line 3134
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$38;->val$bcrazy:Landroid/widget/Button;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3140
    :goto_0
    return-void

    .line 3137
    :cond_0
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$38;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3138
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$38;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0
.end method

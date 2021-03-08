.class Lcom/zf/dsmfj/MaiFangJi$82;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->val$dialog:Landroid/app/Dialog;

    .line 4171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 4175
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->val$dialog:Landroid/app/Dialog;

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4176
    .local v0, "ibg":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4177
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4178
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$93(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4179
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$101(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4180
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4181
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 4182
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$82;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$46(Lcom/zf/dsmfj/MaiFangJi;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4184
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

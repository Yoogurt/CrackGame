.class Lcom/zf/dsmfj/MaiFangJi$109;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->val$dialog:Landroid/app/Dialog;

    .line 4825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4829
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4830
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 4831
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$109(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4832
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$52(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4833
    :cond_0
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$109(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4834
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$109(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4835
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4836
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$109;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v2, v0}, Lcom/zf/dsmfj/MaiFangJi;->startActivity(Landroid/content/Intent;)V

    .line 4838
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

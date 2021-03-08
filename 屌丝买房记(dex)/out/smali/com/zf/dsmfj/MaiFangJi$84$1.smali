.class Lcom/zf/dsmfj/MaiFangJi$84$1;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi$84;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zf/dsmfj/MaiFangJi$84;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi$84;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$84$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$84;

    .line 4264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4266
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$84$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$84;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi$84;->access$0(Lcom/zf/dsmfj/MaiFangJi$84;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$84$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$84;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi$84;->access$0(Lcom/zf/dsmfj/MaiFangJi$84;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v3

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4267
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadMoreGameURL()Ljava/lang/String;

    move-result-object v1

    .line 4268
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4270
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4271
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$84$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$84;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi$84;->access$0(Lcom/zf/dsmfj/MaiFangJi$84;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zf/dsmfj/MaiFangJi;->startActivity(Landroid/content/Intent;)V

    .line 4272
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$84$1;->this$1:Lcom/zf/dsmfj/MaiFangJi$84;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi$84;->access$0(Lcom/zf/dsmfj/MaiFangJi$84;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$74(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4274
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.class Lcom/zf/dsmfj/HouseSeller$22;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/HouseSeller;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$22;->val$dialog:Landroid/app/Dialog;

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1256
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v3, v3, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v2, v3}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1257
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$22;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1258
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v2}, Lcom/zf/dsmfj/HouseSeller;->access$29(Lcom/zf/dsmfj/HouseSeller;)V

    .line 1259
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/zf/dsmfj/HouseSeller;->access$1(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1260
    const-string v1, "market://details?id=com.zf.dsmfj"

    .line 1261
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1263
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$22;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-virtual {v2, v0}, Lcom/zf/dsmfj/HouseSeller;->startActivity(Landroid/content/Intent;)V

    .line 1264
    return-void
.end method

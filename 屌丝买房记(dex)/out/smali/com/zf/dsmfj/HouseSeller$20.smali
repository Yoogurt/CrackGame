.class Lcom/zf/dsmfj/HouseSeller$20;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$20;->val$dialog:Landroid/app/Dialog;

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v1, v1, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1220
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1222
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v0}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v0

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$27(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v0}, Lcom/zf/dsmfj/HouseSeller;->access$28(Lcom/zf/dsmfj/HouseSeller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 1226
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$20;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$1(Lcom/zf/dsmfj/HouseSeller;I)V

    goto :goto_0
.end method

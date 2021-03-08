.class Lcom/zf/dsmfj/HouseSeller$13;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$13;->val$dialog:Landroid/app/Dialog;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v1, v1, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1054
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v0}, Lcom/zf/dsmfj/HouseSeller;->access$3(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1056
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 1062
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1060
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$13;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$1(Lcom/zf/dsmfj/HouseSeller;I)V

    goto :goto_0
.end method

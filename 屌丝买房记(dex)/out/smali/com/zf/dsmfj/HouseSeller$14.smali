.class Lcom/zf/dsmfj/HouseSeller$14;
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


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v2, v2, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v1, v2}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1068
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v1}, Lcom/zf/dsmfj/HouseSeller;->access$24(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "sharemsg":Ljava/lang/String;
    const-string v1, "@price"

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v3}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/zf/dsmfj/HouseSeller;->access$9(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    const-string v1, "@housename"

    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v2}, Lcom/zf/dsmfj/HouseSeller;->access$6(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v3}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v3}, Lcom/zf/dsmfj/HouseSeller;->access$20(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$25(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$14;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v5

    aget v4, v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Lcom/zf/dsmfj/HouseSeller;->access$26(Lcom/zf/dsmfj/HouseSeller;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1073
    return-void
.end method

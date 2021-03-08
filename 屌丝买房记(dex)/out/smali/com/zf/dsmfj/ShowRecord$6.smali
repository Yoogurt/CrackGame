.class Lcom/zf/dsmfj/ShowRecord$6;
.super Ljava/lang/Object;
.source "ShowRecord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/ShowRecord;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/ShowRecord;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/ShowRecord;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iget-object v1, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v1}, Lcom/zf/dsmfj/ShowRecord;->access$0(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/ShowRecord;->access$1(Lcom/zf/dsmfj/ShowRecord;I)V

    .line 337
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e09\u5343\u8d77\u5bb6\uff0c\u4e00\u5e74\u65f6\u95f4\u6211\u5c31\u4e70\u5230\u4e86"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v3}, Lcom/zf/dsmfj/ShowRecord;->access$6(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v4}, Lcom/zf/dsmfj/ShowRecord;->access$4(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff01\u4f60\u80fd\u505a\u5230\u5417\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v3}, Lcom/zf/dsmfj/ShowRecord;->access$7(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v4}, Lcom/zf/dsmfj/ShowRecord;->access$4(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v4}, Lcom/zf/dsmfj/ShowRecord;->access$8(Lcom/zf/dsmfj/ShowRecord;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$6;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v5}, Lcom/zf/dsmfj/ShowRecord;->access$4(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v5

    aget v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zf/dsmfj/ShowRecord;->access$9(Lcom/zf/dsmfj/ShowRecord;ILjava/lang/String;Ljava/lang/String;I)V

    .line 339
    return-void
.end method

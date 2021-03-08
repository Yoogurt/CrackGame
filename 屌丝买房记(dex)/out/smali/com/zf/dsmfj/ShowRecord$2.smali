.class Lcom/zf/dsmfj/ShowRecord$2;
.super Ljava/lang/Object;
.source "ShowRecord.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/ShowRecord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/ShowRecord;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/ShowRecord;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v2, p3}, Lcom/zf/dsmfj/ShowRecord;->access$2(Lcom/zf/dsmfj/ShowRecord;I)V

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "succnbr":I
    :try_start_0
    iget-object v2, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v2}, Lcom/zf/dsmfj/ShowRecord;->access$3(Lcom/zf/dsmfj/ShowRecord;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v3}, Lcom/zf/dsmfj/ShowRecord;->access$4(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    if-lez v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iget-object v3, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v3}, Lcom/zf/dsmfj/ShowRecord;->access$5(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zf/dsmfj/ShowRecord;->access$1(Lcom/zf/dsmfj/ShowRecord;I)V

    .line 143
    iget-object v2, p0, Lcom/zf/dsmfj/ShowRecord$2;->this$0:Lcom/zf/dsmfj/ShowRecord;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/ShowRecord;->showDialog(I)V

    .line 145
    :cond_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

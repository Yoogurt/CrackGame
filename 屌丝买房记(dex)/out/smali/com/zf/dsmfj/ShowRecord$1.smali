.class Lcom/zf/dsmfj/ShowRecord$1;
.super Ljava/lang/Object;
.source "ShowRecord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/ShowRecord;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/zf/dsmfj/ShowRecord$1;->this$0:Lcom/zf/dsmfj/ShowRecord;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$1;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iget-object v1, p0, Lcom/zf/dsmfj/ShowRecord$1;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v1}, Lcom/zf/dsmfj/ShowRecord;->access$0(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/ShowRecord;->access$1(Lcom/zf/dsmfj/ShowRecord;I)V

    .line 108
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$1;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-virtual {v0}, Lcom/zf/dsmfj/ShowRecord;->finish()V

    .line 109
    return-void
.end method

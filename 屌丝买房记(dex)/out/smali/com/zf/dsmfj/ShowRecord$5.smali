.class Lcom/zf/dsmfj/ShowRecord$5;
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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/ShowRecord;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/ShowRecord$5;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iput-object p2, p0, Lcom/zf/dsmfj/ShowRecord$5;->val$dialog:Landroid/app/Dialog;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$5;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iget-object v1, p0, Lcom/zf/dsmfj/ShowRecord$5;->this$0:Lcom/zf/dsmfj/ShowRecord;

    invoke-static {v1}, Lcom/zf/dsmfj/ShowRecord;->access$0(Lcom/zf/dsmfj/ShowRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/ShowRecord;->access$1(Lcom/zf/dsmfj/ShowRecord;I)V

    .line 329
    iget-object v0, p0, Lcom/zf/dsmfj/ShowRecord$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 330
    return-void
.end method

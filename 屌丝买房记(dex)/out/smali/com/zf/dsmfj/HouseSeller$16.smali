.class Lcom/zf/dsmfj/HouseSeller$16;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$16;->this$0:Lcom/zf/dsmfj/HouseSeller;

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$16;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$16;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v1, v1, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 1090
    return-void
.end method

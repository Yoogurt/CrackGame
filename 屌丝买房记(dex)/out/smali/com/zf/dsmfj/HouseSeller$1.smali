.class Lcom/zf/dsmfj/HouseSeller$1;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$1;->this$0:Lcom/zf/dsmfj/HouseSeller;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$1;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v1, p0, Lcom/zf/dsmfj/HouseSeller$1;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v1, v1, Lcom/zf/dsmfj/HouseSeller;->s_button:I

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 139
    iget-object v0, p0, Lcom/zf/dsmfj/HouseSeller$1;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zf/dsmfj/HouseSeller;->access$1(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 140
    return-void
.end method

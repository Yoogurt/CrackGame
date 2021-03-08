.class Lcom/zf/dsmfj/OnePayActivity$3;
.super Ljava/lang/Object;
.source "OnePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/OnePayActivity;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$3;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$3;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    invoke-virtual {v0}, Lcom/zf/dsmfj/OnePayActivity;->finish()V

    .line 112
    return-void
.end method

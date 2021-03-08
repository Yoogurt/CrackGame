.class Lcom/zf/dsmfj/HouseSeller$4;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$4;->this$0:Lcom/zf/dsmfj/HouseSeller;

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 827
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

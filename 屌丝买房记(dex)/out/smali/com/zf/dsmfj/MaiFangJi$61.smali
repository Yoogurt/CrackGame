.class Lcom/zf/dsmfj/MaiFangJi$61;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;

.field private final synthetic val$ebuynbr:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$61;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$61;->val$ebuynbr:Landroid/widget/EditText;

    .line 3578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 3582
    if-eqz p2, :cond_0

    .line 3583
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$61;->val$ebuynbr:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3584
    :cond_0
    return-void
.end method

.class Lcom/google/ads/consent/ConsentForm$3;
.super Ljava/lang/Object;
.source "ConsentForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/consent/ConsentForm;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/consent/ConsentForm;


# direct methods
.method constructor <init>(Lcom/google/ads/consent/ConsentForm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/consent/ConsentForm;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm$3;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$3;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentForm;->access$1100(Lcom/google/ads/consent/ConsentForm;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormOpened()V

    .line 356
    return-void
.end method

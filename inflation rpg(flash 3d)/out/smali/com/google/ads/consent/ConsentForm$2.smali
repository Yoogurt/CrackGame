.class Lcom/google/ads/consent/ConsentForm$2;
.super Landroid/webkit/WebViewClient;
.source "ConsentForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isInternalRedirect:Z

.field final synthetic this$0:Lcom/google/ads/consent/ConsentForm;


# direct methods
.method constructor <init>(Lcom/google/ads/consent/ConsentForm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/consent/ConsentForm;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private handleUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm$2;->isConsentFormUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean v6, p0, Lcom/google/ads/consent/ConsentForm$2;->isInternalRedirect:Z

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 101
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v4, "status"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "status":Ljava/lang/String;
    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "browserUrl":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v4, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v4, v2}, Lcom/google/ads/consent/ConsentForm;->access$600(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :sswitch_0
    const-string v6, "load_complete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v7, "dismiss"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v6, "browser"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    .line 110
    :pswitch_1
    iput-boolean v5, p0, Lcom/google/ads/consent/ConsentForm$2;->isInternalRedirect:Z

    .line 111
    iget-object v4, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v4, v2}, Lcom/google/ads/consent/ConsentForm;->access$700(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v4, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v4, v1}, Lcom/google/ads/consent/ConsentForm;->access$800(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        -0x51b03f8e -> :sswitch_0
        0x8ff2b28 -> :sswitch_2
        0x63a3b28a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConsentFormUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "consent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p2}, Lcom/google/ads/consent/ConsentForm$2;->handleUrl(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$2;->isInternalRedirect:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v0, p1}, Lcom/google/ads/consent/ConsentForm;->access$900(Lcom/google/ads/consent/ConsentForm;Landroid/webkit/WebView;)V

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 158
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    invoke-static {v0, v1}, Lcom/google/ads/consent/ConsentForm;->access$1002(Lcom/google/ads/consent/ConsentForm;Lcom/google/ads/consent/ConsentForm$LoadState;)Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 159
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$2;->this$0:Lcom/google/ads/consent/ConsentForm;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentForm;->access$1100(Lcom/google/ads/consent/ConsentForm;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 128
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentForm$2;->isConsentFormUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentForm$2;->handleUrl(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p2}, Lcom/google/ads/consent/ConsentForm$2;->isConsentFormUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p2}, Lcom/google/ads/consent/ConsentForm$2;->handleUrl(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

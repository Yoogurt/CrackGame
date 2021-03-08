.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 79
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    .line 80
    monitor-enter v1

    .line 82
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alipay/sdk/app/b;

    iget-boolean v0, v0, Lcom/alipay/sdk/app/b;->c:Z

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    iget v0, v0, Lcom/alipay/sdk/app/i;->h:I

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object v0

    .line 62
    iget v1, v0, Lcom/alipay/sdk/app/i;->h:I

    iget-object v0, v0, Lcom/alipay/sdk/app/i;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/h;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/alipay/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 54
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v2, "cookie"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 45
    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 47
    :try_start_1
    invoke-static {p0, v1, v0}, Lcom/alipay/sdk/util/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    .line 48
    new-instance v0, Lcom/alipay/sdk/app/b;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "biz"

    const-string v2, "GetInstalledAppEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 98
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alipay/sdk/app/b;

    iput-object v1, v0, Lcom/alipay/sdk/app/b;->b:Landroid/os/Handler;

    iput-object v1, v0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 108
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

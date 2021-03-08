.class public Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;
.super Ljava/lang/Object;
.source "ApplicationRaterController.java"


# static fields
.field public static AMAZON_APPSTORE_URL:Ljava/lang/String; = null

.field public static AMAZON_INSTALLER_PACKAGE:Ljava/lang/String; = null

.field public static GOOGLE_APPSTORE_URL:Ljava/lang/String; = null

.field public static GOOGLE_INSTALLER_PACKAGE:Ljava/lang/String; = null

.field public static final STORE_AMAZON:Ljava/lang/String; = "amazon"

.field public static final STORE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STORE_GOOGLEPLAY:Ljava/lang/String; = "googleplay"

.field public static final STORE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TAG:Ljava/lang/String;

.field private static rateDialog:Landroid/app/Dialog;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "com.amazon.venezia"

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->AMAZON_INSTALLER_PACKAGE:Ljava/lang/String;

    .line 45
    const-string v0, "com.android.vending"

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->GOOGLE_INSTALLER_PACKAGE:Ljava/lang/String;

    .line 47
    const-string v0, "amzn://apps/android?p="

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->AMAZON_APPSTORE_URL:Ljava/lang/String;

    .line 48
    const-string v0, "market://details?id="

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->GOOGLE_APPSTORE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 35
    sput-object p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getRateIntentForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "store"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v1, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->TAG:Ljava/lang/String;

    const-string v2, "getRateIntentForApplication( %s, %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/applicationrater/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    const-string v1, "amazon"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->AMAZON_APPSTORE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    :goto_0
    return-object v1

    .line 233
    :cond_0
    const-string v1, "googleplay"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->GOOGLE_APPSTORE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "unknown"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "googleplay"

    invoke-direct {p0, p1, v1}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->getRateIntentForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->getInstallerStore()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "installerStore":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->getRateIntentForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public dismissRateDialog()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    .line 172
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->dismissRateDialog()V

    .line 81
    return-void
.end method

.method public getInstallerStore()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    sget-object v3, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->TAG:Ljava/lang/String;

    const-string v4, "getInstallerStore()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/applicationrater/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "installer":Ljava/lang/String;
    sget-object v3, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->AMAZON_INSTALLER_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const-string v3, "amazon"

    .line 207
    .end local v1    # "installer":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 198
    .restart local v1    # "installer":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v3, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->GOOGLE_INSTALLER_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const-string v3, "googleplay"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1    # "installer":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "unknown"

    goto :goto_0
.end method

.method public rate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "store"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v1, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->TAG:Ljava/lang/String;

    const-string v2, "rate( %s, %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/applicationrater/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->getRateIntentForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "rateIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_0
    return-void
.end method

.method public retrieveApplicationId()V
    .locals 4

    .prologue
    .line 213
    sget-object v1, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->TAG:Ljava/lang/String;

    const-string v2, "retrieveApplicationId()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/applicationrater/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "applicationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "applicationId:retrieved"

    .line 217
    invoke-static {v0}, Lcom/distriqt/extension/applicationrater/events/ApplicationIDEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public showRateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "store"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "rateLabel"    # Ljava/lang/String;
    .param p6, "declineLabel"    # Ljava/lang/String;
    .param p7, "laterLabel"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->dismissRateDialog()V

    .line 95
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v7}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x103012e

    invoke-direct {v5, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 97
    .local v5, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v6, "ll":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "b1":Landroid/widget/Button;
    invoke-virtual {v1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;-><init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "b2":Landroid/widget/Button;
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;

    invoke-direct {v7, p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;-><init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, "b3":Landroid/widget/Button;
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$3;

    invoke-direct {v7, p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$3;-><init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v4, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$4;

    invoke-direct {v7, p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$4;-><init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    .line 155
    sget-object v7, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rateDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 157
    iget-object v7, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v8, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->DIALOG_DISPLAYED:Ljava/lang/String;

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "b1":Landroid/widget/Button;
    .end local v2    # "b2":Landroid/widget/Button;
    .end local v3    # "b3":Landroid/widget/Button;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v6    # "ll":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v7

    goto :goto_0
.end method

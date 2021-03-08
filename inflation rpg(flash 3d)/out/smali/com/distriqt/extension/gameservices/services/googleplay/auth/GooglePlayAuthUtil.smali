.class public Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;
.super Ljava/lang/Object;
.source "GooglePlayAuthUtil.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IAuthUtil;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 50
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 51
    return-void
.end method


# virtual methods
.method public clearToken(Ljava/lang/String;)Z
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 110
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->TAG:Ljava/lang/String;

    const-string v1, "clearToken()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return v3
.end method

.method public getToken(Ljava/lang/String;)Z
    .locals 9
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 65
    sget-object v5, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->TAG:Ljava/lang/String;

    const-string v6, "getToken()"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v5}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 69
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "authCode":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "idToken":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v6, "auth:token:success"

    .line 78
    invoke-static {v1, v3}, Lcom/distriqt/extension/gameservices/events/AuthUtilEvent;->formatTokenForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-interface {v5, v6, v7}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    const/4 v4, 0x1

    .line 103
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .end local v1    # "authCode":Ljava/lang/String;
    .end local v3    # "idToken":Ljava/lang/String;
    :goto_1
    return v4

    .line 83
    .restart local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .restart local v1    # "authCode":Ljava/lang/String;
    .restart local v3    # "idToken":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v6, "auth:token:error"

    const/4 v7, -0x2

    const-string v8, "User tokens are invalid - check you have provided a server client id in your service config"

    .line 85
    invoke-static {v7, v8}, Lcom/distriqt/extension/gameservices/events/AuthUtilEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-interface {v5, v6, v7}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .end local v1    # "authCode":Ljava/lang/String;
    .end local v3    # "idToken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->TAG:Ljava/lang/String;

    const-string v6, "getToken(): account is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v6, "auth:token:error"

    const/4 v7, -0x1

    const-string v8, "User not signed in"

    .line 95
    invoke-static {v7, v8}, Lcom/distriqt/extension/gameservices/events/AuthUtilEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-interface {v5, v6, v7}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

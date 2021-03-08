.class public Lcom/distriqt/extension/playservices/auth/AuthExtension;
.super Ljava/lang/Object;
.source "AuthExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.distriqt.Auth"

    sput-object v0, Lcom/distriqt/extension/playservices/auth/AuthExtension;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/distriqt/extension/playservices/auth/AuthContext;

    invoke-direct {v0}, Lcom/distriqt/extension/playservices/auth/AuthContext;-><init>()V

    sput-object v0, Lcom/distriqt/extension/playservices/auth/AuthExtension;->context:Lcom/adobe/fre/FREContext;

    .line 35
    sget-object v0, Lcom/distriqt/extension/playservices/auth/AuthExtension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/playservices/auth/AuthExtension;->context:Lcom/adobe/fre/FREContext;

    .line 43
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

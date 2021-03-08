.class public Lcom/distriqt/extension/gameservices/events/GameServicesEvent;
.super Ljava/lang/Object;
.source "GameServicesEvent.java"


# static fields
.field public static INITIALISED:Ljava/lang/String;

.field public static SIGN_IN_ERROR:Ljava/lang/String;

.field public static SIGN_IN_FAILED:Ljava/lang/String;

.field public static SIGN_IN_SUCCESS:Ljava/lang/String;

.field public static SIGN_OUT_SUCCESS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "initialised"

    sput-object v0, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->INITIALISED:Ljava/lang/String;

    .line 25
    const-string v0, "signin:success"

    sput-object v0, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_SUCCESS:Ljava/lang/String;

    .line 26
    const-string v0, "signin:failed"

    sput-object v0, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_FAILED:Ljava/lang/String;

    .line 27
    const-string v0, "signin:error"

    sput-object v0, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_ERROR:Ljava/lang/String;

    .line 29
    const-string v0, "signout:success"

    sput-object v0, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_OUT_SUCCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

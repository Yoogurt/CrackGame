.class public Lcom/distriqt/extension/gameservices/services/Service;
.super Ljava/lang/Object;
.source "Service.java"


# static fields
.field public static AMAZON_GAME_CIRCLE:Ljava/lang/String;

.field public static GOOGLE_PLAY_GAME_SERVICES:Ljava/lang/String;

.field public static IOS_GAME_CENTER:Ljava/lang/String;


# instance fields
.field public enableSavedGames:Z

.field public enableTurnBasedMultiplayer:Z

.field public serverClientId:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public serviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "google:play:game:services"

    sput-object v0, Lcom/distriqt/extension/gameservices/services/Service;->GOOGLE_PLAY_GAME_SERVICES:Ljava/lang/String;

    .line 25
    const-string v0, "ios:game:center"

    sput-object v0, Lcom/distriqt/extension/gameservices/services/Service;->IOS_GAME_CENTER:Ljava/lang/String;

    .line 27
    const-string v0, "amazon:game:circle"

    sput-object v0, Lcom/distriqt/extension/gameservices/services/Service;->AMAZON_GAME_CIRCLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/Service;->service:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/Service;->serviceId:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/Service;->serverClientId:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/distriqt/extension/gameservices/services/Service;->enableSavedGames:Z

    .line 40
    iput-boolean v1, p0, Lcom/distriqt/extension/gameservices/services/Service;->enableTurnBasedMultiplayer:Z

    return-void
.end method

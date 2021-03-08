.class public Lcom/distriqt/extension/gameservices/objects/Leaderboard;
.super Ljava/lang/Object;
.source "Leaderboard.java"


# static fields
.field public static COLLECTION_PUBLIC:Ljava/lang/String;

.field public static COLLECTION_SOCIAL:Ljava/lang/String;

.field public static SCORE_ORDER_LARGEST_FIRST:Ljava/lang/String;

.field public static SCORE_ORDER_SMALLEST_FIRST:Ljava/lang/String;

.field public static TIME_SPAN_ALL_TIME:Ljava/lang/String;

.field public static TIME_SPAN_DAILY:Ljava/lang/String;

.field public static TIME_SPAN_WEEKLY:Ljava/lang/String;


# instance fields
.field public displayName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public scoreOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "largest:first"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->SCORE_ORDER_LARGEST_FIRST:Ljava/lang/String;

    .line 25
    const-string v0, "smallest:first"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->SCORE_ORDER_SMALLEST_FIRST:Ljava/lang/String;

    .line 28
    const-string v0, "daily"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_DAILY:Ljava/lang/String;

    .line 29
    const-string v0, "weekly"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_WEEKLY:Ljava/lang/String;

    .line 30
    const-string v0, "alltime"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_ALL_TIME:Ljava/lang/String;

    .line 32
    const-string v0, "public"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->COLLECTION_PUBLIC:Ljava/lang/String;

    .line 33
    const-string v0, "social"

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->COLLECTION_SOCIAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "id"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "scoreOrder"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->scoreOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    return-object v0
.end method

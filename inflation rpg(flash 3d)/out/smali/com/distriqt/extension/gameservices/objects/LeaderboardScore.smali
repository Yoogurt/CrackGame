.class public Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;
.super Ljava/lang/Object;
.source "LeaderboardScore.java"


# instance fields
.field public displayRank:Ljava/lang/String;

.field public displayScore:Ljava/lang/String;

.field public player:Lcom/distriqt/extension/gameservices/objects/Player;

.field public rank:J

.field public rawScore:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "displayRank"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->displayRank:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "displayScore"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->displayScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "rank"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->rank:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v1, "rawScore"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->rawScore:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    const-string v1, "player"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->player:Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    return-object v0
.end method

.class public Lcom/distriqt/extension/gameservices/objects/Quest;
.super Ljava/lang/Object;
.source "Quest.java"


# static fields
.field public static final STATE_ACCEPTED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x4

.field public static final STATE_EXPIRED:I = 0x5

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_UPCOMING:I = 0x1


# instance fields
.field public acceptedTimestamp:J

.field public bannerImageUrl:Ljava/lang/String;

.field public currentMilestone:Lcom/distriqt/extension/gameservices/objects/Milestone;

.field public description:Ljava/lang/String;

.field public endTimestamp:J

.field public iconImageUrl:Ljava/lang/String;

.field public isEndingSoon:Z

.field public lastUpdatedTimestamp:J

.field public name:Ljava/lang/String;

.field public questId:Ljava/lang/String;

.field public startTimestamp:J

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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
    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "questId"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->questId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "name"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "description"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "state"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "iconImageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "bannerImageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->bannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "isEndingSoon"

    iget-boolean v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->isEndingSoon:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v1, "acceptedTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->acceptedTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v1, "startTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->startTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    const-string v1, "endTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->endTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    const-string v1, "lastUpdatedTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->lastUpdatedTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string v1, "currentMilestone"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Quest;->currentMilestone:Lcom/distriqt/extension/gameservices/objects/Milestone;

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/objects/Milestone;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    return-object v0
.end method

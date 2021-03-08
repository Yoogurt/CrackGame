.class public Lcom/distriqt/extension/gameservices/objects/Milestone;
.super Ljava/lang/Object;
.source "Milestone.java"


# static fields
.field public static final STATE_CLAIMED:I = 0x4

.field public static final STATE_COMPLETED_NOT_CLAIMED:I = 0x3

.field public static final STATE_NOT_COMPLETED:I = 0x2

.field public static final STATE_NOT_STARTED:I = 0x1


# instance fields
.field public currentProgress:J

.field public eventId:Ljava/lang/String;

.field public milestoneId:Ljava/lang/String;

.field public rewardData:[B

.field public state:I

.field public targetProgress:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->rewardData:[B

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
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "milestoneId"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->milestoneId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "state"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string v1, "eventId"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "currentProgress"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->currentProgress:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string v1, "targetProgress"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->targetProgress:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->rewardData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->rewardData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 56
    const-string v1, "rewardData"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Milestone;->rewardData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_0
    return-object v0
.end method

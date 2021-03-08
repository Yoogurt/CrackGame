.class public Lcom/distriqt/extension/gameservices/objects/ParticipantResult;
.super Ljava/lang/Object;
.source "ParticipantResult.java"


# instance fields
.field public participant:Lcom/distriqt/extension/gameservices/objects/Participant;

.field public placing:I

.field public result:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/ParticipantResult;
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;-><init>()V

    .line 38
    .local v0, "r":Lcom/distriqt/extension/gameservices/objects/ParticipantResult;
    const-string v1, "participant"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/objects/Participant;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/Participant;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->participant:Lcom/distriqt/extension/gameservices/objects/Participant;

    .line 39
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->result:I

    .line 40
    const-string v1, "placing"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->placing:I

    .line 41
    const-string v1, "score"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->score:I

    .line 42
    return-object v0
.end method

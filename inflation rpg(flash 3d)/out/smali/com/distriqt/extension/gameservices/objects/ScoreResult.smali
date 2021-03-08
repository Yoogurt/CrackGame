.class public Lcom/distriqt/extension/gameservices/objects/ScoreResult;
.super Ljava/lang/Object;
.source "ScoreResult.java"


# instance fields
.field public formattedScore:Ljava/lang/String;

.field public newBest:Z

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->newBest:Z

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->formattedScore:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->score:I

    return-void
.end method

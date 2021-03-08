.class public Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;
.super Ljava/lang/Object;
.source "TurnBasedMatchEvent.java"


# static fields
.field public static final ACCEPTINVITATION_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:acceptinvitation:failed"

.field public static final ACCEPTINVITATION_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:acceptinvitation:success"

.field public static final CANCEL_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:cancelMatch:failed"

.field public static final CANCEL_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:cancelMatch:success"

.field public static final CREATE_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:create:failed"

.field public static final CREATE_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:create:success"

.field public static final FINISH_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:finishMatch:failed"

.field public static final FINISH_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:finishMatch:success"

.field public static final LEAVE_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:leaveMatch:failed"

.field public static final LEAVE_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:leaveMatch:success"

.field public static final LOADMATCH_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:loadmatch:failed"

.field public static final LOADMATCH_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:loadmatch:success"

.field public static final MATCH_REMOVED:Ljava/lang/String; = "turnbasedmultiplayer:match:removed"

.field public static final MATCH_UPDATED:Ljava/lang/String; = "turnbasedmultiplayer:match:updated"

.field public static final REMATCH_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:rematch:failed"

.field public static final REMATCH_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:rematch:success"

.field public static final TAKETURN_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:match:taketurn:failed"

.field public static final TAKETURN_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:match:taketurn:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorForEvent(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .param p0, "matchId"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "matchId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v2, "message"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 97
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "message"

    const-string v3, "Unknown error"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 105
    const-string v2, ""

    goto :goto_1
.end method

.method public static formatForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "matchId"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;->formatMessageForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatForInvitationEvent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "invitationId"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "identifier"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    if-eqz p1, :cond_0

    .line 139
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    .end local p1    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 141
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "message"

    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 151
    const-string v2, "{}"

    goto :goto_1
.end method

.method public static formatMatchForEvent(Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;)Ljava/lang/String;
    .locals 3
    .param p0, "match"    # Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    .local v1, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 120
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatMessageForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "matchId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "matchId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 82
    const-string v2, "{}"

    goto :goto_0
.end method

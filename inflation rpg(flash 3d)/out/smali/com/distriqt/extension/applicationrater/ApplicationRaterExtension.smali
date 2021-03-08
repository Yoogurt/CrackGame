.class public Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;
.super Ljava/lang/Object;
.source "ApplicationRaterExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String;

.field public static context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.distriqt.ApplicationRater"

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    invoke-direct {v0}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;-><init>()V

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    .line 35
    sget-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->ID:Ljava/lang/String;

    sput-object v0, Lcom/distriqt/extension/applicationrater/util/FREUtils;->ID:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    sput-object v0, Lcom/distriqt/extension/applicationrater/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    .line 37
    sget-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    invoke-virtual {v0}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->dispose()V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    .line 45
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

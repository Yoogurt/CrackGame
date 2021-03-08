.class public Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;
.super Ljava/lang/Object;
.source "ApplicationRaterEvent.java"


# static fields
.field public static CANCELLED:Ljava/lang/String;

.field public static DIALOG_DISPLAYED:Ljava/lang/String;

.field public static SELECTED_DECLINE:Ljava/lang/String;

.field public static SELECTED_LATER:Ljava/lang/String;

.field public static SELECTED_RATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "applicationRater:selected:rate"

    sput-object v0, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_RATE:Ljava/lang/String;

    .line 21
    const-string v0, "applicationRater:selected:later"

    sput-object v0, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_LATER:Ljava/lang/String;

    .line 22
    const-string v0, "applicationRater:selected:decline"

    sput-object v0, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_DECLINE:Ljava/lang/String;

    .line 24
    const-string v0, "applicationRater:dialog:cancelled"

    sput-object v0, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->CANCELLED:Ljava/lang/String;

    .line 26
    const-string v0, "applicationRater:dialog:displayed"

    sput-object v0, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->DIALOG_DISPLAYED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

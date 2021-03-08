.class public Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;
.super Ljava/lang/Object;
.source "AdvertViewParams.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x2

.field public static final ALIGN_CENTER:I = 0x5

.field public static final ALIGN_LEFT:I = 0x3

.field public static final ALIGN_NONE:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x4

.field public static final ALIGN_TOP:I = 0x1

.field public static TAG:Ljava/lang/String;


# instance fields
.field public height:I

.field public horizontalAlign:I

.field public verticalAlign:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "AdvertViewParams"

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    .line 41
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    .line 42
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    .line 43
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    .line 45
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I

    .line 46
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Landroid/graphics/Rect;
    .param p2, "verticalAlignString"    # Ljava/lang/String;
    .param p3, "horizontalAlignString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    .line 41
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    .line 42
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    .line 43
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    .line 45
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I

    .line 46
    iput v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I

    .line 65
    :try_start_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    .line 66
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    .line 67
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    .line 68
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    .line 70
    invoke-static {p2}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->alignmentFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I

    .line 71
    invoke-static {p3}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->alignmentFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static alignmentFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "alignment"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "top"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 159
    :cond_0
    const-string v0, "bottom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const/4 v0, 0x5

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    const/4 v0, 0x3

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 175
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 113
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 115
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    :cond_0
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 118
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    iget v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I

    packed-switch v1, :pswitch_data_1

    .line 148
    :goto_1
    :pswitch_0
    return-object v0

    .line 122
    :pswitch_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 126
    :pswitch_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 130
    :pswitch_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 136
    :pswitch_4
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 140
    :pswitch_5
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 144
    :pswitch_6
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 133
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%d,%d) :: %dx%d [%d] [%d]"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/distriqt/core/utils/ImageProcessing;
.super Ljava/lang/Object;
.source "ImageProcessing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeYUV420SPtoRedAvg([BII)I
    .locals 3
    .param p0, "yuv420sp"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 64
    :goto_0
    return v2

    .line 61
    :cond_0
    mul-int v0, p1, p2

    .line 63
    .local v0, "frameSize":I
    invoke-static {p0, p1, p2}, Lcom/distriqt/core/utils/ImageProcessing;->decodeYUV420SPtoRedSum([BII)I

    move-result v1

    .line 64
    .local v1, "sum":I
    div-int v2, v1, v0

    goto :goto_0
.end method

.method private static decodeYUV420SPtoRedSum([BII)I
    .locals 20
    .param p0, "yuv420sp"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 12
    if-nez p0, :cond_1

    const/4 v9, 0x0

    .line 43
    :cond_0
    return v9

    .line 14
    :cond_1
    mul-int v2, p1, p2

    .line 16
    .local v2, "frameSize":I
    const/4 v9, 0x0

    .line 17
    .local v9, "sum":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/16 v16, 0x0

    .local v16, "yp":I
    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 18
    shr-int/lit8 v17, v5, 0x1

    mul-int v17, v17, p1

    add-int v11, v2, v17

    .local v11, "uvp":I
    const/4 v10, 0x0

    .local v10, "u":I
    const/4 v13, 0x0

    .line 19
    .local v13, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v12, v11

    .end local v11    # "uvp":I
    .local v12, "uvp":I
    :goto_1
    move/from16 v0, p1

    if-ge v4, v0, :cond_9

    .line 20
    aget-byte v17, p0, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v14, v17, -0x10

    .line 21
    .local v14, "y":I
    if-gez v14, :cond_2

    const/4 v14, 0x0

    .line 22
    :cond_2
    and-int/lit8 v17, v4, 0x1

    if-nez v17, :cond_a

    .line 23
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "uvp":I
    .restart local v11    # "uvp":I
    aget-byte v17, p0, v12

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v13, v17, -0x80

    .line 24
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "uvp":I
    .restart local v12    # "uvp":I
    aget-byte v17, p0, v11

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v10, v17, -0x80

    move v11, v12

    .line 26
    .end local v12    # "uvp":I
    .restart local v11    # "uvp":I
    :goto_2
    mul-int/lit16 v15, v14, 0x4a8

    .line 27
    .local v15, "y1192":I
    mul-int/lit16 v0, v13, 0x662

    move/from16 v17, v0

    add-int v7, v15, v17

    .line 28
    .local v7, "r":I
    mul-int/lit16 v0, v13, 0x341

    move/from16 v17, v0

    sub-int v17, v15, v17

    mul-int/lit16 v0, v10, 0x190

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 29
    .local v3, "g":I
    mul-int/lit16 v0, v10, 0x812

    move/from16 v17, v0

    add-int v1, v15, v17

    .line 31
    .local v1, "b":I
    if-gez v7, :cond_6

    const/4 v7, 0x0

    .line 33
    :cond_3
    :goto_3
    if-gez v3, :cond_7

    const/4 v3, 0x0

    .line 35
    :cond_4
    :goto_4
    if-gez v1, :cond_8

    const/4 v1, 0x0

    .line 38
    :cond_5
    :goto_5
    const/high16 v17, -0x1000000

    shl-int/lit8 v18, v7, 0x6

    const/high16 v19, 0xff0000

    and-int v18, v18, v19

    or-int v17, v17, v18

    shr-int/lit8 v18, v3, 0x2

    const v19, 0xff00

    and-int v18, v18, v19

    or-int v17, v17, v18

    shr-int/lit8 v18, v1, 0xa

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v6, v17, v18

    .line 39
    .local v6, "pixel":I
    shr-int/lit8 v17, v6, 0x10

    move/from16 v0, v17

    and-int/lit16 v8, v0, 0xff

    .line 40
    .local v8, "red":I
    add-int/2addr v9, v8

    .line 19
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    .end local v11    # "uvp":I
    .restart local v12    # "uvp":I
    goto :goto_1

    .line 32
    .end local v6    # "pixel":I
    .end local v8    # "red":I
    .end local v12    # "uvp":I
    .restart local v11    # "uvp":I
    :cond_6
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v7, v0, :cond_3

    const v7, 0x3ffff

    goto :goto_3

    .line 34
    :cond_7
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v3, v0, :cond_4

    const v3, 0x3ffff

    goto :goto_4

    .line 36
    :cond_8
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v1, v0, :cond_5

    const v1, 0x3ffff

    goto :goto_5

    .line 17
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v7    # "r":I
    .end local v11    # "uvp":I
    .end local v14    # "y":I
    .end local v15    # "y1192":I
    .restart local v12    # "uvp":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .restart local v14    # "y":I
    :cond_a
    move v11, v12

    .end local v12    # "uvp":I
    .restart local v11    # "uvp":I
    goto :goto_2
.end method

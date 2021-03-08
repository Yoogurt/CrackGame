.class public Lcom/distriqt/core/utils/FREImageUtils;
.super Ljava/lang/Object;
.source "FREImageUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final bgrToRgbColorTransform:[F

.field private static final colorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private static final colorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/distriqt/core/utils/FREImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/FREImageUtils;->TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/distriqt/core/utils/FREImageUtils;->bgrToRgbColorTransform:[F

    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/distriqt/core/utils/FREImageUtils;->bgrToRgbColorTransform:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    sput-object v0, Lcom/distriqt/core/utils/FREImageUtils;->colorMatrix:Landroid/graphics/ColorMatrix;

    .line 54
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lcom/distriqt/core/utils/FREImageUtils;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v0, Lcom/distriqt/core/utils/FREImageUtils;->colorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    .line 46
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapDataToBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;

    .prologue
    const/4 v7, 0x0

    .line 101
    sget-object v8, Lcom/distriqt/core/utils/FREImageUtils;->TAG:Ljava/lang/String;

    const-string v9, "bitmapDataToBitmap()"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 107
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    .local v0, "bitmapBytes":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    .line 109
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v4

    .line 111
    .local v4, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 112
    .local v3, "encodingBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 115
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    .line 119
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v5, "paint":Landroid/graphics/Paint;
    sget-object v8, Lcom/distriqt/core/utils/FREImageUtils;->colorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 121
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "bitmapBytes":Ljava/nio/ByteBuffer;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "encodingBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "width":I
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v7, v2}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v7

    .line 130
    goto :goto_0
.end method

.method public static bitmapDataToCacheFile(Landroid/content/Context;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v4, "jpg"

    const v5, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/distriqt/core/utils/FREImageUtils;->bitmapDataToCacheFile(Landroid/content/Context;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static bitmapDataToCacheFile(Landroid/content/Context;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "quality"    # F

    .prologue
    const/4 v6, 0x0

    .line 65
    sget-object v5, Lcom/distriqt/core/utils/FREImageUtils;->TAG:Ljava/lang/String;

    const-string v7, "bitmapDataToCacheFile()"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/distriqt/core/utils/FREImageUtils;->bitmapDataToBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    .local v1, "encodingBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 72
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "outputDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "outputFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v4, "stream":Ljava/io/BufferedOutputStream;
    const-string v5, "png"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v5, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 86
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 88
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .end local v1    # "encodingBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "outputDir":Ljava/io/File;
    .end local v3    # "outputFilePath":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    :goto_1
    return-object v5

    .line 83
    .restart local v1    # "encodingBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "outputDir":Ljava/io/File;
    .restart local v3    # "outputFilePath":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, p5

    float-to-int v7, v7

    invoke-virtual {v1, v5, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "encodingBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "outputDir":Ljava/io/File;
    .end local v3    # "outputFilePath":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6, v0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v5, v6

    .line 95
    goto :goto_1
.end method

.method public static bitmapToFREBitmapData(Landroid/graphics/Bitmap;)Lcom/adobe/fre/FREBitmapData;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 313
    .local v0, "bitmapData":Lcom/adobe/fre/FREBitmapData;
    const/4 v3, 0x4

    :try_start_0
    new-array v2, v3, [Ljava/lang/Byte;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 315
    .local v2, "fillColor":[Ljava/lang/Byte;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;

    move-result-object v0

    .line 317
    invoke-static {p0, v0}, Lcom/distriqt/core/utils/FREImageUtils;->drawBitmapToBitmapData(Landroid/graphics/Bitmap;Lcom/adobe/fre/FREBitmapData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v2    # "fillColor":[Ljava/lang/Byte;
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static bitmapToFREBitmapDataIgnoreOrder(Landroid/graphics/Bitmap;)Lcom/adobe/fre/FREBitmapData;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 332
    .local v0, "bitmapData":Lcom/adobe/fre/FREBitmapData;
    const/4 v3, 0x4

    :try_start_0
    new-array v2, v3, [Ljava/lang/Byte;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 334
    .local v2, "fillColor":[Ljava/lang/Byte;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;

    move-result-object v0

    .line 336
    invoke-static {p0, v0}, Lcom/distriqt/core/utils/FREImageUtils;->drawBitmapToBitmapDataIgnoreOrder(Landroid/graphics/Bitmap;Lcom/adobe/fre/FREBitmapData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v2    # "fillColor":[Ljava/lang/Byte;
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static drawBitmapToBitmapData(Landroid/graphics/Bitmap;Lcom/adobe/fre/FREBitmapData;)V
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;

    .prologue
    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, "encodingBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 169
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .line 170
    .local v7, "paint":Landroid/graphics/Paint;
    const/16 v9, 0x14

    new-array v0, v9, [F

    fill-array-data v0, :array_0

    .line 177
    .local v0, "bgrToRgbColorTransform":[F
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 178
    .local v4, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 183
    .local v3, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 184
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v7    # "paint":Landroid/graphics/Paint;
    .local v8, "paint":Landroid/graphics/Paint;
    :try_start_2
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 192
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 193
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .end local v8    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    move-object v1, v2

    .line 199
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v5

    .line 197
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    :catch_2
    move-exception v5

    move-object v7, v8

    .end local v8    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 170
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static drawBitmapToBitmapDataBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v1, v0, [I

    .line 262
    .local v1, "pixels":[I
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 263
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 264
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 266
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    .end local v1    # "pixels":[I
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v9

    .line 270
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/distriqt/core/utils/FREUtils;->handleException(Ljava/lang/Throwable;)V

    .line 272
    const-string v0, ""

    goto :goto_0
.end method

.method public static drawBitmapToBitmapDataIgnoreOrder(Landroid/graphics/Bitmap;Lcom/adobe/fre/FREBitmapData;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 363
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 364
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 282
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 283
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 285
    sget-object v3, Lcom/distriqt/core/utils/FREImageUtils;->TAG:Ljava/lang/String;

    const-string v4, "drawableToBitmap(): returning BitmapDrawable"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 304
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v3

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 293
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v3, v0

    .line 304
    goto :goto_0

    .line 297
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v3, Lcom/distriqt/core/utils/FREImageUtils;->TAG:Ljava/lang/String;

    const-string v4, "drawableToBitmap(): Bitmap.createBitmap( %d, %d )"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getFREObjectAsBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "object"    # Lcom/adobe/fre/FREBitmapData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 139
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 141
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    .line 146
    const/16 v6, 0x14

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 153
    .local v0, "bgrToRgbColorTransform":[F
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 154
    .local v4, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 156
    .local v3, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    invoke-virtual {v2, v1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    return-object v1

    .line 146
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getFREObjectAsBitmapIgnoreOrder(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "object"    # Lcom/adobe/fre/FREBitmapData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 350
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 352
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    .line 354
    return-object v0
.end method

.method private static getPowerOfTwoForSampleRatio(D)I
    .locals 4
    .param p0, "ratio"    # D

    .prologue
    .line 244
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 245
    .local v0, "k":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 246
    .end local v0    # "k":I
    :cond_0
    return v0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnailSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 215
    .local v2, "input":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    .local v3, "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 218
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 220
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 221
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 223
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v8, :cond_0

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v8, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v8, :cond_2

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 228
    .local v4, "originalSize":I
    :goto_1
    if-le v4, p2, :cond_3

    div-int v5, v4, p2

    int-to-double v6, v5

    .line 230
    .local v6, "ratio":D
    :goto_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    .local v1, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v6, v7}, Lcom/distriqt/core/utils/FREImageUtils;->getPowerOfTwoForSampleRatio(D)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 232
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 233
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 236
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 226
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "originalSize":I
    .end local v6    # "ratio":D
    :cond_2
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    .line 228
    .restart local v4    # "originalSize":I
    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2
.end method

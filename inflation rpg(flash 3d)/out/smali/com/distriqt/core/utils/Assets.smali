.class public Lcom/distriqt/core/utils/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/distriqt/core/utils/Assets;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 238
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public static copyFileToPublicCache(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 211
    sget-object v6, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v7, "copyFileToPublicCache( %s )"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    sget-object v6, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v7, "copyFileToPublicCache(): %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v3, "of":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 220
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 221
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v2, v4}, Lcom/distriqt/core/utils/Assets;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "of":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v5, v0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v5

    .line 229
    goto :goto_0
.end method

.method public static exists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "assetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "assetName":Ljava/lang/String;
    :goto_1
    return v1

    :cond_0
    move-object v0, p1

    .line 48
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    move v1, v2

    .line 54
    goto :goto_1
.end method

.method public static getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "assetName":Ljava/lang/String;
    :goto_0
    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "assetFileName":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/distriqt/core/utils/Assets;->getAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2

    .end local v0    # "assetFileName":Ljava/lang/String;
    .end local v1    # "assetName":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 60
    goto :goto_0
.end method

.method public static getAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "assetFileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/Assets;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v2, v5

    .line 104
    :goto_0
    return-object v2

    .line 80
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "assetName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v2, "cachedVersion":Ljava/io/File;
    const-string v6, "com.distriqt.Core"

    sget-object v7, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v8, "COPYING ASSET TO CACHE: %s -> %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 92
    .local v0, "assetInputStream":Ljava/io/InputStream;
    invoke-static {v0, v4}, Lcom/distriqt/core/utils/Assets;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "assetInputStream":Ljava/io/InputStream;
    .end local v1    # "assetName":Ljava/lang/String;
    .end local v2    # "cachedVersion":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v5, v3}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 104
    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, p1

    .line 80
    goto :goto_1
.end method

.method public static getAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/Assets;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    :goto_0
    return-object v2

    .line 139
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "assetName":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v4, "opening %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .end local v0    # "assetName":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 139
    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v2, v1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAssetFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/Assets;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static listAssets(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 176
    sget-object v1, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v2, " ==================== LIST ASSETS : BEGIN ========================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 178
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/distriqt/core/utils/Assets;->listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    const-string v2, " ==================== LIST ASSETS : END   ========================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method private static listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 9
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    const-string v3, "images"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "webkit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sounds"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "META-INF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 196
    sget-object v3, Lcom/distriqt/core/utils/Assets;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aget-object v8, v1, v2

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "/"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/distriqt/core/utils/Assets;->listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

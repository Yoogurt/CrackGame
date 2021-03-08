.class public Lcom/distriqt/core/utils/FileProviderUtils;
.super Ljava/lang/Object;
.source "FileProviderUtils.java"


# static fields
.field private static final FILEPROVIDER_SUFFIX:Ljava/lang/String; = ".fileprovider"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/distriqt/core/utils/FileProviderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssetToProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 47
    sget-object v8, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v9, "copyAssetToProvider( %s )"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/Assets;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 75
    :goto_0
    return-object v7

    .line 53
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "assetName":Ljava/lang/String;
    :goto_1
    const-string v8, "/"

    const-string v9, "_"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "assetFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, ".distriqt_files"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 59
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v5, "of":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 62
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 64
    .local v1, "assetInputStream":Ljava/io/InputStream;
    invoke-static {v1, v6}, Lcom/distriqt/core/utils/FileProviderUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 68
    .end local v1    # "assetInputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    sget-object v8, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v9, "getUriForFile( ..., %s, %s )"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".fileprovider"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".fileprovider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .end local v0    # "assetFileName":Ljava/lang/String;
    .end local v2    # "assetName":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "of":Ljava/io/File;
    :cond_2
    move-object v2, p1

    .line 53
    goto :goto_1

    .line 71
    :catch_0
    move-exception v4

    .line 73
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 160
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public static copyFileToProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 84
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "copyFileToProvider( %s )"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v6, 0x0

    .line 88
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x7

    :try_start_0
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "making dir"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, ".distriqt_files"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v4, "of":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "copying file to file provider location"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 105
    .local v3, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v3, v5}, Lcom/distriqt/core/utils/FileProviderUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 107
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 114
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "getUriForFile( ..., %s, %s )"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".fileprovider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fileprovider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 126
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "of":Ljava/io/File;
    :goto_1
    return-object v6

    .line 111
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "of":Ljava/io/File;
    :cond_1
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "file provider file exists"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "of":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    sget-object v7, Lcom/distriqt/core/utils/FileProviderUtils;->TAG:Ljava/lang/String;

    const-string v8, "file doesn\'t exist"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/distriqt/core/utils/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static grantPermissions(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 134
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 145
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 147
    .local v0, "packageName":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p0, v0, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 140
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

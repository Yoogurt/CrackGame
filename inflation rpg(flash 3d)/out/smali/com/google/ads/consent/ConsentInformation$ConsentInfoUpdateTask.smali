.class Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;
.super Landroid/os/AsyncTask;
.source "ConsentInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsentInfoUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final UPDATE_SUCCESS:Ljava/lang/String; = "Consent update successful."


# instance fields
.field private final consentInformation:Lcom/google/ads/consent/ConsentInformation;

.field private final listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

.field private final publisherIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/consent/ConsentInformation;Ljava/util/List;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "consentInformation"    # Lcom/google/ads/consent/ConsentInformation;
    .param p4, "listener"    # Lcom/google/ads/consent/ConsentInfoUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/consent/ConsentInformation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/consent/ConsentInfoUpdateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "publisherIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->url:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    .line 206
    iput-object p3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    .line 207
    iput-object p2, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    .line 208
    return-void
.end method

.method private makeConsentLookupRequest(Ljava/lang/String;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 236
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 239
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 240
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "responseString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 242
    iget-object v4, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    iget-object v5, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    invoke-static {v4, v1, v5}, Lcom/google/ads/consent/ConsentInformation;->access$000(Lcom/google/ads/consent/ConsentInformation;Ljava/lang/String;Ljava/util/List;)V

    .line 243
    new-instance v4, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    const/4 v5, 0x1

    const-string v6, "Consent update successful."

    invoke-direct {v4, v5, v6}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    .line 249
    .end local v1    # "responseString":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v4

    .line 245
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    new-instance v4, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    const/4 v5, 0x0

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 211
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 213
    .local v1, "contents":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v3, "strFileContents":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    .local v4, "stream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 218
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "ConsentInformation"

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v5, 0x0

    .line 225
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 225
    .restart local v0    # "bytesRead":I
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 231
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 226
    :catch_1
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "ConsentInformation"

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 226
    .end local v0    # "bytesRead":I
    :catch_2
    move-exception v2

    .line 227
    const-string v6, "ConsentInformation"

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 225
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 228
    :goto_3
    throw v5

    .line 226
    :catch_3
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "ConsentInformation"

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    .locals 6
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 255
    const-string v3, ","

    iget-object v4, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->publisherIds:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "publisherIdsString":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v3}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 257
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    iget-object v3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->url:Ljava/lang/String;

    .line 258
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "pubs"

    .line 260
    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "es"

    const-string v5, "2"

    .line 261
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "plat"

    .line 262
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getSDKPlatformString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "v"

    .line 263
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getSDKVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 264
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v3}, Lcom/google/ads/consent/ConsentInformation;->isTestDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    .line 265
    invoke-virtual {v3}, Lcom/google/ads/consent/ConsentInformation;->getDebugGeography()Lcom/google/ads/consent/DebugGeography;

    move-result-object v3

    sget-object v4, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    if-eq v3, v4, :cond_0

    .line 267
    const-string v3, "debug_geo"

    iget-object v4, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    .line 270
    invoke-virtual {v4}, Lcom/google/ads/consent/ConsentInformation;->getDebugGeography()Lcom/google/ads/consent/DebugGeography;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/consent/DebugGeography;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 272
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->makeConsentLookupRequest(Ljava/lang/String;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->doInBackground([Ljava/lang/Void;)Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;)V
    .locals 2
    .param p1, "result"    # Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    .prologue
    .line 277
    iget-boolean v0, p1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;->success:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->consentInformation:Lcom/google/ads/consent/ConsentInformation;

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->getConsentStatus()Lcom/google/ads/consent/ConsentStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/consent/ConsentInfoUpdateListener;->onConsentInfoUpdated(Lcom/google/ads/consent/ConsentStatus;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->listener:Lcom/google/ads/consent/ConsentInfoUpdateListener;

    iget-object v1, p1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;->responseInfo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/consent/ConsentInfoUpdateListener;->onFailedToUpdateConsentInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;

    invoke-virtual {p0, p1}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->onPostExecute(Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;)V

    return-void
.end method

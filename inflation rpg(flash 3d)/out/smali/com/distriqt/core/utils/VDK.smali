.class public final Lcom/distriqt/core/utils/VDK;
.super Ljava/lang/Object;
.source "VDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 184
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 185
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 186
    .local v1, "sha1hash":[B
    invoke-static {v1}, Lcom/distriqt/core/utils/VDK;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static containsId([Ljava/lang/String;I)Z
    .locals 3
    .param p0, "details"    # [Ljava/lang/String;
    .param p1, "extensionId"    # I

    .prologue
    .line 118
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 122
    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    .local v0, "extIdNumber":I
    if-ne v0, p1, :cond_0

    .line 124
    const/4 v2, 0x1

    .line 128
    .end local v0    # "extIdNumber":I
    :goto_1
    return v2

    .line 126
    :catch_0
    move-exception v2

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v7, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, p0, v6

    .line 195
    .local v0, "b":B
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 196
    .local v2, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 199
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v2, :cond_0

    const/16 v5, 0x9

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    and-int/lit8 v2, v0, 0xf

    .line 202
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 193
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 199
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .line 204
    .end local v0    # "b":B
    .end local v2    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v0    # "b":B
    .restart local v2    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method private static matchAppId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "keyId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "appIdL":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "keyIdL":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 140
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".debug"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    const/4 v3, 0x3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "air"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/distriqt/core/utils/VDK;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 146
    :cond_2
    const-string v3, "(\\.)([0-9])"

    const-string v5, "$1A$2"

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v6, "_"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "modId":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    invoke-static {p0, v2}, Lcom/distriqt/core/utils/VDK;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 150
    goto :goto_0
.end method

.method private static removePadding([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "startIndex":I
    :goto_0
    aget-byte v4, p0, v3

    if-nez v4, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_0
    aget-byte v4, p0, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    aget-byte v4, p0, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 162
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 163
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 165
    aget-byte v4, p0, v2

    if-nez v4, :cond_4

    .line 169
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 172
    .end local v2    # "k":I
    :cond_3
    array-length v4, p0

    sub-int/2addr v4, v3

    new-array v0, v4, [B

    .line 173
    .local v0, "cleaned":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_5

    .line 175
    add-int v4, v3, v1

    aget-byte v4, p0, v4

    aput-byte v4, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    .end local v0    # "cleaned":[B
    .end local v1    # "i":I
    .restart local v2    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v2    # "k":I
    .restart local v0    # "cleaned":[B
    .restart local v1    # "i":I
    :cond_5
    return-object v0
.end method

.method public static v(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 24
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "inputKey"    # Ljava/lang/String;
    .param p2, "extensionId"    # I

    .prologue
    .line 40
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 43
    .local v20, "success":Ljava/lang/Boolean;
    const-string v16, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxYaXDdu7Jr6PRciuK0oOj+Eg5gNeFxDvRpXxjm8L7Md3bYA0Dq361W58SZ3udgUIRqx/czLBiq2fEp2eAcz1WHCJ7rHxo9j8/FyDZhcW7ENmRaLh+x1bqhymA/5xTnVJNDxV2pigUiwe0/EWW+1TMXQrIFYQnWndeGJsg+0Q4D1oSr3r7RbJzy/ZWdJwAVR8jaFcXQftq758lwKtJ/MhLiCp3ZhETtZQQXND6/1FhWu8yvOhzGfWJzPlHS+mPI9ph5XTD6zQ/9Ze2bWFZ/XRxisRhOcgNbuO2cB730jkrOE3+FkA2kd/gN49dRXtl1D2MNmuKQXHJl2dIfSCNsjR0QIDAQAB"

    .line 54
    .local v16, "keyString":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x28

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 62
    const/16 v22, 0x0

    const/16 v23, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, "hash":Ljava/lang/String;
    const/16 v22, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "dataString":Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 67
    .local v6, "dataEncoded":[B
    const-string v22, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v15

    .line 68
    .local v15, "keyBytes":[B
    const-string v22, "RSA"

    invoke-static/range {v22 .. v22}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v22

    new-instance v23, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v17

    .line 69
    .local v17, "publicKey":Ljava/security/PublicKey;
    const-string v22, "RSA"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 70
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 73
    const/4 v8, 0x0

    .line 74
    .local v8, "decrpytedData":[B
    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/distriqt/core/utils/VDK;->removePadding([B)[B

    move-result-object v8

    .line 75
    new-instance v9, Ljava/lang/String;

    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-direct {v9, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 76
    .local v9, "decrpytedDataString":Ljava/lang/String;
    const-string v22, "\\|"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, "details":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 79
    const/16 v22, 0x0

    aget-object v21, v10, v22

    .line 80
    .local v21, "type":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v14, v10, v22

    .line 82
    .local v14, "key":Ljava/lang/String;
    const-string v22, "s"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "appId":Ljava/lang/String;
    invoke-static {v4, v14}, Lcom/distriqt/core/utils/VDK;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 86
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/distriqt/core/utils/VDK;->containsId([Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 87
    invoke-static {v14}, Lcom/distriqt/core/utils/VDK;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 88
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 105
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "dataEncoded":[B
    .end local v7    # "dataString":Ljava/lang/String;
    .end local v8    # "decrpytedData":[B
    .end local v9    # "decrpytedDataString":Ljava/lang/String;
    .end local v10    # "details":[Ljava/lang/String;
    .end local v11    # "hash":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyBytes":[B
    .end local v17    # "publicKey":Ljava/security/PublicKey;
    .end local v21    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    return v22

    .line 90
    .restart local v5    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "dataEncoded":[B
    .restart local v7    # "dataString":Ljava/lang/String;
    .restart local v8    # "decrpytedData":[B
    .restart local v9    # "decrpytedDataString":Ljava/lang/String;
    .restart local v10    # "details":[Ljava/lang/String;
    .restart local v11    # "hash":Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyBytes":[B
    .restart local v17    # "publicKey":Ljava/security/PublicKey;
    .restart local v21    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v22, "t"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 93
    .local v18, "now":J
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 94
    .local v12, "expiry":J
    cmp-long v22, v12, v18

    if-lez v22, :cond_0

    .line 95
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/distriqt/core/utils/VDK;->containsId([Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 96
    invoke-static {v14}, Lcom/distriqt/core/utils/VDK;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 97
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto :goto_0

    .line 102
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "dataEncoded":[B
    .end local v7    # "dataString":Ljava/lang/String;
    .end local v8    # "decrpytedData":[B
    .end local v9    # "decrpytedDataString":Ljava/lang/String;
    .end local v10    # "details":[Ljava/lang/String;
    .end local v11    # "hash":Ljava/lang/String;
    .end local v12    # "expiry":J
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyBytes":[B
    .end local v17    # "publicKey":Ljava/security/PublicKey;
    .end local v18    # "now":J
    .end local v21    # "type":Ljava/lang/String;
    :catch_0
    move-exception v22

    goto :goto_0
.end method

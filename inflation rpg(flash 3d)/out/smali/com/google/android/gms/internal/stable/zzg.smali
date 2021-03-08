.class public final Lcom/google/android/gms/internal/stable/zzg;
.super Lcom/google/android/gms/internal/stable/zze$zza;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/stable/zzg;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, -0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/stable/zzg;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/stable/zzg;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/stable/zzg;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/stable/zzg;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

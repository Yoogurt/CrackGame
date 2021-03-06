.class Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/MetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileMetadataMaps"
.end annotation


# instance fields
.field private final countryCallingCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final regionCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "regionCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .local p2, "countryCallingCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    .line 159
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    .line 160
    return-void
.end method

.method static load(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/google/i18n/phonenumbers/MetadataManager;->access$000(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v4, "regionCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v0, "countryCallingCodeToMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 133
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "regionCode":Ljava/lang/String;
    const-string v6, "001"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    .end local v1    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    invoke-direct {v5, v4, v0}, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v5
.end method


# virtual methods
.method get(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0
.end method

.method get(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0
.end method

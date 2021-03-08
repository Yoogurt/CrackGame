.class public Lcom/distriqt/extension/adverts/AdvertsContext;
.super Lcom/adobe/fre/FREContext;
.source "AdvertsContext.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;
.implements Lcom/adobe/air/ActivityResultCallback;
.implements Lcom/adobe/air/StateChangeCallback;


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;

.field private _controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "5.0"

    sput-object v0, Lcom/distriqt/extension/adverts/AdvertsContext;->VERSION:Ljava/lang/String;

    .line 43
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/adverts/AdvertsContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    .line 63
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 64
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 65
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 66
    return-void
.end method


# virtual methods
.method public controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/adverts/AdvertsContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->dispose()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    .line 77
    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "vV2"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/VDKFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/VDKFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "isPlatformSupported"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/IsPlatformSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/IsPlatformSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "initialisePlatform"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/InitialisePlatformFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/InitialisePlatformFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "getAdvertisingId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/GetAdvertisingIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/GetAdvertisingIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "adview_create"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/CreateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/CreateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "adview_destroy"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/DestroyFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/DestroyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "adview_setAdSize"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/SetAdSizeFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/SetAdSizeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "adview_getAdSize"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/GetAdSizeFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/GetAdSizeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "adview_setAdUnitId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/SetAdUnitIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/SetAdUnitIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "adview_getAdUnitId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/GetAdUnitIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/GetAdUnitIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "adview_isLoading"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/IsLoadingFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/IsLoadingFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "adview_load"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/LoadFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/LoadFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "adview_setViewParams"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/SetViewParamsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/SetViewParamsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "adview_show"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/ShowFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/ShowFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "adview_hide"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/adview/HideFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/adview/HideFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "interstitials_isSupported"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "interstitial_create"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/CreateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/CreateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "interstitial_destroy"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/DestroyFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/DestroyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "interstitial_setAdUnitId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/SetAdUnitIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/SetAdUnitIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "interstitial_getAdUnitId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/GetAdUnitIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/GetAdUnitIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "interstitial_isLoading"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/IsLoadingFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/IsLoadingFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "interstitial_load"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/LoadFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/LoadFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "interstitial_isLoaded"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/IsLoadedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/IsLoadedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "interstitial_show"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/ShowFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/ShowFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "interstitial_hide"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/interstitials/HideFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/interstitials/HideFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "rewardedvideoads_isSupported"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "rewarded_create"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/CreateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/CreateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "rewarded_destroy"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/DestroyFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/DestroyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "rewarded_getUserId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/GetUserIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/GetUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "rewarded_setUserId"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/SetUserIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/SetUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "rewarded_load"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/LoadFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/LoadFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "rewarded_isLoaded"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/IsLoadedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/IsLoadedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "rewarded_show"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/rewarded/ShowFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/rewarded/ShowFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "consent_getConsentStatus"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/consent/GetConsentStatusFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/consent/GetConsentStatusFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "consent_askForConsent"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/consent/AskForConsentFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/consent/AskForConsentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "consent_addTestDevice"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/consent/AddTestDeviceFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/consent/AddTestDeviceFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "consent_setDebugGeography"

    new-instance v2, Lcom/distriqt/extension/adverts/functions/consent/SetDebugGeographyFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/adverts/functions/consent/SetDebugGeographyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 2
    .param p1, "state"    # Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/distriqt/extension/adverts/AdvertsContext$1;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onStart()V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onStop()V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onPause()V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onRestart()V

    goto :goto_0

    .line 225
    :pswitch_4
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onDestroy()V

    goto :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lcom/distriqt/extension/adverts/AdvertsContext;->_controller:Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->onResume()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "paramConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 239
    return-void
.end method

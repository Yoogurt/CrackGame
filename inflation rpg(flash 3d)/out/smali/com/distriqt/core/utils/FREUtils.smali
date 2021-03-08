.class public Lcom/distriqt/core/utils/FREUtils;
.super Ljava/lang/Object;
.source "FREUtils.java"


# static fields
.field public static DEBUG_ENABLED:Ljava/lang/Boolean;

.field public static DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static ID:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static context:Lcom/adobe/fre/FREContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;

    .line 40
    const-string v0, "com.distriqt.EXTENSION"

    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->ID:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetObjectAsArrayOfBooleans(Lcom/adobe/fre/FREArray;)[Z
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 155
    .local v1, "length":I
    new-array v2, v1, [Z

    .line 157
    .local v2, "retArray":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 160
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v4

    aput-boolean v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[Z
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 168
    const/4 v4, 0x0

    new-array v2, v4, [Z

    :cond_0
    return-object v2
.end method

.method public static GetObjectAsArrayOfDoubles(Lcom/adobe/fre/FREArray;)[D
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 133
    .local v1, "length":I
    new-array v2, v1, [D

    .line 135
    .local v2, "retArray":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 138
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[D
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 146
    const/4 v4, 0x0

    new-array v2, v4, [D

    :cond_0
    return-object v2
.end method

.method public static GetObjectAsArrayOfNumbers(Lcom/adobe/fre/FREArray;)[I
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 111
    .local v1, "length":I
    new-array v2, v1, [I

    .line 113
    .local v2, "retArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 116
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    aput v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[I
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 124
    const/4 v4, 0x0

    new-array v2, v4, [I

    :cond_0
    return-object v2
.end method

.method public static GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 89
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    .line 91
    .local v2, "retArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 94
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[Ljava/lang/String;
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 102
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method public static addViewToAIR(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0, p1}, Lcom/distriqt/core/utils/FREUtils;->addViewToAIR(Lcom/adobe/fre/FREContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 245
    return-void
.end method

.method public static addViewToAIR(Lcom/adobe/fre/FREContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 253
    .local v0, "fl":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .end local v0    # "fl":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static addViewToAIR(Lcom/distriqt/core/utils/IExtensionContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p0, "context"    # Lcom/distriqt/core/utils/IExtensionContext;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    .line 261
    invoke-interface {p0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    .local v0, "fl":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .end local v0    # "fl":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "v"    # Landroid/view/ViewGroup;
    .param p1, "viewClassName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 198
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    .end local v0    # "a":Landroid/view/View;
    :goto_1
    return-object v0

    .line 202
    .restart local v0    # "a":Landroid/view/View;
    :cond_0
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "a":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/distriqt/core/utils/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, "b":Landroid/view/View;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 206
    goto :goto_1

    .line 196
    .end local v1    # "b":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAIRWindowSurfaceView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Lcom/adobe/fre/FREContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 234
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, "fl":Landroid/view/ViewGroup;
    const-string v1, "com.adobe.air.AIRWindowSurfaceView"

    invoke-static {v0, v1}, Lcom/distriqt/core/utils/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 237
    .end local v0    # "fl":Landroid/view/ViewGroup;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAIRWindowSurfaceView(Lcom/adobe/fre/FREContext;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 222
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceDefaultOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0}, Lcom/distriqt/core/utils/FREUtils;->getDeviceDefaultOrientation(Lcom/adobe/fre/FREContext;)I

    move-result v0

    return v0
.end method

.method public static getDeviceDefaultOrientation(Lcom/adobe/fre/FREContext;)I
    .locals 7
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 286
    if-eqz p0, :cond_5

    .line 288
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 289
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 291
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 293
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v3, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_4

    .line 305
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "rotation":I
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_3
    :goto_0
    return v3

    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "rotation":I
    .restart local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_4
    move v3, v4

    .line 302
    goto :goto_0

    .line 305
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "rotation":I
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    :try_start_0
    sget-object v1, Lcom/distriqt/core/utils/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_0
    if-eqz p0, :cond_2

    .line 67
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 75
    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "extension:error"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 73
    .restart local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 78
    .end local v0    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 9
    .param p0, "v"    # Landroid/view/ViewGroup;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "logPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 183
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "a":Landroid/view/View;
    const-string v3, "com.distriqt.Core"

    const-string v4, "FREUtils"

    const-string v5, "%s%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "a":Landroid/view/View;
    invoke-static {v0, v2}, Lcom/distriqt/core/utils/FREUtils;->listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->ID:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static moveToBack(Landroid/view/View;)V
    .locals 4
    .param p0, "currentView"    # Landroid/view/View;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 270
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 271
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

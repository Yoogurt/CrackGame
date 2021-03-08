.class public Landroid/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 50
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-object v0
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 41
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    return-object v0
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    .line 70
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v0

    .line 71
    .local v0, "factory":Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;
    new-instance v1, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v1
.end method

.method public static of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 106
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    .line 88
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v0

    .line 89
    .local v0, "factory":Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;
    new-instance v1, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v1
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 124
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

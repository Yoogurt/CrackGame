.class public Landroid/arch/lifecycle/ViewModelStores;
.super Ljava/lang/Object;
.source "ViewModelStores.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    instance-of v0, p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    .end local p0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {p0}, Landroid/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    .line 62
    .restart local p0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    goto :goto_0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    instance-of v0, p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    .end local p0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-interface {p0}, Landroid/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    .line 47
    .restart local p0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    goto :goto_0
.end method

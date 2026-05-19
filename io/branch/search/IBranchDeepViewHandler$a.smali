.class public Lio/branch/search/IBranchDeepViewHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchDeepViewHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/IBranchDeepViewHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_7
    instance-of v0, p1, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-ne v0, p1, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {p0, v0}, Lio/branch/search/IBranchDeepViewHandler$a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public launchDeepView(Landroid/content/Context;Lio/branch/search/BranchDeepViewFragment;)Z
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/BranchDeepViewFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lio/branch/search/IBranchDeepViewHandler$a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    instance-of p1, p0, Landroidx/fragment/app/FragmentActivity;

    const-string v0, "BranchDeepViewFragment"

    if-eqz p1, :cond_32

    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-virtual {p2}, Lio/branch/search/BranchDeepViewFragment;->getInstance()Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_55

    :cond_2a
    invoke-virtual {p2}, Lio/branch/search/BranchDeepViewFragment;->getInstance()Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_55

    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_4e

    invoke-virtual {p2}, Lio/branch/search/BranchDeepViewFragment;->getLegacyInstance()Landroid/app/DialogFragment;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_55

    :cond_4e
    invoke-virtual {p2}, Lio/branch/search/BranchDeepViewFragment;->getLegacyInstance()Landroid/app/DialogFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_55
    const/4 p0, 0x1

    return p0
.end method

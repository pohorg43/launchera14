.class public Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/SecondaryLauncherAllAppsContainerView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/OplusSecondaryLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/SecondaryLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-object v0
.end method

.method public getAppsList(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    return-object p0
.end method

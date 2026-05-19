.class public Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;
.super Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field public mBranchDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->mBranchDataMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addAllAppsDividerInject(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_e
    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_20
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    add-int/lit8 v1, p1, 0x1

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asAllAppsDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    :cond_3c
    return p1
.end method

.method public getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    return-object p0
.end method

.method public getAllAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method public getBranchDataMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->mBranchDataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getFastScrollerVisibility(I)I
    .registers 3

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->hasBranchSearchResults()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x4

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    return p1
.end method

.method public hasBranchSearchResults()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->mBranchDataMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->mBranchDataMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public refillAdapterItemsForBranchInject()Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/android/launcher3/allapps/branch/BranchManager;->branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;Ljava/util/ArrayList;I)V

    :cond_24
    return v0
.end method

.method public setNumAppRowsInAdapter(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return-void
.end method

.method public setNumAppsPerRow(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    :cond_6
    return-void
.end method

.method public supportsFastScrolling(Z)Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->hasBranchSearchResults()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_15
    return p1
.end method

.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;
.super Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numTaskbarAllAppsColumns:I

    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    return-void
.end method


# virtual methods
.method public addAllAppsDividerInject(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;->isNeedAddPredictionsAppsHeader()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;->isNeedAddPredictionsAppsHeader()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_23
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

    :cond_3f
    return p1
.end method

.method public isNeedAddAllAppsHeader()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;->isNeedAddPredictionsAppsHeader()Z

    move-result p0

    if-nez p0, :cond_13

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isNeedAddPredictionsAppsHeader()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusAllAppsStore;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsStore;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->inSearch()Z

    move-result p0

    if-nez p0, :cond_24

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getPredictedApps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result p0

    :cond_24
    const/4 p0, 0x0

    const-string v0, "AlphabeticalAppsList"

    const-string v1, "isNeedAddPredictionsAppsHeader not show predictions apps header view when TASKBAR_ALL_APPS_HIDE_PREDICTED_APPS!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public refillAdapterItemsPredictedAppsAndAllAppsDividerInject([I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

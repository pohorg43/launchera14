.class public Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
.super Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
        "TT;>;",
        "Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$DrawAppSortUpdateListener;"
    }
.end annotation


# static fields
.field public static final DRAWER_APP_SORT_BY_ALPHABETICAL:I = 0x0

.field public static final DRAWER_APP_SORT_BY_INSTALL_TIME:I = 0x2

.field public static final DRAWER_APP_SORT_BY_USE_FREQUENCY:I = 0x1

.field private static final DRAW_APP_SORT_COUNT:I = 0x17

.field private static final DRAW_APP_SORT_COUNT_MAX:I = 0x1b

.field private static final DRAW_APP_SORT_UPDATE_DELAY:I = 0x3e8


# instance fields
.field public mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRegisterAppStoreUpdateListener:Z

.field private final mIndexSortArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleZhOrEn:Z

.field private final mSortIndexNumberMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mHasRegisterAppStoreUpdateListener:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mLocaleZhOrEn:Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    invoke-static {}, Lcom/android/common/sort/ComplexSortUtils;->getInstance()Lcom/android/common/sort/ComplexSortUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/sort/ComplexSortUtils;->isLocaleZhOrEn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mLocaleZhOrEn:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->registerUpdateListener()V

    return-void
.end method

.method private addIndexSortList(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private removeRedundantkey(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x17

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    if-ge v2, v0, :cond_66

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3b

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_66
    return-void
.end method

.method private setSortIndexMaps(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    goto :goto_13

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAllAppsDividerInject(I)I
    .registers 2

    return p1
.end method

.method public drawAppSort(I)V
    .registers 12

    const-string v0, "AlphabeticalAppsList"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mSortIndexNumberMaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getDrawAppSortApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_37

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    if-eqz v7, :cond_2f

    invoke-interface {v7, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v7

    if-eqz v7, :cond_34

    :cond_2f
    iget-object v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_37
    const/4 v3, 0x0

    if-nez p1, :cond_3d

    sget-object v3, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    goto :goto_52

    :cond_3d
    const/4 v4, 0x2

    if-ne p1, v4, :cond_48

    new-instance v3, Lcom/android/allapps/AppInfoInstallTimeComparator;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/allapps/AppInfoInstallTimeComparator;-><init>(Landroid/content/Context;)V

    goto :goto_52

    :cond_48
    const/4 v4, 0x1

    if-ne p1, v4, :cond_52

    new-instance v3, Lcom/android/allapps/AppUseFrequencyComparator;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/allapps/AppUseFrequencyComparator;-><init>(Landroid/content/Context;)V

    :cond_52
    :goto_52
    :try_start_52
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_62

    :catch_58
    move-exception v4

    const-string v5, "drawAppSortUpdate failed, e = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "drawAppSortUpdate -- mApps.size = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", comparator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "appSortRule = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AllApps"

    invoke-static {v6, p1, v3, v0}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;

    goto :goto_8d

    :cond_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v8, 0x3e8

    cmp-long v8, p0, v8

    if-lez v8, :cond_d3

    const-string v8, "drawAppSort cost to muchTime sortCost = "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v1, v4, v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sectionUpdateCost = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v6, v4

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " adapterUpdateCost = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v6

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    return-void
.end method

.method public drawAppSortUpdate(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawAppSortUpdate appSortRule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlphabeticalAppsList"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->drawAppSort(I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    const-string v0, "draw_app_sort_rule_key"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public getApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object p0
.end method

.method public getDrawAppSortApps()[Lcom/android/launcher3/model/data/AppInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFastScrollerVisibility(I)I
    .registers 2

    return p1
.end method

.method public getIndexSortArray()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1b

    if-le v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->removeRedundantkey(Ljava/util/ArrayList;)V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mIndexSortArray:Ljava/util/ArrayList;

    return-object p0
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

    if-nez p0, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getPredictedApps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public onAppsUpdated()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    const-string v1, "draw_app_sort_rule_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->drawAppSortUpdate(I)V

    return-void
.end method

.method public refillAdapterItemsPredictedAppsAndAllAppsDividerInject([I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .registers 9

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string p0, "AlphabeticalAppsList"

    const-string/jumbo p1, "refillAdapterItemsPredictedAppsAndAllAppsDividerInject return null when not in Drawer mode!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_14
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->isNeedAddPredictionsAppsHeader()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->asPredictionsAppsHeader(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string v3, ""

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    instance-of v6, v5, Lcom/android/launcher3/allapps/OplusAllAppsStore;

    if-eqz v6, :cond_3d

    move-object v1, v5

    check-cast v1, Lcom/android/launcher3/allapps/OplusAllAppsStore;

    :cond_3d
    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getPredictedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    sget-object v6, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/data/ItemInfo;->setAppLocationType(Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    add-int/lit8 v6, v4, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->asPredictedApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-nez v5, :cond_64

    iput-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    :cond_64
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_47

    :cond_6b
    move-object v1, v2

    move v2, v4

    :cond_6d
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->addAllAppsDividerInject(I)I

    move-result p0

    aput p0, p1, v0

    return-object v1
.end method

.method public refillAdapterItemsSelectedEmptyPosFooterInject(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->asSelectedEmptyPosFooter(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerUpdateListener()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mHasRegisterAppStoreUpdateListener:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mHasRegisterAppStoreUpdateListener:Z

    :cond_c
    return-void
.end method

.method public setNumAppsPerRow(I)V
    .registers 2

    return-void
.end method

.method public supportsFastScrolling(Z)Z
    .registers 2

    return p1
.end method

.method public unRegisterUpdateListener()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mHasRegisterAppStoreUpdateListener:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mHasRegisterAppStoreUpdateListener:Z

    :cond_c
    return-void
.end method

.method public updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/sort/AppNameComparator;->getFirstSpellForSearchBar(Ljava/lang/String;)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_22

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :cond_22
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mLocaleZhOrEn:Z

    if-eqz v1, :cond_30

    const/16 v1, 0x41

    if-lt v0, v1, :cond_2e

    const/16 v1, 0x5a

    if-le v0, v1, :cond_30

    :cond_2e
    const/16 v0, 0x23

    :cond_30
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->mLocaleZhOrEn:Z

    if-nez p1, :cond_47

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->addIndexSortList(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->setSortIndexMaps(Ljava/lang/String;)V

    :cond_47
    return-object v0
.end method

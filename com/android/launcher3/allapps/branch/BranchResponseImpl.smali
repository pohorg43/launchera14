.class public final Lcom/android/launcher3/allapps/branch/BranchResponseImpl;
.super Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchResponseImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
        "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchResponseImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "BranchResponseImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchResponseImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchResponseImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;-><init>(Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final refillAdapterItemsAndUpdate()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_26
    return-void
.end method


# virtual methods
.method public appStoreEmpty(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string/jumbo v0, "noSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "appStoreEmpty"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic appStoreEmpty(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->appStoreEmpty(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public appStoreSearch(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string/jumbo v0, "remoteSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "appStoreSearch"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic appStoreSearch(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->appStoreSearch(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public cancelQuery()V
    .registers 4

    const-string v0, "BranchResponseImpl"

    const-string v1, "cancelQuery"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v1

    :cond_29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public hints(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string v0, "hints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "hintsSuccess"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic hints(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->hints(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public searchAutoSuggests(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 5

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "autoSuggestSuccess"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->getEntity()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    :cond_23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v2

    :cond_34
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic searchAutoSuggests(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->searchAutoSuggests(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public searchLocalApps(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string v0, "localSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "compositeSearchLocal"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic searchLocalApps(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->searchLocalApps(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public searchLocalEmpty(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string v1, "localSearchEmpty"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic searchLocalEmpty(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->searchLocalEmpty(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public suggestedApps(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string/jumbo v1, "suggestedApps"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic suggestedApps(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->suggestedApps(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

.method public suggestedLinks(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V
    .registers 4

    const-string/jumbo v0, "suggestedLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BranchResponseImpl"

    const-string/jumbo v1, "suggestedLinksSuccess"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getBranchDataMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->refillAdapterItemsAndUpdate()V

    return-void
.end method

.method public bridge synthetic suggestedLinks(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchResponseImpl;->suggestedLinks(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;)V

    return-void
.end method

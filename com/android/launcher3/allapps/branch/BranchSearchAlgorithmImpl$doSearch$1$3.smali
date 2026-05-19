.class public final Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchLocalSearchEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchSearchAlgorithmImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchSearchAlgorithmImpl.kt\ncom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n766#2:130\n857#2,2:131\n*S KotlinDebug\n*F\n+ 1 BranchSearchAlgorithmImpl.kt\ncom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3\n*L\n84#1:130\n84#1:131,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $query:Ljava/lang/String;

.field public final synthetic $this_run:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->$this_run:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchLocalSearchError(Lio/branch/search/BranchLocalError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBranchLocalSearchError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSearchAlgorithmImpl"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->getMInterruptActiveRequests()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->$query:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_43

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalEmpty(Ljava/lang/Object;)V

    :cond_43
    return-void
.end method

.method public onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .registers 13

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lio/branch/search/d;->results:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBranchLocalSearchResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchSearchAlgorithmImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->getMInterruptActiveRequests()Z

    move-result v0

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->$query:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_42

    :cond_40
    move v3, v0

    goto :goto_43

    :cond_42
    :goto_42
    move v3, v2

    :goto_43
    const/4 v4, 0x0

    if-nez v3, :cond_d0

    const-string/jumbo v3, "results"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->$this_run:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/branch/search/BranchLocalAppResult;

    const-string/jumbo v8, "name : "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v8

    invoke-virtual {v7}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    xor-int/2addr v8, v2

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSettingProtectExpired()Z

    move-result v9

    if-eqz v9, :cond_91

    goto :goto_a2

    :cond_91
    if-eqz v8, :cond_a1

    sget-object v8, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v7}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a1

    move v8, v2

    goto :goto_a2

    :cond_a1
    move v8, v0

    :goto_a2
    if-eqz v8, :cond_57

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_a8
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_bf

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_e0

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {p1, v5}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalApps(Ljava/lang/Object;)V

    goto :goto_e0

    :cond_bf
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_e0

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {p1, v4}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalEmpty(Ljava/lang/Object;)V

    goto :goto_e0

    :cond_d0
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_e0

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {p1, v4}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchLocalEmpty(Ljava/lang/Object;)V

    :cond_e0
    :goto_e0
    return-void
.end method

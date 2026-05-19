.class public final Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;
.super Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm<",
        "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "BranchSearchAlgorithmImpl"


# instance fields
.field private mInterruptActiveRequests:Z

.field private mQuery:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->Companion:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;-><init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mQuery:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 4

    const-string v0, "cancel interruptActiveRequest = "

    const-string v1, "BranchSearchAlgorithmImpl"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mQuery:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mInterruptActiveRequests:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMSearchAlgorithmProxy()Lcom/android/launcher3/search/SearchAlgorithm;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-interface {p0, p1}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    goto :goto_35

    :cond_2a
    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->cancelQuery()V

    :cond_35
    :goto_35
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchSearchAlgorithmImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mQuery:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 p2, 0x0

    invoke-static {v0, p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSearchCount(Landroid/content/Context;Z)V

    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p2

    invoke-static {p1}, Lio/branch/search/BranchAutoSuggestRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchAutoSuggestRequest;

    move-result-object v1

    const-string v2, "create(query)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->getMAppList()Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/LauncherAlphabeticalAppsList;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v3

    if-eqz v3, :cond_5d

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setLastSearchQuery(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_5d
    if-eqz p2, :cond_67

    new-instance v3, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v3}, Lio/branch/search/BranchSearch;->autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z

    :cond_67
    sget-object v1, Lio/branch/search/BranchAppStoreRequest;->Companion:Lio/branch/search/BranchAppStoreRequest$Companion;

    invoke-virtual {v1, p1}, Lio/branch/search/BranchAppStoreRequest$Companion;->create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;

    move-result-object v1

    if-eqz p2, :cond_77

    new-instance v3, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;-><init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)V

    invoke-virtual {p2, v1, v3}, Lio/branch/search/BranchSearch;->appStoreSearch(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V

    :cond_77
    invoke-static {p1}, Lio/branch/search/BranchLocalSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchLocalSearchRequest;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_92

    new-instance v2, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$3;-><init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, v1, v2}, Lio/branch/search/BranchSearch;->localSearch(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V

    goto :goto_92

    :cond_89
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMSearchAlgorithmProxy()Lcom/android/launcher3/search/SearchAlgorithm;

    move-result-object p0

    if-eqz p0, :cond_92

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public final getMInterruptActiveRequests()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mInterruptActiveRequests:Z

    return p0
.end method

.method public final setMInterruptActiveRequests(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->mInterruptActiveRequests:Z

    return-void
.end method

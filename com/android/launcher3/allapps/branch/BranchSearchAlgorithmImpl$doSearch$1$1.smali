.class public final Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchAutoSuggestEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $query:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBranchAutoSuggestError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSearchAlgorithmImpl"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->$query:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_3f

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchAutoSuggests(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public onBranchAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .registers 5

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBranchAutoSuggestResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v1, v2

    :goto_22
    xor-int/2addr v1, v2

    const-string v2, "BranchSearchAlgorithmImpl"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->$query:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_46

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->searchAutoSuggests(Ljava/lang/Object;)V

    :cond_46
    return-void
.end method

.class public final Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchComplete(Ljava/lang/String;Lf4/d;Lio/branch/search/BranchError;)V
    .registers 6

    const-string/jumbo v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appStoreSearch mQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {v1}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BranchSearchAlgorithmImpl"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->getMInterruptActiveRequests()Z

    move-result p3

    if-nez p3, :cond_7d

    iget-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-static {p3}, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;->access$getMQuery$p(Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_6c

    iget-object p1, p2, Lf4/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_6c

    :cond_59
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_7d

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    iget-object p2, p2, Lf4/d;->b:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->appStoreSearch(Ljava/lang/Object;)V

    goto :goto_7d

    :cond_6c
    :goto_6c
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl$doSearch$1$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchSearchAlgorithmImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_7d

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->appStoreEmpty(Ljava/lang/Object;)V

    :cond_7d
    :goto_7d
    return-void
.end method

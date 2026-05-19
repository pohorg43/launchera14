.class public Lio/branch/search/m1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/BranchLocalAppResult;

.field public final b:Z


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalAppResult;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/m1;->a:Lio/branch/search/BranchLocalAppResult;

    iput-boolean p2, p0, Lio/branch/search/m1;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/BranchLocalAppResult;
    .registers 1

    iget-object p0, p0, Lio/branch/search/m1;->a:Lio/branch/search/BranchLocalAppResult;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/branch/search/m1;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/m1;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp1/c;

    if-eqz v2, :cond_1e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v2, p0, Lio/branch/search/m1;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_48

    iget-object p0, p0, Lio/branch/search/m1;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp1/c;

    if-eqz p0, :cond_48

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp1/c;

    :try_start_58
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_58 .. :try_end_62} :catch_65
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_62} :catch_65

    if-nez p1, :cond_4c

    return v3

    :catch_65
    move-exception p0

    const-string p1, "BRANCH_LocalAppWrapper.showBasedOnImageCacheState"

    const-string v0, "cache lookup failed for url"

    invoke-static {p1, v0, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_6e
    return v1
.end method

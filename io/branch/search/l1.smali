.class public Lio/branch/search/l1;
.super Lio/branch/search/BranchLocalSearchResult;
.source ""


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalSearchResult;Ljava/lang/String;)V
    .registers 4
    .param p1  # Lio/branch/search/BranchLocalSearchResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lio/branch/search/d;->requestId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/l1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalAppResult;

    new-instance v3, Lio/branch/search/k1;

    iget-object v4, p0, Lio/branch/search/l1;->b:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lio/branch/search/k1;-><init>(Lio/branch/search/BranchLocalAppResult;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_24
    return-object v0
.end method

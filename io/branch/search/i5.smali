.class public Lio/branch/search/i5;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .registers 4
    .param p0  # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v1, Lio/branch/search/i5$a;

    invoke-direct {v1, v0, p0}, Lio/branch/search/i5$a;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance p0, Lio/branch/search/i5$b;

    invoke-direct {p0, v0}, Lio/branch/search/i5$b;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method

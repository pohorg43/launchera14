.class public abstract Lio/branch/search/k4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/k4$a;

    invoke-direct {v0, p0}, Lio/branch/search/k4$a;-><init>(Lio/branch/search/k4;)V

    const-string v1, "app_usage_event"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/k4$b;

    invoke-direct {v2, p0}, Lio/branch/search/k4$b;-><init>(Lio/branch/search/k4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_usage_event"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_usage_event ORDER BY timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lj7/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h<",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/branch/search/k4;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_14
    const/16 p1, 0x7d0

    invoke-virtual {p0, p1}, Lio/branch/search/k4;->b(I)V

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM app_usage_event WHERE timestamp NOT IN (SELECT timestamp FROM app_usage_event ORDER BY timestamp DESC LIMIT :limit)"
    .end annotation
.end method

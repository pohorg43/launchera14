.class public abstract Lio/branch/search/c4;
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
            "Lio/branch/search/e4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/c4$j;

    invoke-direct {v0, p0}, Lio/branch/search/c4$j;-><init>(Lio/branch/search/c4;)V

    const-string v1, "app_clicks"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/c4$a;

    invoke-direct {v2, p0}, Lio/branch/search/c4$a;-><init>(Lio/branch/search/c4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_clicks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_clicks ORDER BY timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lio/branch/search/e4;)V
    .registers 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lio/branch/search/c4;->b(Lio/branch/search/e4;)V

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/c4;->f(I)V

    return-void
.end method

.method public a(Lio/branch/search/f4;)V
    .registers 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lio/branch/search/c4;->b(Lio/branch/search/f4;)V

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/c4;->h(I)V

    return-void
.end method

.method public abstract a(Lio/branch/search/i4;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public a(Lio/branch/search/i4;Ljava/util/List;)V
    .registers 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/i4;",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lio/branch/search/c4;->a(Lio/branch/search/i4;)V

    invoke-virtual {p0, p2}, Lio/branch/search/c4;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/c4;->g(I)V

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;)V"
        }
    .end annotation
.end method

.method public b(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/c4$d;

    invoke-direct {v0, p0}, Lio/branch/search/c4$d;-><init>(Lio/branch/search/c4;)V

    const-string v1, "unified_entities"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/c4$e;

    invoke-direct {v2, p0}, Lio/branch/search/c4$e;-><init>(Lio/branch/search/c4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_entities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_entities ORDER BY timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lio/branch/search/e4;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract b(Lio/branch/search/f4;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/h4;",
            ">;)V"
        }
    .end annotation
.end method

.method public c(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/h4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/c4$f;

    invoke-direct {v0, p0}, Lio/branch/search/c4$f;-><init>(Lio/branch/search/c4;)V

    const-string v1, "unified_impressions"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/c4$g;

    invoke-direct {v2, p0}, Lio/branch/search/c4$g;-><init>(Lio/branch/search/c4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_impressions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/h4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_impressions ORDER BY start_time DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/h4;",
            ">;"
        }
    .end annotation
.end method

.method public d(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/i4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/c4$b;

    invoke-direct {v0, p0}, Lio/branch/search/c4$b;-><init>(Lio/branch/search/c4;)V

    const-string v1, "unified_virtual_requests"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/c4$c;

    invoke-direct {v2, p0}, Lio/branch/search/c4$c;-><init>(Lio/branch/search/c4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract d()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_virtual_requests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/i4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM unified_virtual_requests ORDER BY timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/i4;",
            ">;"
        }
    .end annotation
.end method

.method public e(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/c4$h;

    invoke-direct {v0, p0}, Lio/branch/search/c4$h;-><init>(Lio/branch/search/c4;)V

    const-string v1, "search_clicks"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/c4$i;

    invoke-direct {v2, p0}, Lio/branch/search/c4$i;-><init>(Lio/branch/search/c4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM search_clicks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM search_clicks ORDER BY timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM app_clicks WHERE timestamp NOT IN (SELECT timestamp FROM app_clicks ORDER BY timestamp DESC LIMIT :limit)"
    .end annotation
.end method

.method public abstract g(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM unified_virtual_requests WHERE timestamp NOT IN (SELECT timestamp FROM unified_virtual_requests ORDER BY timestamp DESC LIMIT :limit)"
    .end annotation
.end method

.method public abstract h(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM search_clicks WHERE timestamp NOT IN (SELECT timestamp FROM search_clicks ORDER BY timestamp DESC LIMIT :limit)"
    .end annotation
.end method

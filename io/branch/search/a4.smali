.class public abstract Lio/branch/search/a4;
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/z3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/a4$a;

    invoke-direct {v0, p0}, Lio/branch/search/a4$a;-><init>(Lio/branch/search/a4;)V

    const-string p0, "tracking_status_history"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tracking_status_history"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/z3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lio/branch/search/z3;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract b()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM tracking_status_history"
    .end annotation
.end method

.method public b(Lio/branch/search/z3;)V
    .registers 4
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/a4;->b()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lio/branch/search/a4;->c()V

    :cond_b
    invoke-virtual {p0, p1}, Lio/branch/search/a4;->a(Lio/branch/search/z3;)V

    return-void
.end method

.method public abstract c()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM tracking_status_history WHERE timestamp = (SELECT MAX(timestamp) FROM tracking_status_history)"
    .end annotation
.end method

.method public abstract d()Lio/branch/search/z3;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tracking_status_history ORDER BY timestamp DESC LIMIT 1"
    .end annotation
.end method

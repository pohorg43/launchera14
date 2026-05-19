.class public abstract Lio/branch/search/n4;
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
            "Lio/branch/search/m4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/n4$a;

    invoke-direct {v0, p0}, Lio/branch/search/n4$a;-><init>(Lio/branch/search/n4;)V

    const-string p0, "app_usage_stats"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lio/branch/search/m4;)Ljava/lang/Long;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM app_usage_stats"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/m4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM app_usage_stats WHERE last_usage_timestamp NOT IN (SELECT last_usage_timestamp FROM app_usage_stats ORDER BY last_usage_timestamp DESC LIMIT :limit)"
    .end annotation
.end method

.method public a(Lj7/h;)V
    .registers 10
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h<",
            "Lio/branch/search/m4;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/m4;

    invoke-virtual {p0, v0}, Lio/branch/search/n4;->a(Lio/branch/search/m4;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v3, v0, Lio/branch/search/m4;->a:Ljava/lang/String;

    iget-wide v4, v0, Lio/branch/search/m4;->b:J

    iget-wide v6, v0, Lio/branch/search/m4;->c:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/n4;->a(Ljava/lang/String;JJ)V

    goto :goto_4

    :cond_29
    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lio/branch/search/n4;->a(I)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;JJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE app_usage_stats SET screen_uptime=(:screenUptime + screen_uptime) ,last_usage_timestamp=:lastUsageTimestamp WHERE package_name=:packageName"
    .end annotation
.end method

.class public abstract Lio/branch/search/i3;
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
.method public a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/e5;)J
    .registers 5

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/branch/search/e5;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/branch/search/i3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->c()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public abstract a(Lio/branch/search/h3;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Landroidx/room/Query;
        value = "SELECT SUM(usage) FROM data_usage WHERE date > :date AND ((:channelMatchString = \'||\' OR :channelMatchString =\'\' OR :channelMatchString is null) OR INSTR(:channelMatchString, \'|\' || channel || \'|\') > 0)AND ((:connectionTypeMatchString = \'||\' OR :connectionTypeMatchString =\'\' OR :connectionTypeMatchString is null) OR INSTR(:connectionTypeMatchString, \'|\' || connection_type || \'|\') > 0)"
    .end annotation
.end method

.method public a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;JLjava/lang/String;Lio/branch/search/e5;)V
    .registers 14
    .annotation build Landroidx/room/Transaction;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lio/branch/search/e5;->c(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lio/branch/search/h3;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p5

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lio/branch/search/h3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lio/branch/search/i3;->b(Lio/branch/search/h3;)V

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->q()I

    move-result p1

    invoke-virtual {p6, p1}, Lio/branch/search/e5;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/i3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM data_usage WHERE date < :date"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE data_usage SET usage = (usage + :used) WHERE date = :date AND channel = :channel AND connection_type = :connectionType"
    .end annotation
.end method

.method public a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/e5;)Z
    .registers 9
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/KNetworkUsageCappingRule;

    sget-object v1, Lio/branch/search/KNetworkUsageCappingRule;->Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

    invoke-virtual {v1, p2, p3, v0}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/KNetworkUsageCappingRule;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-virtual {p0, v0, p4}, Lio/branch/search/i3;->a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/e5;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lio/branch/search/h3;)V
    .registers 9
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/i3;->a(Lio/branch/search/h3;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget-object v2, p1, Lio/branch/search/h3;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/h3;->b:Ljava/lang/String;

    iget-object v4, p1, Lio/branch/search/h3;->c:Ljava/lang/String;

    iget-wide v5, p1, Lio/branch/search/h3;->d:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/i3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_16
    return-void
.end method

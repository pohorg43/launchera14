.class public abstract Lio/branch/search/m3;
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
            "Lio/branch/search/l3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/m3$a;

    invoke-direct {v0, p0}, Lio/branch/search/m3$a;-><init>(Lio/branch/search/m3;)V

    const-string p0, "local_packages"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Ljava/lang/String;J)Lio/branch/search/l3;
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_packages WHERE package_name IS :packageName AND user_id IS :userId"
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_packages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_packages WHERE user_id=:staleUserId"
    .end annotation
.end method

.method public abstract a(Lio/branch/search/l3;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 23
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual/range {p0 .. p3}, Lio/branch/search/m3;->a(Ljava/lang/String;J)Lio/branch/search/l3;

    move-result-object v0

    const-string v1, "LocalPackageDAO"

    if-eqz v0, :cond_30

    iget-boolean v2, v0, Lio/branch/search/l3;->e:Z

    if-eqz v2, :cond_2d

    new-instance v1, Lio/branch/search/l3;

    iget-object v4, v0, Lio/branch/search/l3;->a:Ljava/lang/String;

    iget-object v5, v0, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iget-object v6, v0, Lio/branch/search/l3;->c:Ljava/lang/String;

    iget-object v7, v0, Lio/branch/search/l3;->d:Ljava/lang/String;

    iget-wide v9, v0, Lio/branch/search/l3;->f:J

    iget-wide v11, v0, Lio/branch/search/l3;->g:J

    iget-wide v2, v0, Lio/branch/search/l3;->i:J

    const-wide/16 v13, 0x1

    add-long v15, v2, v13

    const/4 v8, 0x0

    move-object v3, v1

    move-wide/from16 v13, p4

    invoke-direct/range {v3 .. v16}, Lio/branch/search/l3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lio/branch/search/m3;->a(Lio/branch/search/l3;)V

    goto :goto_35

    :cond_2d
    const-string v0, "invoked markUninstalled(...) but the package is already marked as uninstalled"

    goto :goto_32

    :cond_30
    const-string v0, "invoked markUninstalled(...) but the package does not exist"

    :goto_32
    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/m3;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/l3;

    iget-object v3, v2, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v2, v2, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/branch/search/m3;->a(J)V

    goto :goto_2b

    :cond_3f
    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 27
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/m3;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/l3;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    iget-object v6, v2, Lio/branch/search/l3;->a:Ljava/lang/String;

    new-instance v3, Lio/branch/search/l3;

    iget-object v7, v2, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iget-object v8, v2, Lio/branch/search/l3;->c:Ljava/lang/String;

    iget-object v9, v2, Lio/branch/search/l3;->d:Ljava/lang/String;

    iget-wide v11, v2, Lio/branch/search/l3;->f:J

    iget-wide v13, v2, Lio/branch/search/l3;->g:J

    iget-wide v4, v2, Lio/branch/search/l3;->i:J

    const-wide/16 v15, 0x1

    add-long v17, v4, v15

    const/4 v10, 0x0

    move-object v5, v3

    move-wide/from16 v15, p2

    invoke-direct/range {v5 .. v18}, Lio/branch/search/l3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstalling (inserting) into local_packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CHARLES"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lio/branch/search/m3;->a(Lio/branch/search/l3;)V

    goto :goto_a

    :cond_54
    move-object/from16 v4, p0

    iget-boolean v5, v2, Lio/branch/search/l3;->e:Z

    if-eqz v5, :cond_b4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/l3;

    iget-object v6, v5, Lio/branch/search/l3;->d:Ljava/lang/String;

    if-eqz v6, :cond_68

    iget-object v7, v2, Lio/branch/search/l3;->d:Ljava/lang/String;

    if-eqz v7, :cond_80

    :cond_68
    iget-object v7, v2, Lio/branch/search/l3;->d:Ljava/lang/String;

    if-eqz v7, :cond_6e

    if-eqz v6, :cond_80

    :cond_6e
    if-eqz v7, :cond_76

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    :cond_76
    iget-object v6, v2, Lio/branch/search/l3;->c:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/search/l3;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    :cond_80
    const/4 v6, 0x1

    goto :goto_83

    :cond_82
    const/4 v6, 0x0

    :goto_83
    if-nez v6, :cond_89

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_89
    new-instance v6, Lio/branch/search/l3;

    iget-object v8, v2, Lio/branch/search/l3;->a:Ljava/lang/String;

    iget-object v9, v2, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iget-object v10, v5, Lio/branch/search/l3;->c:Ljava/lang/String;

    iget-object v11, v5, Lio/branch/search/l3;->d:Ljava/lang/String;

    iget-wide v13, v2, Lio/branch/search/l3;->f:J

    move-wide v15, v13

    iget-wide v12, v2, Lio/branch/search/l3;->g:J

    move-wide/from16 v17, v12

    iget-wide v12, v2, Lio/branch/search/l3;->h:J

    move-wide/from16 v19, v12

    iget-wide v12, v2, Lio/branch/search/l3;->i:J

    const/4 v2, 0x1

    move-object v7, v6

    move-wide/from16 v21, v12

    move v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    invoke-direct/range {v7 .. v20}, Lio/branch/search/l3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    invoke-interface {v0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_b4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/l3;

    new-instance v14, Lio/branch/search/l3;

    iget-object v7, v5, Lio/branch/search/l3;->a:Ljava/lang/String;

    iget-object v8, v5, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iget-object v9, v5, Lio/branch/search/l3;->c:Ljava/lang/String;

    iget-object v10, v5, Lio/branch/search/l3;->d:Ljava/lang/String;

    iget-wide v12, v2, Lio/branch/search/l3;->f:J

    iget-wide v5, v5, Lio/branch/search/l3;->g:J

    move-wide v15, v12

    iget-wide v11, v2, Lio/branch/search/l3;->h:J

    move-wide/from16 v17, v11

    iget-wide v11, v2, Lio/branch/search/l3;->i:J

    const/4 v2, 0x1

    move-wide/from16 v19, v5

    move-object v6, v14

    move-wide/from16 v21, v11

    move v11, v2

    move-wide v12, v15

    move-object v2, v14

    move-wide/from16 v14, v19

    move-wide/from16 v16, v17

    move-wide/from16 v18, v21

    invoke-direct/range {v6 .. v19}, Lio/branch/search/l3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_e6
    move-object/from16 v4, p0

    invoke-virtual/range {p0 .. p1}, Lio/branch/search/m3;->b(Ljava/util/List;)V

    return-void
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_packages WHERE is_installed"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
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
            "Lio/branch/search/l3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_packages WHERE is_installed ORDER BY original_name ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
    .end annotation
.end method

.class public final Lio/branch/search/t2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/t2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/t2$a;


# instance fields
.field public final a:Lio/branch/search/e3;

.field public final b:Lio/branch/search/m2;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/t2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/t2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/t2;->Companion:Lio/branch/search/t2$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/m2;)V
    .registers 4

    const-string v0, "branch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/t2;->b:Lio/branch/search/m2;

    new-instance p2, Lio/branch/search/e3;

    invoke-direct {p2, p1}, Lio/branch/search/e3;-><init>(Lio/branch/search/m;)V

    iput-object p2, p0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/t2;Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/s2;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/branch/search/t2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/s2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/s2;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/s2;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/s2;

    new-instance v1, Lio/branch/search/s2;

    invoke-virtual {v0}, Lio/branch/search/s2;->b()I

    move-result v2

    invoke-virtual {v0}, Lio/branch/search/s2;->c()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, p3}, Lio/branch/search/s2;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_26
    new-instance p1, Lio/branch/search/s2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1, p3}, Lio/branch/search/s2;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()V
    .registers 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lio/branch/search/t2;->b:Lio/branch/search/m2;

    invoke-virtual {v2}, Lio/branch/search/m2;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_125

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/i2;

    iget-object v6, v3, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v7, "db.mHelper"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v8, "db.mHelper.readableDatabase"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lio/branch/search/q2;->Companion:Lio/branch/search/q2$a;

    invoke-virtual {v9}, Lio/branch/search/q2$a;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lio/branch/search/x1$b;

    invoke-direct {v10}, Lio/branch/search/x1$b;-><init>()V

    new-instance v11, Lio/branch/search/a3;

    invoke-direct {v11}, Lio/branch/search/a3;-><init>()V

    const/4 v12, 0x0

    invoke-static {v6, v9, v12, v10, v11}, Lio/branch/search/n2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/branch/search/u2;

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v13, -0x1

    iput v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v13, v0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    iget-object v14, v3, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v13, v14}, Lio/branch/search/t2;->a(Lio/branch/search/u2;Lio/branch/search/e3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result v13

    if-nez v13, :cond_7f

    goto :goto_4a

    :cond_7f
    iget-object v13, v0, Lio/branch/search/t2;->b:Lio/branch/search/m2;

    iget-object v14, v3, Lio/branch/search/i2;->b:Ljava/lang/String;

    const-string v15, "db.cannonicalName"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lio/branch/search/t2$c;

    invoke-direct {v12, v0, v9, v11, v10}, Lio/branch/search/t2$c;-><init>(Lio/branch/search/t2;Lio/branch/search/u2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v13, v14, v12}, Lio/branch/search/m2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    move-result-object v9

    if-eqz v9, :cond_113

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v12

    invoke-virtual {v12}, Lio/branch/search/j0;->a()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    goto :goto_a3

    :cond_a2
    const/4 v12, 0x0

    :goto_a3
    if-eqz v12, :cond_ae

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_ac

    goto :goto_ae

    :cond_ac
    move v13, v4

    goto :goto_af

    :cond_ae
    :goto_ae
    move v13, v5

    :goto_af
    if-nez v13, :cond_cf

    const/16 v13, 0x1000

    invoke-static {v12, v13}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_bd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "ScheduledQueryManager"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :cond_cf
    new-instance v12, Lio/branch/search/d3$b;

    iget-object v13, v0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    invoke-virtual {v13}, Lio/branch/search/e3;->a()Lio/branch/search/m;

    move-result-object v13

    invoke-virtual {v13}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v13

    const-string v14, "jobManager.branch.remoteConfiguration"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v14, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v24}, Lio/branch/search/d3$b;-><init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/x1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget v11, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "exception.javaClass.simpleName"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v11, v9}, Lio/branch/search/t2;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_113
    iget-object v9, v0, Lio/branch/search/t2;->b:Lio/branch/search/m2;

    iget-object v11, v3, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lio/branch/search/t2$b;

    invoke-direct {v12, v0, v10}, Lio/branch/search/t2$b;-><init>(Lio/branch/search/t2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v9, v11, v12}, Lio/branch/search/m2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    const/4 v12, 0x0

    goto/16 :goto_4a

    :cond_125
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_156

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v5, Lw4/e;

    long-to-int v6, v2

    const/16 v7, 0x20

    shr-long/2addr v2, v7

    long-to-int v2, v2

    invoke-direct {v5, v6, v2}, Lw4/e;-><init>(II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v5, v4, v2}, Lw4/c;->c(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/d3$b;

    invoke-virtual {v1}, Lio/branch/search/d3$b;->b()Ljava/lang/Exception;

    move-result-object v2

    const-string v3, "ScheduledQueryManager.executeScheduledQueries"

    invoke-static {v3, v2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    invoke-virtual {v0, v1}, Lio/branch/search/e3;->b(Lio/branch/search/d3;)V

    :cond_156
    return-void
.end method

.method public final a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/s2;)V
    .registers 5

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lio/branch/search/s2;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "query_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lio/branch/search/s2;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lio/branch/search/s2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "scheduled_query_execution_history"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public final a(Lio/branch/search/r2;Lio/branch/search/e3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .registers 13

    :try_start_0
    invoke-virtual {p1}, Lio/branch/search/r2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/r2;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/branch/search/x1$b;

    invoke-direct {v2}, Lio/branch/search/x1$b;-><init>()V

    invoke-static {}, Lio/branch/search/b3;->a()Lio/branch/search/f2;

    move-result-object v3

    invoke-static {p3, v0, v1, v2, v3}, Lio/branch/search/n2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_43

    :catch_1c
    move-exception p3

    move-object v5, p3

    new-instance p3, Lio/branch/search/d3$b;

    iget-object p0, p0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    invoke-virtual {p0}, Lio/branch/search/e3;->a()Lio/branch/search/m;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    const-string p0, "jobManager.branch.remoteConfiguration"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/r2;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Lio/branch/search/d3$b;-><init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/x1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3}, Lio/branch/search/e3;->b(Lio/branch/search/d3;)V

    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method public final a(Lio/branch/search/u2;Lio/branch/search/e3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    invoke-virtual {p1}, Lio/branch/search/u2;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/r2;

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/t2;->a(Lio/branch/search/r2;Lio/branch/search/e3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    return p0

    :cond_12
    return v0
.end method

.method public final b()Lio/branch/search/e3;
    .registers 1

    iget-object p0, p0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    return-object p0
.end method

.method public final c()V
    .registers 4

    iget-object p0, p0, Lio/branch/search/t2;->a:Lio/branch/search/e3;

    new-instance v0, Lio/branch/search/d3$c;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, v1, v2}, Lio/branch/search/d3$c;-><init>(J)V

    invoke-virtual {p0, v0}, Lio/branch/search/e3;->c(Lio/branch/search/d3;)V

    return-void
.end method

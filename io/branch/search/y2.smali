.class public final Lio/branch/search/y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/f2<",
        "Lio/branch/search/v1;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/v1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/y2;->d:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/y2;->b(Landroid/database/Cursor;)Lio/branch/search/v1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/y2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/v1;
    .registers 24

    move-object/from16 v0, p1

    const-string v1, "cur"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_12

    return-object v3

    :cond_12
    new-instance v2, Lio/branch/search/v1;

    invoke-static {v0, v1}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    iget v7, v1, Lio/branch/search/y2;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "timestamp"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/32 v4, 0xea60

    const-string v1, "min_wait_time"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/32 v4, 0x5265c00

    const-string v1, "max_wait_time"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v12

    const-string v1, "initial_backoff_millis"

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v14, v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v14, v1

    goto :goto_4d

    :cond_4c
    move-object v14, v3

    :goto_4d
    const-string v1, "back_off_type"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v15

    const-string v1, "only_on_wifi"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v16

    const-string v1, "must_not_have_low_battery"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v17

    const-string v1, "requires_connectivity"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v18

    const-string v1, "requires_charging"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v19

    const-string v1, "requires_storage_not_low"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v20

    const-string v1, "requires_idle_device"

    invoke-static {v0, v1, v3, v4, v3}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v21

    move-object v5, v2

    invoke-direct/range {v5 .. v21}, Lio/branch/search/v1;-><init>(Ljava/lang/String;IJJJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/v1;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/v1;",
            ">;"
        }
    .end annotation

    const-string p0, "pings"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/v;->D(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

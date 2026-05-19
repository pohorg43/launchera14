.class public final Lio/branch/search/t2$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/t2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/requery/android/database/sqlite/SQLiteDatabase;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/t2;

.field public final synthetic b:Lio/branch/search/u2;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lio/branch/search/t2;Lio/branch/search/u2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/t2$c;->a:Lio/branch/search/t2;

    iput-object p2, p0, Lio/branch/search/t2$c;->b:Lio/branch/search/u2;

    iput-object p3, p0, Lio/branch/search/t2$c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lio/branch/search/t2$c;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 11

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/t2$c;->b:Lio/branch/search/u2;

    invoke-virtual {v0}, Lio/branch/search/u2;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/r2;

    iget-object v2, p0, Lio/branch/search/t2$c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v1}, Lio/branch/search/r2;->c()I

    move-result v3

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1}, Lio/branch/search/r2;->g()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v1}, Lio/branch/search/r2;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/branch/search/r2;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/branch/search/x1$b;

    invoke-direct {v4}, Lio/branch/search/x1$b;-><init>()V

    new-instance v5, Lio/branch/search/y2;

    invoke-virtual {v1}, Lio/branch/search/r2;->c()I

    move-result v6

    invoke-direct {v5, v6}, Lio/branch/search/y2;-><init>(I)V

    invoke-static {p1, v2, v3, v4, v5}, Lio/branch/search/n2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/v1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lw4/e;

    long-to-int v7, v4

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    long-to-int v4, v4

    invoke-direct {v6, v7, v4}, Lw4/e;-><init>(II)V

    invoke-virtual {v6}, Lw4/e;->b()I

    move-result v4

    iget-object v5, p0, Lio/branch/search/t2$c;->a:Lio/branch/search/t2;

    invoke-virtual {v5}, Lio/branch/search/t2;->b()Lio/branch/search/e3;

    move-result-object v5

    new-instance v6, Lio/branch/search/d3$a;

    invoke-direct {v6, v4, v3}, Lio/branch/search/d3$a;-><init>(ILio/branch/search/v1;)V

    invoke-virtual {v5, v6}, Lio/branch/search/e3;->b(Lio/branch/search/d3;)V

    goto :goto_49

    :cond_76
    invoke-virtual {v1}, Lio/branch/search/r2;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/branch/search/x1$b;

    invoke-direct {v3}, Lio/branch/search/x1$b;-><init>()V

    invoke-virtual {v1}, Lio/branch/search/r2;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8a
    iget-object v2, p0, Lio/branch/search/t2$c;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    new-instance v3, Lio/branch/search/s2;

    invoke-virtual {v1}, Lio/branch/search/r2;->c()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v1, v4, v5, v6}, Lio/branch/search/s2;-><init>(IJLjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_a3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lio/branch/search/t2$c;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

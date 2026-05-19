.class public final Lio/branch/search/i1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/i1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/i1$b;


# instance fields
.field public final a:J

.field public final b:Lm7/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/p0<",
            "Lio/branch/search/j1<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lio/branch/search/m;

.field public final d:Lm7/j0;

.field public final e:Ljava/lang/String;

.field public final f:Lio/branch/search/p0;

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/branch/search/p0;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/i1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/i1$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/i1;->Companion:Lio/branch/search/i1$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lm7/j0;",
            "Ljava/lang/String;",
            "Lio/branch/search/p0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/branch/search/p0;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/i1;->c:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/i1;->d:Lm7/j0;

    iput-object p3, p0, Lio/branch/search/i1;->e:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/i1;->f:Lio/branch/search/p0;

    iput-object p5, p0, Lio/branch/search/i1;->g:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lio/branch/search/i1;->a:J

    invoke-static {}, Lio/branch/search/c5;->c()Lm7/j1;

    move-result-object v1

    new-instance v3, Lio/branch/search/i1$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lio/branch/search/i1$a;-><init>(Lio/branch/search/i1;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/i1;->b:Lm7/p0;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/i1;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i1;->c:Lio/branch/search/m;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/i1;JZLl4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/i1;->a(JZLl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/i1;JZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/i1;->a(JZ)V

    return-void
.end method

.method public static final synthetic b(Lio/branch/search/i1;)Lm7/p0;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i1;->b:Lm7/p0;

    return-object p0
.end method

.method public static final synthetic c(Lio/branch/search/i1;)Lkotlin/jvm/functions/Function1;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i1;->g:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Lio/branch/search/i1;)Lio/branch/search/p0;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i1;->f:Lio/branch/search/p0;

    return-object p0
.end method


# virtual methods
.method public final a(JZLl4/d;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ll4/d<",
            "-",
            "Lio/branch/search/j1<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    instance-of v4, v3, Lio/branch/search/i1$d;

    if-eqz v4, :cond_19

    move-object v4, v3

    check-cast v4, Lio/branch/search/i1$d;

    iget v5, v4, Lio/branch/search/i1$d;->b:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_19

    sub-int/2addr v5, v6

    iput v5, v4, Lio/branch/search/i1$d;->b:I

    goto :goto_1e

    :cond_19
    new-instance v4, Lio/branch/search/i1$d;

    invoke-direct {v4, v0, v3}, Lio/branch/search/i1$d;-><init>(Lio/branch/search/i1;Ll4/d;)V

    :goto_1e
    iget-object v3, v4, Lio/branch/search/i1$d;->a:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v4, Lio/branch/search/i1$d;->b:I

    const/16 v7, 0x1000

    const/4 v8, 0x0

    const-string v9, "ms"

    const-string v10, "LIRewrite"

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eqz v6, :cond_5b

    if-eq v6, v13, :cond_42

    if-ne v6, v11, :cond_3a

    iget-wide v0, v4, Lio/branch/search/i1$d;->e:J

    iget-object v2, v4, Lio/branch/search/i1$d;->d:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/i1;

    goto :goto_48

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-wide v0, v4, Lio/branch/search/i1$d;->e:J

    iget-object v2, v4, Lio/branch/search/i1$d;->d:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/i1;

    :goto_48
    :try_start_48
    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_48 .. :try_end_4b} :catch_53

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-object v0, v2

    move-wide/from16 v1, v18

    goto/16 :goto_fc

    :catch_53
    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-object v0, v2

    move-wide/from16 v1, v18

    goto/16 :goto_101

    :cond_5b
    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v11, v0, Lio/branch/search/i1;->a:J

    sub-long/2addr v14, v11

    if-eqz p3, :cond_6a

    sub-long v11, v1, v14

    goto :goto_6b

    :cond_6a
    move-wide v11, v1

    :goto_6b
    :try_start_6b
    iget-object v6, v0, Lio/branch/search/i1;->b:Lm7/p0;

    invoke-interface {v6}, Lm7/s1;->p()Z

    move-result v6

    if-eqz v6, :cond_85

    iget-object v3, v0, Lio/branch/search/i1;->b:Lm7/p0;

    iput-object v0, v4, Lio/branch/search/i1$d;->d:Ljava/lang/Object;

    iput-wide v1, v4, Lio/branch/search/i1$d;->e:J

    iput v13, v4, Lio/branch/search/i1$d;->b:I

    invoke-interface {v3, v4}, Lm7/p0;->d(Ll4/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_82

    return-object v5

    :cond_82
    const/4 v14, 0x0

    goto/16 :goto_fc

    :cond_85
    const-wide/16 v16, 0x0

    cmp-long v6, v11, v16

    if-gtz v6, :cond_e8

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/j0;->a()Z

    move-result v3

    if-eqz v3, :cond_b0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lio/branch/search/i1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - already over budget by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v14, v1

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b1

    :cond_b0
    const/4 v3, 0x0

    :goto_b1
    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_ba

    goto :goto_bc

    :cond_ba
    move v4, v8

    goto :goto_bd

    :cond_bc
    :goto_bc
    move v4, v13

    :goto_bd
    if-nez v4, :cond_d9

    invoke-static {v3, v7}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    :cond_d9
    sget-object v3, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    new-instance v4, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {v4}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object v5, v0, Lio/branch/search/i1;->f:Lio/branch/search/p0;

    invoke-virtual {v3, v4, v5}, Lio/branch/search/j1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object v0

    goto/16 :goto_160

    :cond_e8
    new-instance v6, Lio/branch/search/i1$e;
    :try_end_ea
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6b .. :try_end_ea} :catch_100

    const/4 v14, 0x0

    :try_start_eb
    invoke-direct {v6, v0, v14}, Lio/branch/search/i1$e;-><init>(Lio/branch/search/i1;Ll4/d;)V

    iput-object v0, v4, Lio/branch/search/i1$d;->d:Ljava/lang/Object;

    iput-wide v1, v4, Lio/branch/search/i1$d;->e:J

    const/4 v3, 0x2

    iput v3, v4, Lio/branch/search/i1$d;->b:I

    invoke-static {v11, v12, v6, v4}, Lm7/r2;->b(JLkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_fc

    return-object v5

    :cond_fc
    :goto_fc
    check-cast v3, Lio/branch/search/j1;
    :try_end_fe
    .catch Ljava/util/concurrent/CancellationException; {:try_start_eb .. :try_end_fe} :catch_101

    move-object v0, v3

    goto :goto_160

    :catch_100
    const/4 v14, 0x0

    :catch_101
    :goto_101
    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/j0;->a()Z

    move-result v3

    if-eqz v3, :cond_12d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lio/branch/search/i1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - withTimeout inaccuracy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v11, v0, Lio/branch/search/i1;->a:J

    sub-long/2addr v4, v11

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_12e

    :cond_12d
    move-object v12, v14

    :goto_12e
    if-eqz v12, :cond_136

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_137

    :cond_136
    move v8, v13

    :cond_137
    if-nez v8, :cond_153

    invoke-static {v12, v7}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_143
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    :cond_153
    sget-object v1, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    new-instance v2, Lio/branch/search/BranchLocalError$WasCancelled;

    invoke-direct {v2}, Lio/branch/search/BranchLocalError$WasCancelled;-><init>()V

    iget-object v0, v0, Lio/branch/search/i1;->f:Lio/branch/search/p0;

    invoke-virtual {v1, v2, v0}, Lio/branch/search/j1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object v0

    :goto_160
    return-object v0
.end method

.method public final a(Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lio/branch/search/j1<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/branch/search/i1$c;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/branch/search/i1$c;

    iget v1, v0, Lio/branch/search/i1$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/i1$c;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/branch/search/i1$c;

    invoke-direct {v0, p0, p1}, Lio/branch/search/i1$c;-><init>(Lio/branch/search/i1;Ll4/d;)V

    :goto_18
    iget-object p1, v0, Lio/branch/search/i1$c;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lio/branch/search/i1$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lio/branch/search/i1$c;->d:Ljava/lang/Object;

    check-cast p0, Lio/branch/search/i1;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_43

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/i1;->b:Lm7/p0;

    iput-object p0, v0, Lio/branch/search/i1$c;->d:Ljava/lang/Object;

    iput v3, v0, Lio/branch/search/i1$c;->b:I

    invoke-interface {p1, v0}, Lm7/p0;->d(Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_43

    return-object v1

    :cond_43
    :goto_43
    check-cast p1, Lio/branch/search/j1;

    invoke-virtual {p1}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/f5;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/branch/search/i1;->a(Z)V

    return-object p1
.end method

.method public final a()V
    .registers 7

    iget-object v0, p0, Lio/branch/search/i1;->d:Lm7/j0;

    new-instance v3, Lio/branch/search/i1$f;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lio/branch/search/i1$f;-><init>(Lio/branch/search/i1;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final a(JZ)V
    .registers 13

    sget-object v0, Lio/branch/search/i1;->Companion:Lio/branch/search/i1$b;

    iget-wide v1, p0, Lio/branch/search/i1;->a:J

    iget-object v6, p0, Lio/branch/search/i1;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/i1;->f:Lio/branch/search/p0;

    iget-object v8, p0, Lio/branch/search/i1;->c:Lio/branch/search/m;

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lio/branch/search/i1$b;->a(JJZLjava/lang/String;Lio/branch/search/p0;Lio/branch/search/m;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lio/branch/search/i1;->a(JZ)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i1;->e:Ljava/lang/String;

    return-object p0
.end method

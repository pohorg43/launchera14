.class public Lp7/p;
.super Lq7/a;
.source ""

# interfaces
.implements Lp7/l;
.implements Lp7/d;
.implements Lq7/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq7/a<",
        "Lp7/r;",
        ">;",
        "Lp7/l<",
        "TT;>;",
        "Lq7/q<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,731:1\n28#2,4:732\n28#2,4:738\n28#2,4:760\n28#2,4:767\n28#2,4:779\n28#2,4:793\n28#2,4:807\n20#3:736\n20#3:742\n20#3:764\n20#3:771\n20#3:783\n20#3:797\n20#3:811\n329#4:737\n1#5:743\n94#6,2:744\n96#6,2:747\n98#6:750\n94#6,2:772\n96#6,2:775\n98#6:778\n94#6,2:800\n96#6,2:803\n98#6:806\n13579#7:746\n13580#7:749\n13579#7:774\n13580#7:777\n13579#7:802\n13580#7:805\n314#8,9:751\n323#8,2:765\n314#8,9:784\n323#8,2:798\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n351#1:732,4\n391#1:738,4\n485#1:760,4\n506#1:767,4\n626#1:779,4\n661#1:793,4\n689#1:807,4\n351#1:736\n391#1:742\n485#1:764\n506#1:771\n626#1:783\n661#1:797\n689#1:811\n373#1:737\n453#1:744,2\n453#1:747,2\n453#1:750\n529#1:772,2\n529#1:775,2\n529#1:778\n676#1:800,2\n676#1:803,2\n676#1:806\n453#1:746\n453#1:749\n529#1:774\n529#1:777\n676#1:802\n676#1:805\n483#1:751,9\n483#1:765,2\n660#1:784,9\n660#1:798,2\n*E\n"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Lo7/a;

.field public g:[Ljava/lang/Object;

.field public h:J

.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(IILo7/a;)V
    .registers 4

    invoke-direct {p0}, Lq7/a;-><init>()V

    iput p1, p0, Lp7/p;->d:I

    iput p2, p0, Lp7/p;->e:I

    iput-object p3, p0, Lp7/p;->f:Lo7/a;

    return-void
.end method

.method public static h(Lp7/p;Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp7/p<",
            "TT;>;",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lp7/p$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/p$b;

    iget v1, v0, Lp7/p$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/p$b;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/p$b;

    invoke-direct {v0, p0, p2}, Lp7/p$b;-><init>(Lp7/p;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/p$b;->e:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/p$b;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_73

    if-eq v2, v5, :cond_5c

    if-eq v2, v4, :cond_42

    if-ne v2, v3, :cond_3a

    iget-object p0, v0, Lp7/p$b;->d:Ljava/lang/Object;

    check-cast p0, Lm7/s1;

    iget-object p1, v0, Lp7/p$b;->c:Ljava/lang/Object;

    check-cast p1, Lp7/r;

    iget-object v2, v0, Lp7/p$b;->b:Ljava/lang/Object;

    check-cast v2, Lp7/e;

    iget-object v5, v0, Lp7/p$b;->a:Ljava/lang/Object;

    check-cast v5, Lp7/p;

    goto :goto_52

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    iget-object p0, v0, Lp7/p$b;->d:Ljava/lang/Object;

    check-cast p0, Lm7/s1;

    iget-object p1, v0, Lp7/p$b;->c:Ljava/lang/Object;

    check-cast p1, Lp7/r;

    iget-object v2, v0, Lp7/p$b;->b:Ljava/lang/Object;

    check-cast v2, Lp7/e;

    iget-object v5, v0, Lp7/p$b;->a:Ljava/lang/Object;

    check-cast v5, Lp7/p;

    :goto_52
    :try_start_52
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_a3

    :catchall_59
    move-exception p0

    goto/16 :goto_e3

    :cond_5c
    iget-object p0, v0, Lp7/p$b;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lp7/r;

    iget-object p0, v0, Lp7/p$b;->b:Ljava/lang/Object;

    check-cast p0, Lp7/e;

    iget-object v2, v0, Lp7/p$b;->a:Ljava/lang/Object;

    check-cast v2, Lp7/p;

    :try_start_69
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6f

    move-object p2, p0

    move-object p0, v2

    goto :goto_95

    :catchall_6f
    move-exception p0

    move-object v5, v2

    goto/16 :goto_e3

    :cond_73
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq7/a;->b()Lq7/c;

    move-result-object p2

    check-cast p2, Lp7/r;

    :try_start_7c
    instance-of v2, p1, Lp7/v;

    if-eqz v2, :cond_92

    move-object v2, p1

    check-cast v2, Lp7/v;

    iput-object p0, v0, Lp7/p$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lp7/p$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lp7/p$b;->c:Ljava/lang/Object;

    iput v5, v0, Lp7/p$b;->g:I

    invoke-virtual {v2, v0}, Lp7/v;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_df

    if-ne v2, v1, :cond_92

    return-object v1

    :cond_92
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_95
    :try_start_95
    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v2

    sget v5, Lm7/s1;->L:I

    sget-object v5, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v2, v5}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v2

    check-cast v2, Lm7/s1;

    :cond_a3
    :goto_a3
    invoke-virtual {p0, p1}, Lp7/p;->r(Lp7/r;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lp7/q;->a:Lr7/f0;

    if-ne v5, v6, :cond_bc

    iput-object p0, v0, Lp7/p$b;->a:Ljava/lang/Object;

    iput-object p2, v0, Lp7/p$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Lp7/p$b;->c:Ljava/lang/Object;

    iput-object v2, v0, Lp7/p$b;->d:Ljava/lang/Object;

    iput v4, v0, Lp7/p$b;->g:I

    invoke-virtual {p0, p1, v0}, Lp7/p;->f(Lp7/r;Ll4/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_a3

    return-object v1

    :cond_bc
    if-eqz v2, :cond_ca

    invoke-interface {v2}, Lm7/s1;->isActive()Z

    move-result v6

    if-eqz v6, :cond_c5

    goto :goto_ca

    :cond_c5
    invoke-interface {v2}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    throw p2

    :cond_ca
    :goto_ca
    iput-object p0, v0, Lp7/p$b;->a:Ljava/lang/Object;

    iput-object p2, v0, Lp7/p$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Lp7/p$b;->c:Ljava/lang/Object;

    iput-object v2, v0, Lp7/p$b;->d:Ljava/lang/Object;

    iput v3, v0, Lp7/p$b;->g:I

    invoke-interface {p2, v5, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object v5
    :try_end_d8
    .catchall {:try_start_95 .. :try_end_d8} :catchall_db

    if-ne v5, v1, :cond_a3

    return-object v1

    :catchall_db
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    goto :goto_e3

    :catchall_df
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object p1, p2

    :goto_e3
    invoke-virtual {v5, p1}, Lq7/a;->e(Lq7/c;)V

    throw p0
.end method


# virtual methods
.method public a(Ll4/f;ILo7/a;)Lp7/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lp7/d<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_5

    const/4 v0, -0x3

    if-ne p2, v0, :cond_a

    :cond_5
    sget-object v0, Lo7/a;->a:Lo7/a;

    if-ne p3, v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance v0, Lq7/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lq7/j;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method

.method public c()Lq7/c;
    .registers 1

    new-instance p0, Lp7/r;

    invoke-direct {p0}, Lp7/r;-><init>()V

    return-object p0
.end method

.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lp7/p;->h(Lp7/p;Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(I)[Lq7/c;
    .registers 2

    new-array p0, p1, [Lp7/r;

    return-object p0
.end method

.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lq7/b;->a:[Ll4/d;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p1}, Lp7/p;->p(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0}, Lp7/p;->k([Ll4/d;)[Ll4/d;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_a3

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    monitor-exit p0

    array-length v4, v0

    move v5, v2

    :goto_15
    if-ge v5, v4, :cond_23

    aget-object v6, v0, v5

    if-eqz v6, :cond_20

    sget-object v7, Lh4/z;->a:Lh4/z;

    invoke-interface {v6, v7}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_23
    if-eqz v1, :cond_29

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto/16 :goto_9f

    :cond_29
    new-instance v0, Lm7/n;

    invoke-static {p2}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    sget-object v1, Lq7/b;->a:[Ll4/d;

    monitor-enter p0

    :try_start_38
    invoke-virtual {p0, p1}, Lp7/p;->p(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p1}, Lm7/n;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp7/p;->k([Ll4/d;)[Ll4/d;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_6e

    :cond_49
    new-instance v10, Lp7/p$a;

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v4

    invoke-virtual {p0}, Lp7/p;->n()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    move-object v4, v10

    move-object v5, p0

    move-object v8, p1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lp7/p$a;-><init>(Lp7/p;JLjava/lang/Object;Ll4/d;)V

    invoke-virtual {p0, v10}, Lp7/p;->j(Ljava/lang/Object;)V

    iget p1, p0, Lp7/p;->k:I

    add-int/2addr p1, v3

    iput p1, p0, Lp7/p;->k:I

    iget p1, p0, Lp7/p;->e:I

    if-nez p1, :cond_6c

    invoke-virtual {p0, v1}, Lp7/p;->k([Ll4/d;)[Ll4/d;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_a0

    :cond_6c
    move-object p1, v1

    move-object v1, v10

    :goto_6e
    monitor-exit p0

    if-eqz v1, :cond_79

    new-instance p0, Lm7/b1;

    invoke-direct {p0, v1}, Lm7/b1;-><init>(Lm7/a1;)V

    invoke-virtual {v0, p0}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    :cond_79
    array-length p0, p1

    :goto_7a
    if-ge v2, p0, :cond_88

    aget-object v1, p1, v2

    if-eqz v1, :cond_85

    sget-object v3, Lh4/z;->a:Lh4/z;

    invoke-interface {v1, v3}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_88
    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_95

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_95
    if-ne p0, p1, :cond_98

    goto :goto_9a

    :cond_98
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_9a
    if-ne p0, p1, :cond_9d

    goto :goto_9f

    :cond_9d
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_9f
    return-object p0

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lp7/r;Ll4/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/r;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm7/n;

    invoke-static {p2}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    monitor-enter p0

    :try_start_e
    invoke-virtual {p0, p1}, Lp7/p;->q(Lp7/r;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    iput-object v0, p1, Lp7/r;->b:Ll4/d;

    iput-object v0, p1, Lp7/r;->b:Ll4/d;

    goto :goto_22

    :cond_1d
    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p1}, Lm7/n;->resumeWith(Ljava/lang/Object;)V

    :goto_22
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_36

    monitor-exit p0

    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_32

    const-string v1, "frame"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_32
    if-ne p0, v0, :cond_35

    return-object p0

    :cond_35
    return-object p1

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()V
    .registers 6

    iget v0, p0, Lp7/p;->e:I

    if-nez v0, :cond_a

    iget v0, p0, Lp7/p;->k:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_f
    iget v1, p0, Lp7/p;->k:I

    if-lez v1, :cond_41

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v1

    invoke-virtual {p0}, Lp7/p;->n()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lp7/q;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lp7/q;->a:Lr7/f0;

    if-ne v1, v2, :cond_41

    iget v1, p0, Lp7/p;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lp7/p;->k:I

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v1

    invoke-virtual {p0}, Lp7/p;->n()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    long-to-int v1, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput-object v3, v0, v1

    goto :goto_f

    :cond_41
    return-void
.end method

.method public final i()V
    .registers 11

    iget-object v0, p0, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lp7/q;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lp7/p;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp7/p;->j:I

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lp7/p;->h:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_22

    iput-wide v0, p0, Lp7/p;->h:J

    :cond_22
    iget-wide v2, p0, Lp7/p;->i:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_4d

    iget v2, p0, Lq7/a;->b:I

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lq7/a;->a:[Lq7/c;

    if-eqz v2, :cond_4b

    const/4 v3, 0x0

    array-length v4, v2

    :goto_32
    if-ge v3, v4, :cond_4b

    aget-object v5, v2, v3

    if-eqz v5, :cond_48

    check-cast v5, Lp7/r;

    iget-wide v6, v5, Lp7/r;->a:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_48

    cmp-long v6, v6, v0

    if-gez v6, :cond_48

    iput-wide v0, v5, Lp7/r;->a:J

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4b
    iput-wide v0, p0, Lp7/p;->i:J

    :cond_4d
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lp7/p;->n()I

    move-result v0

    iget-object v1, p0, Lp7/p;->g:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_10

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lp7/p;->o([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    :cond_10
    array-length v3, v1

    if-lt v0, v3, :cond_19

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lp7/p;->o([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int p0, v2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    aput-object p1, v1, p0

    return-void
.end method

.method public final k([Ll4/d;)[Ll4/d;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lq7/a;->b:I

    if-eqz v1, :cond_43

    iget-object v1, p0, Lq7/a;->a:[Lq7/c;

    if-eqz v1, :cond_43

    const/4 v2, 0x0

    array-length v3, v1

    :goto_b
    if-ge v2, v3, :cond_43

    aget-object v4, v1, v2

    if-eqz v4, :cond_40

    check-cast v4, Lp7/r;

    iget-object v5, v4, Lp7/r;->b:Ll4/d;

    if-nez v5, :cond_18

    goto :goto_40

    :cond_18
    invoke-virtual {p0, v4}, Lp7/p;->q(Lp7/r;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_40

    array-length v6, p1

    if-lt v0, v6, :cond_35

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(this, newSize)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_35
    move-object v6, p1

    check-cast v6, [Ll4/d;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lp7/r;->b:Ll4/d;

    move v0, v7

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_43
    check-cast p1, [Ll4/d;

    return-object p1
.end method

.method public final l()J
    .registers 5

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v0

    iget p0, p0, Lp7/p;->j:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final m()J
    .registers 5

    iget-wide v0, p0, Lp7/p;->i:J

    iget-wide v2, p0, Lp7/p;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lp7/p;->j:I

    iget p0, p0, Lp7/p;->k:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final o([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    if-lez p3, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-eqz v1, :cond_27

    new-array v1, p3, [Ljava/lang/Object;

    iput-object v1, p0, Lp7/p;->g:[Ljava/lang/Object;

    if-nez p1, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v2

    :goto_13
    if-ge v0, p2, :cond_26

    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int p0, v4

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, p0

    aget-object v4, p1, v4

    add-int/lit8 v5, p3, -0x1

    and-int/2addr p0, v5

    aput-object v4, v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    return-object v1

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v1, p0, Lq7/a;->b:I

    const/4 v9, 0x1

    if-nez v1, :cond_24

    iget v1, p0, Lp7/p;->d:I

    if-nez v1, :cond_a

    goto :goto_23

    :cond_a
    invoke-virtual {p0, p1}, Lp7/p;->j(Ljava/lang/Object;)V

    iget v1, p0, Lp7/p;->j:I

    add-int/2addr v1, v9

    iput v1, p0, Lp7/p;->j:I

    iget v2, p0, Lp7/p;->d:I

    if-le v1, v2, :cond_19

    invoke-virtual {p0}, Lp7/p;->i()V

    :cond_19
    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v1

    iget v3, p0, Lp7/p;->j:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lp7/p;->i:J

    :goto_23
    return v9

    :cond_24
    iget v1, p0, Lp7/p;->j:I

    iget v2, p0, Lp7/p;->e:I

    if-lt v1, v2, :cond_41

    iget-wide v1, p0, Lp7/p;->i:J

    iget-wide v3, p0, Lp7/p;->h:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_41

    iget-object v1, p0, Lp7/p;->f:Lo7/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3e

    goto :goto_41

    :cond_3e
    return v9

    :cond_3f
    const/4 v0, 0x0

    return v0

    :cond_41
    :goto_41
    invoke-virtual {p0, p1}, Lp7/p;->j(Ljava/lang/Object;)V

    iget v1, p0, Lp7/p;->j:I

    add-int/2addr v1, v9

    iput v1, p0, Lp7/p;->j:I

    iget v2, p0, Lp7/p;->e:I

    if-le v1, v2, :cond_50

    invoke-virtual {p0}, Lp7/p;->i()V

    :cond_50
    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v1

    iget v3, p0, Lp7/p;->j:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lp7/p;->h:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lp7/p;->d:I

    if-le v1, v2, :cond_79

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p0, Lp7/p;->i:J

    invoke-virtual {p0}, Lp7/p;->l()J

    move-result-wide v5

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v7

    iget v10, p0, Lp7/p;->j:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lp7/p;->k:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lp7/p;->s(JJJJ)V

    :cond_79
    return v9
.end method

.method public final q(Lp7/r;)J
    .registers 8

    iget-wide v0, p1, Lp7/r;->a:J

    invoke-virtual {p0}, Lp7/p;->l()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_b

    return-wide v0

    :cond_b
    iget p1, p0, Lp7/p;->e:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_12

    return-wide v2

    :cond_12
    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_1b

    return-wide v2

    :cond_1b
    iget p0, p0, Lp7/p;->k:I

    if-nez p0, :cond_20

    return-wide v2

    :cond_20
    return-wide v0
.end method

.method public final r(Lp7/r;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lq7/b;->a:[Ll4/d;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p1}, Lp7/p;->q(Lp7/r;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_10

    sget-object p1, Lp7/q;->a:Lr7/f0;

    goto :goto_2f

    :cond_10
    iget-wide v3, p1, Lp7/r;->a:J

    iget-object v0, p0, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lp7/q;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lp7/p$a;

    if-eqz v5, :cond_23

    check-cast v0, Lp7/p$a;

    iget-object v0, v0, Lp7/p$a;->c:Ljava/lang/Object;

    :cond_23
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lp7/r;->a:J

    invoke-virtual {p0, v3, v4}, Lp7/p;->t(J)[Ll4/d;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_41

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_2f
    monitor-exit p0

    const/4 p0, 0x0

    array-length v1, v0

    :goto_32
    if-ge p0, v1, :cond_40

    aget-object v2, v0, p0

    if-eqz v2, :cond_3d

    sget-object v3, Lh4/z;->a:Lh4/z;

    invoke-interface {v2, v3}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_3d
    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    :cond_40
    return-object p1

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s(JJJJ)V
    .registers 15

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lp7/p;->m()J

    move-result-wide v2

    :goto_8
    cmp-long v4, v2, v0

    if-gez v4, :cond_19

    iget-object v4, p0, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lp7/q;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_8

    :cond_19
    iput-wide p1, p0, Lp7/p;->h:J

    iput-wide p3, p0, Lp7/p;->i:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lp7/p;->j:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lp7/p;->k:I

    return-void
.end method

.method public final t(J)[Ll4/d;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    iget-wide v0, v9, Lp7/p;->i:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    sget-object v0, Lq7/b;->a:[Ll4/d;

    return-object v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lp7/p;->m()J

    move-result-wide v0

    iget v2, v9, Lp7/p;->j:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v9, Lp7/p;->e:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1e

    iget v4, v9, Lp7/p;->k:I

    if-lez v4, :cond_1e

    add-long/2addr v2, v5

    :cond_1e
    iget v4, v9, Lq7/a;->b:I

    if-eqz v4, :cond_40

    iget-object v4, v9, Lq7/a;->a:[Lq7/c;

    if-eqz v4, :cond_40

    array-length v7, v4

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v7, :cond_40

    aget-object v11, v4, v8

    if-eqz v11, :cond_3d

    check-cast v11, Lp7/r;

    iget-wide v11, v11, Lp7/r;->a:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-ltz v13, :cond_3d

    cmp-long v13, v11, v2

    if-gez v13, :cond_3d

    move-wide v2, v11

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_40
    iget-wide v7, v9, Lp7/p;->i:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_49

    sget-object v0, Lq7/b;->a:[Ll4/d;

    return-object v0

    :cond_49
    invoke-virtual/range {p0 .. p0}, Lp7/p;->l()J

    move-result-wide v7

    iget v4, v9, Lq7/a;->b:I

    if-lez v4, :cond_5e

    sub-long v11, v7, v2

    long-to-int v4, v11

    iget v11, v9, Lp7/p;->k:I

    iget v12, v9, Lp7/p;->e:I

    sub-int/2addr v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_60

    :cond_5e
    iget v4, v9, Lp7/p;->k:I

    :goto_60
    sget-object v11, Lq7/b;->a:[Ll4/d;

    iget v12, v9, Lp7/p;->k:I

    int-to-long v12, v12

    add-long/2addr v12, v7

    if-lez v4, :cond_b5

    new-array v11, v4, [Ll4/d;

    iget-object v14, v9, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v5, v7

    const/4 v15, 0x0

    :goto_71
    cmp-long v16, v7, v12

    if-gez v16, :cond_af

    invoke-static {v14, v7, v8}, Lp7/q;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    move-wide/from16 v17, v2

    sget-object v2, Lp7/q;->a:Lr7/f0;

    if-eq v10, v2, :cond_a5

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lp7/p$a;

    add-int/lit8 v3, v15, 0x1

    move-wide/from16 v19, v12

    iget-object v12, v10, Lp7/p$a;->d:Ll4/d;

    aput-object v12, v11, v15

    long-to-int v12, v7

    array-length v13, v14

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    aput-object v2, v14, v12

    iget-object v2, v10, Lp7/p$a;->c:Ljava/lang/Object;

    long-to-int v10, v5

    array-length v12, v14

    add-int/lit8 v12, v12, -0x1

    and-int/2addr v10, v12

    aput-object v2, v14, v10

    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    if-ge v3, v4, :cond_b3

    move v15, v3

    goto :goto_a9

    :cond_a5
    move-wide/from16 v19, v12

    const-wide/16 v12, 0x1

    :goto_a9
    add-long/2addr v7, v12

    move-wide/from16 v2, v17

    move-wide/from16 v12, v19

    goto :goto_71

    :cond_af
    move-wide/from16 v17, v2

    move-wide/from16 v19, v12

    :cond_b3
    move-wide v7, v5

    goto :goto_b9

    :cond_b5
    move-wide/from16 v17, v2

    move-wide/from16 v19, v12

    :goto_b9
    sub-long v0, v7, v0

    long-to-int v0, v0

    iget v1, v9, Lq7/a;->b:I

    if-nez v1, :cond_c2

    move-wide v3, v7

    goto :goto_c4

    :cond_c2
    move-wide/from16 v3, v17

    :goto_c4
    iget-wide v1, v9, Lp7/p;->h:J

    iget v5, v9, Lp7/p;->d:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v5, v0

    sub-long v5, v7, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, v9, Lp7/p;->e:I

    if-nez v2, :cond_f0

    cmp-long v2, v0, v19

    if-gez v2, :cond_f0

    iget-object v2, v9, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lp7/q;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lp7/q;->a:Lr7/f0;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_f0
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Lp7/p;->s(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lp7/p;->g()V

    array-length v0, v11

    const/4 v1, 0x1

    if-nez v0, :cond_102

    move v10, v1

    goto :goto_103

    :cond_102
    const/4 v10, 0x0

    :goto_103
    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_10b

    invoke-virtual {v9, v11}, Lp7/p;->k([Ll4/d;)[Ll4/d;

    move-result-object v11

    :cond_10b
    return-object v11
.end method

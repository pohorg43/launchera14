.class public abstract La6/a;
.super La6/d;
.source ""

# interfaces
.implements Lu6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "La6/d<",
        "TA;",
        "La6/a$a<",
        "+TA;+TC;>;>;",
        "Lu6/c<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field public final b:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "La6/t;",
            "La6/a$a<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;La6/r;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, La6/d;-><init>(La6/r;)V

    new-instance p2, La6/a$d;

    invoke-direct {p2, p0}, La6/a$d;-><init>(La6/a;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, La6/a;->b:Lx6/g;

    return-void
.end method


# virtual methods
.method public d(Lu6/b0;Lc6/n;Ly6/l0;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            "Ly6/l0;",
            ")TC;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lu6/b;->b:Lu6/b;

    sget-object v6, La6/a$c;->a:La6/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, La6/a;->w(Lu6/b0;Lc6/n;Lu6/b;Ly6/l0;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h(Lu6/b0;Lc6/n;Ly6/l0;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            "Ly6/l0;",
            ")TC;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lu6/b;->c:Lu6/b;

    sget-object v6, La6/a$b;->a:La6/a$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, La6/a;->w(Lu6/b0;Lc6/n;Lu6/b;Ly6/l0;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lu6/b0;Lc6/n;Lu6/b;Ly6/l0;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            "Lu6/b;",
            "Ly6/l0;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "La6/a$a<",
            "+TA;+TC;>;-",
            "La6/w;",
            "+TC;>;)TC;"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    sget-object v0, Le6/b;->A:Le6/b$b;

    move-object v8, p2

    iget v1, v8, Lc6/n;->d:I

    invoke-virtual {v0, v1}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Lg6/h;->d(Lc6/n;)Z

    move-result v5

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La6/d;->q(Lu6/b0;ZZLjava/lang/Boolean;Z)La6/t;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, La6/d;->n(Lu6/b0;La6/t;)La6/t;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_1f

    return-object v10

    :cond_1f
    invoke-interface {v9}, La6/t;->e()Lb6/a;

    move-result-object v0

    iget-object v0, v0, Lb6/a;->b:Lg6/e;

    sget-object v1, La6/j;->b:La6/j$a;

    sget-object v1, La6/j;->g:Lg6/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Le6/a;->b:I

    iget v3, v1, Le6/a;->c:I

    iget v1, v1, Le6/a;->d:I

    invoke-virtual {v0, v2, v3, v1}, Le6/a;->a(III)Z

    move-result v5

    iget-object v2, v7, Lu6/b0;->a:Le6/c;

    iget-object v3, v7, Lu6/b0;->b:Le6/g;

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, La6/d;->o(Li6/p;Le6/c;Le6/g;Lu6/b;Z)La6/w;

    move-result-object v0

    if-nez v0, :cond_49

    return-object v10

    :cond_49
    iget-object v1, v6, La6/a;->b:Lx6/g;

    check-cast v1, Lx6/e$m;

    invoke-virtual {v1, v9}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5a

    return-object v10

    :cond_5a
    invoke-static {p4}, Lf5/n;->a(Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_b8

    check-cast v0, Lm6/g;

    const-string v1, "constant"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Lm6/d;

    if-eqz v1, :cond_7c

    new-instance v1, Lm6/x;

    check-cast v0, Lm6/d;

    iget-object v0, v0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-direct {v1, v0}, Lm6/x;-><init>(B)V

    :goto_7a
    move-object v0, v1

    goto :goto_b8

    :cond_7c
    instance-of v1, v0, Lm6/u;

    if-eqz v1, :cond_90

    new-instance v1, Lm6/a0;

    check-cast v0, Lm6/u;

    iget-object v0, v0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-direct {v1, v0}, Lm6/a0;-><init>(S)V

    goto :goto_7a

    :cond_90
    instance-of v1, v0, Lm6/m;

    if-eqz v1, :cond_a4

    new-instance v1, Lm6/y;

    check-cast v0, Lm6/m;

    iget-object v0, v0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lm6/y;-><init>(I)V

    goto :goto_7a

    :cond_a4
    instance-of v1, v0, Lm6/s;

    if-eqz v1, :cond_b8

    new-instance v1, Lm6/z;

    check-cast v0, Lm6/s;

    iget-object v0, v0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lm6/z;-><init>(J)V

    goto :goto_7a

    :cond_b8
    :goto_b8
    return-object v0
.end method

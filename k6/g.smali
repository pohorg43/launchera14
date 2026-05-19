.class public final Lk6/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lk6/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk6/g;

    invoke-direct {v0}, Lk6/g;-><init>()V

    sput-object v0, Lk6/g;->a:Lk6/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li5/l;Li5/l;ZZ)Z
    .registers 10

    instance-of v0, p1, Li5/e;

    if-eqz v0, :cond_1a

    instance-of v0, p2, Li5/e;

    if-eqz v0, :cond_1a

    check-cast p1, Li5/e;

    check-cast p2, Li5/e;

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p2}, Li5/h;->h()Ly6/j1;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_ff

    :cond_1a
    instance-of v0, p1, Li5/a1;

    if-eqz v0, :cond_2e

    instance-of v0, p2, Li5/a1;

    if-eqz v0, :cond_2e

    check-cast p1, Li5/a1;

    check-cast p2, Li5/a1;

    sget-object p4, Lk6/f;->a:Lk6/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lk6/g;->b(Li5/a1;Li5/a1;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    goto/16 :goto_ff

    :cond_2e
    instance-of v0, p1, Li5/a;

    if-eqz v0, :cond_e2

    instance-of v0, p2, Li5/a;

    if-eqz v0, :cond_e2

    check-cast p1, Li5/a;

    check-cast p2, Li5/a;

    sget-object v0, Lz6/f$a;->a:Lz6/f$a;

    const/4 v1, 0x0

    const-string v2, "a"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kotlinTypeRefiner"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_55

    goto/16 :goto_de

    :cond_55
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto/16 :goto_e0

    :cond_65
    if-eqz p4, :cond_80

    instance-of p4, p1, Li5/c0;

    if-eqz p4, :cond_80

    instance-of p4, p2, Li5/c0;

    if-eqz p4, :cond_80

    move-object p4, p1

    check-cast p4, Li5/c0;

    invoke-interface {p4}, Li5/c0;->f0()Z

    move-result p4

    move-object v2, p2

    check-cast v2, Li5/c0;

    invoke-interface {v2}, Li5/c0;->f0()Z

    move-result v2

    if-eq p4, v2, :cond_80

    goto :goto_e0

    :cond_80
    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p4

    invoke-interface {p2}, Li5/m;->b()Li5/l;

    move-result-object v2

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a0

    if-nez p3, :cond_91

    goto :goto_e0

    :cond_91
    invoke-virtual {p0, p1}, Lk6/g;->d(Li5/a;)Li5/v0;

    move-result-object p4

    invoke-virtual {p0, p2}, Lk6/g;->d(Li5/a;)Li5/v0;

    move-result-object v2

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a0

    goto :goto_e0

    :cond_a0
    invoke-static {p1}, Lk6/i;->t(Li5/l;)Z

    move-result p4

    if-nez p4, :cond_e0

    invoke-static {p2}, Lk6/i;->t(Li5/l;)Z

    move-result p4

    if-eqz p4, :cond_ad

    goto :goto_e0

    :cond_ad
    sget-object p4, Lk6/d;->a:Lk6/d;

    invoke-virtual {p0, p1, p2, p4, p3}, Lk6/g;->c(Li5/l;Li5/l;Lkotlin/jvm/functions/Function2;Z)Z

    move-result p0

    if-nez p0, :cond_b6

    goto :goto_e0

    :cond_b6
    new-instance p0, Lk6/c;

    invoke-direct {p0, p3, p1, p2}, Lk6/c;-><init>(ZLi5/a;Li5/a;)V

    const/4 p3, 0x0

    new-instance p4, Lk6/o;

    sget-object v2, Lz6/e$a;->a:Lz6/e$a;

    invoke-direct {p4, p0, v0, v2, p3}, Lk6/o;-><init>(Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V

    const-string p0, "create(kotlinTypeRefiner…= a && y == b }\n        }"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2, p3, v3}, Lk6/o;->m(Li5/a;Li5/a;Li5/e;Z)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    sget-object v0, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne p0, v0, :cond_e0

    invoke-virtual {p4, p2, p1, p3, v3}, Lk6/o;->m(Li5/a;Li5/a;Li5/e;Z)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    if-ne p0, v0, :cond_e0

    :goto_de
    move p0, v3

    goto :goto_ff

    :cond_e0
    :goto_e0
    move p0, v1

    goto :goto_ff

    :cond_e2
    instance-of p0, p1, Li5/h0;

    if-eqz p0, :cond_fb

    instance-of p0, p2, Li5/h0;

    if-eqz p0, :cond_fb

    check-cast p1, Li5/h0;

    invoke-interface {p1}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    check-cast p2, Li5/h0;

    invoke-interface {p2}, Li5/h0;->e()Lh6/c;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_ff

    :cond_fb
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_ff
    return p0
.end method

.method public final b(Li5/a1;Li5/a1;ZLkotlin/jvm/functions/Function2;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/a1;",
            "Li5/a1;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Li5/l;",
            "-",
            "Li5/l;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equivalentCallables"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    return v1

    :cond_17
    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object v0

    invoke-interface {p2}, Li5/m;->b()Li5/l;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    return v2

    :cond_27
    invoke-virtual {p0, p1, p2, p4, p3}, Lk6/g;->c(Li5/l;Li5/l;Lkotlin/jvm/functions/Function2;Z)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    invoke-interface {p1}, Li5/a1;->getIndex()I

    move-result p0

    invoke-interface {p2}, Li5/a1;->getIndex()I

    move-result p1

    if-ne p0, p1, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1
.end method

.method public final c(Li5/l;Li5/l;Lkotlin/jvm/functions/Function2;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            "Li5/l;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Li5/l;",
            "-",
            "Li5/l;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object p1

    invoke-interface {p2}, Li5/l;->b()Li5/l;

    move-result-object p2

    instance-of v0, p1, Li5/b;

    if-nez v0, :cond_17

    instance-of v0, p2, Li5/b;

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p4, p3}, Lk6/g;->a(Li5/l;Li5/l;ZZ)Z

    move-result p0

    goto :goto_21

    :cond_17
    :goto_17
    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_21
    return p0
.end method

.method public final d(Li5/a;)Li5/v0;
    .registers 4

    :goto_0
    instance-of p0, p1, Li5/b;

    if-eqz p0, :cond_25

    move-object p0, p1

    check-cast p0, Li5/b;

    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    sget-object v1, Li5/b$a;->b:Li5/b$a;

    if-eq v0, v1, :cond_10

    goto :goto_25

    :cond_10
    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "overriddenDescriptors"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->Y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Li5/b;

    if-eqz p1, :cond_23

    goto :goto_0

    :cond_23
    const/4 p0, 0x0

    return-object p0

    :cond_25
    :goto_25
    invoke-interface {p1}, Li5/o;->getSource()Li5/v0;

    move-result-object p0

    return-object p0
.end method

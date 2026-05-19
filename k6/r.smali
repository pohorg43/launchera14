.class public final Lk6/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz6/b;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly6/j1;",
            "Ly6/j1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lz6/d$a;

.field public final c:Lz6/f;

.field public final d:Lz6/e;

.field public final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ly6/l0;",
            "Ly6/l0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ly6/j1;",
            "+",
            "Ly6/j1;",
            ">;",
            "Lz6/d$a;",
            "Lz6/f;",
            "Lz6/e;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ly6/l0;",
            "-",
            "Ly6/l0;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/r;->a:Ljava/util/Map;

    iput-object p2, p0, Lk6/r;->b:Lz6/d$a;

    iput-object p3, p0, Lk6/r;->c:Lz6/f;

    iput-object p4, p0, Lk6/r;->d:Lz6/e;

    iput-object p5, p0, Lk6/r;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public A(Lc7/i;I)Lc7/m;
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->n(Lc7/i;I)Lc7/m;

    move-result-object p0

    return-object p0
.end method

.method public B(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->M(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public C(Lc7/e;)Lc7/k;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->Z(Lc7/e;)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public D(Lc7/k;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object p0

    invoke-static {p0}, Lz6/b$a;->L(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public E(Lc7/i;Z)Lc7/i;
    .registers 3

    invoke-static {p0, p1, p2}, Lz6/b$a;->i0(Lz6/b;Lc7/i;Z)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public F(Lc7/k;)Lc7/l;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->c(Lc7/k;)Lc7/l;

    move-result-object p0

    return-object p0
.end method

.method public G(Lc7/k;)Lc7/k;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->e(Lc7/k;)Lc7/e;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-static {p0}, Lz6/b$a;->Z(Lc7/e;)Lc7/k;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    move-object p1, p0

    :cond_13
    :goto_13
    return-object p1
.end method

.method public H(Lc7/k;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object p0

    invoke-static {p0}, Lz6/b$a;->G(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public I(Lc7/i;)I
    .registers 2

    invoke-static {p1}, Lz6/b$a;->b(Lc7/i;)I

    move-result p0

    return p0
.end method

.method public J(Lc7/i;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {p0}, Lz6/b$a;->f(Lc7/g;)Lc7/f;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public K(Lc7/d;)Lc7/c;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->f0(Lc7/d;)Lc7/c;

    move-result-object p0

    return-object p0
.end method

.method public L(Lc7/d;)Z
    .registers 2

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ll6/a;

    return p0
.end method

.method public M(Lc7/k;Lc7/k;)Z
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->E(Lc7/k;Lc7/k;)Z

    move-result p0

    return p0
.end method

.method public N(Lc7/k;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->U(Lc7/k;)Z

    move-result p0

    return p0
.end method

.method public O(Lc7/n;)Lc7/o;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->x(Lc7/n;)Lc7/o;

    move-result-object p0

    return-object p0
.end method

.method public P(Lc7/i;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->P(Lc7/i;)Z

    move-result p0

    return p0
.end method

.method public Q(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->G(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public R(Lc7/i;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->J(Lc7/i;)Z

    move-result p0

    return p0
.end method

.method public S(Lc7/l;)I
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lc7/k;

    if-eqz p0, :cond_10

    check-cast p1, Lc7/i;

    invoke-static {p1}, Lz6/b$a;->b(Lc7/i;)I

    move-result p0

    goto :goto_1a

    :cond_10
    instance-of p0, p1, Lc7/a;

    if-eqz p0, :cond_1b

    check-cast p1, Lc7/a;

    invoke-virtual {p1}, Lc7/a;->size()I

    move-result p0

    :goto_1a
    return p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type argument list type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public T(Lc7/k;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->Q(Lc7/k;)Z

    move-result p0

    return p0
.end method

.method public U(Lc7/i;)Lc7/m;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->j(Lc7/i;)Lc7/m;

    move-result-object p0

    return-object p0
.end method

.method public V(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->I(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public W(Lc7/k;)Ly6/i1$b;
    .registers 2

    invoke-static {p0, p1}, Lz6/b$a;->d0(Lz6/b;Lc7/k;)Ly6/i1$b;

    move-result-object p0

    return-object p0
.end method

.method public X(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->H(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public Y(Lc7/n;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/n;",
            ")",
            "Ljava/util/Collection<",
            "Lc7/i;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lz6/b$a;->e0(Lc7/n;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public Z(Ljava/util/List;)Lc7/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lc7/i;",
            ">;)",
            "Lc7/i;"
        }
    .end annotation

    const-string p0, "types"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/c;->a(Ljava/util/List;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public a(Lc7/k;Z)Lc7/k;
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->j0(Lc7/k;Z)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public a0(Lc7/o;)Lc7/i;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->u(Lc7/o;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public b(Lc7/k;)Lc7/d;
    .registers 2

    invoke-static {p0, p1}, Lz6/b$a;->d(Lz6/b;Lc7/k;)Lc7/d;

    move-result-object p0

    return-object p0
.end method

.method public b0(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->O(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public c(Lc7/g;)Lc7/k;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->h0(Lc7/g;)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public c0(Lc7/k;Lc7/k;)Lc7/i;
    .registers 3

    invoke-static {p0, p1, p2}, Lz6/b$a;->m(Lz6/b;Lc7/k;Lc7/k;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public d(Lc7/k;)Lc7/n;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object p0

    return-object p0
.end method

.method public d0(Lc7/c;)Lc7/m;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->c0(Lc7/c;)Lc7/m;

    move-result-object p0

    return-object p0
.end method

.method public e(Lc7/i;)Lc7/k;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public e0(Lc7/n;)I
    .registers 2

    invoke-static {p1}, Lz6/b$a;->a0(Lc7/n;)I

    move-result p0

    return p0
.end method

.method public f(Lc7/g;)Lc7/k;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public f0(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->K(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public g(Lc7/k;I)Lc7/m;
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-ltz p2, :cond_f

    invoke-static {p1}, Lz6/b$a;->b(Lc7/i;)I

    move-result v0

    if-ge p2, v0, :cond_f

    const/4 p0, 0x1

    :cond_f
    if-eqz p0, :cond_16

    invoke-static {p1, p2}, Lz6/b$a;->n(Lc7/i;I)Lc7/m;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public g0(Lc7/m;)Lc7/i;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->v(Lc7/m;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public h(Lc7/i;)Lc7/i;
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lz6/b$a;->j0(Lc7/k;Z)Lc7/k;

    move-result-object p0

    if-eqz p0, :cond_13

    move-object p1, p0

    :cond_13
    return-object p1
.end method

.method public h0(Lc7/m;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->S(Lc7/m;)Z

    move-result p0

    return p0
.end method

.method public i(Lc7/s;)Lc7/o;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->w(Lc7/s;)Lc7/o;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lc7/n;I)Lc7/o;
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->q(Lc7/n;I)Lc7/o;

    move-result-object p0

    return-object p0
.end method

.method public j(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->L(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public j0(Lc7/k;Lc7/n;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k;",
            "Lc7/n;",
            ")",
            "Ljava/util/List<",
            "Lc7/k;",
            ">;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "constructor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Lc7/o;Lc7/n;)Z
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->D(Lc7/o;Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public k0(Lc7/d;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->R(Lc7/d;)Z

    move-result p0

    return p0
.end method

.method public l(Lc7/k;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->T(Lc7/k;)Z

    move-result p0

    return p0
.end method

.method public l0(Lc7/l;I)Lc7/m;
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lc7/k;

    if-eqz p0, :cond_10

    check-cast p1, Lc7/i;

    invoke-static {p1, p2}, Lz6/b$a;->n(Lc7/i;I)Lc7/m;

    move-result-object p0

    goto :goto_21

    :cond_10
    instance-of p0, p1, Lc7/a;

    if-eqz p0, :cond_22

    check-cast p1, Lc7/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(index)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc7/m;

    :goto_21
    return-object p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown type argument list type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Lc7/i;)Z
    .registers 2

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lz5/i;

    return p0
.end method

.method public m0(Lc7/i;)Lc7/i;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->y(Lc7/i;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public n(Lc7/o;)Lc7/t;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->B(Lc7/o;)Lc7/t;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lc7/k;Lc7/b;)Lc7/k;
    .registers 3

    invoke-static {p1, p2}, Lz6/b$a;->k(Lc7/k;Lc7/b;)Lc7/k;

    move-result-object p0

    return-object p0
.end method

.method public o(Lc7/i;)Lc7/k;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Lz6/b$a;->h0(Lc7/g;)Lc7/k;

    move-result-object p0

    if-nez p0, :cond_18

    :cond_11
    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_18
    return-object p0
.end method

.method public o0(Lc7/n;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->F(Lc7/n;)Z

    move-result p0

    return p0
.end method

.method public p(Lc7/k;)Z
    .registers 2

    invoke-static {p1}, Lz6/b$a;->N(Lc7/k;)Z

    move-result p0

    return p0
.end method

.method public p0(Lc7/i;)Lc7/n;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lk6/r;->v(Lc7/i;)Lc7/k;

    move-result-object v0

    :cond_f
    invoke-static {v0}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc7/i;)Lc7/g;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lc7/i;)Lc7/i;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->Y(Lc7/i;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public r(Lc7/d;)Lc7/b;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->l(Lc7/d;)Lc7/b;

    move-result-object p0

    return-object p0
.end method

.method public r0(Lc7/m;)Lc7/t;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->A(Lc7/m;)Lc7/t;

    move-result-object p0

    return-object p0
.end method

.method public s(Lc7/i;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p0, p1}, Lz6/b$a;->d(Lz6/b;Lc7/k;)Lc7/d;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public s0(Lc7/k;)Lc7/e;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->e(Lc7/k;)Lc7/e;

    move-result-object p0

    return-object p0
.end method

.method public t(Lc7/i;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {p0}, Lz6/b$a;->e(Lc7/k;)Lc7/e;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public t0(Lc7/i;)Z
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lc7/k;

    if-eqz p0, :cond_13

    check-cast p1, Lc7/k;

    invoke-static {p1}, Lz6/b$a;->N(Lc7/k;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public u(Lc7/k;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k;",
            ")",
            "Ljava/util/Collection<",
            "Lc7/i;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lz6/b$a;->b0(Lz6/b;Lc7/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public u0(ZZ)Ly6/i1;
    .registers 10

    iget-object v0, p0, Lk6/r;->e:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_d

    iget-object v0, p0, Lk6/r;->c:Lz6/f;

    iget-object v1, p0, Lk6/r;->d:Lz6/e;

    invoke-static {p1, p2, p0, v1, v0}, Lz6/a;->a(ZZLz6/b;Lz6/e;Lz6/f;)Ly6/i1;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object v4, p0, Lk6/r;->d:Lz6/e;

    iget-object v5, p0, Lk6/r;->c:Lz6/f;

    new-instance v6, Lk6/r$a;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lk6/r$a;-><init>(ZZLk6/r;Lz6/e;Lz6/f;)V

    return-object v6
.end method

.method public v(Lc7/i;)Lc7/k;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object p0

    if-nez p0, :cond_18

    :cond_11
    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_18
    return-object p0
.end method

.method public w(Lc7/n;Lc7/n;)Z
    .registers 6

    const-string v0, "c1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ly6/j1;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_5d

    instance-of v0, p2, Ly6/j1;

    if-eqz v0, :cond_53

    invoke-static {p1, p2}, Lz6/b$a;->a(Lc7/n;Lc7/n;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_51

    check-cast p1, Ly6/j1;

    check-cast p2, Ly6/j1;

    iget-object v0, p0, Lk6/r;->b:Lz6/d$a;

    invoke-interface {v0, p1, p2}, Lz6/d$a;->a(Ly6/j1;Ly6/j1;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_4c

    :cond_29
    iget-object v0, p0, Lk6/r;->a:Ljava/util/Map;

    if-nez v0, :cond_2e

    goto :goto_4e

    :cond_2e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/j1;

    iget-object p0, p0, Lk6/r;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/j1;

    if-eqz v0, :cond_44

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4c

    :cond_44
    if-eqz p0, :cond_4e

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    :cond_4c
    :goto_4c
    move p0, v2

    goto :goto_4f

    :cond_4e
    :goto_4e
    move p0, v1

    :goto_4f
    if-eqz p0, :cond_52

    :cond_51
    move v1, v2

    :cond_52
    return v1

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public x(Lc7/i;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lk6/r;->v(Lc7/i;)Lc7/k;

    move-result-object v0

    invoke-static {v0}, Lz6/b$a;->N(Lc7/k;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lk6/r;->o(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-static {p0}, Lz6/b$a;->N(Lc7/k;)Z

    move-result p0

    if-eq v0, p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public y(Lc7/d;)Lc7/i;
    .registers 2

    invoke-static {p1}, Lz6/b$a;->X(Lc7/d;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public z(Lc7/i;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lk6/r;->p0(Lc7/i;)Lc7/n;

    move-result-object p0

    invoke-static {p0}, Lz6/b$a;->O(Lc7/n;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {p1}, Lz6/b$a;->P(Lc7/i;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

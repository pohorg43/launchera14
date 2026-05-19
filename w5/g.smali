.class public final Lw5/g;
.super Ly6/b0;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;
    .registers 7

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    const-string v1, "parameter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeAttr"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterUpperBoundEraser"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "erasedUpperBound"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p2, Lw5/a;

    if-nez v1, :cond_1f

    invoke-super {p0, p1, p2, p3, p4}, Ly6/b0;->a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;

    move-result-object p0

    return-object p0

    :cond_1f
    check-cast p2, Lw5/a;

    iget-boolean p0, p2, Lw5/a;->f:Z

    if-eqz p0, :cond_26

    goto :goto_2c

    :cond_26
    sget-object p0, Lw5/c;->a:Lw5/c;

    invoke-virtual {p2, p0}, Lw5/a;->g(Lw5/c;)Lw5/a;

    move-result-object p2

    :goto_2c
    iget-object p0, p2, Lw5/a;->e:Lw5/c;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p3, 0x1

    if-eqz p0, :cond_46

    if-eq p0, p3, :cond_46

    const/4 p1, 0x2

    if-ne p0, p1, :cond_40

    new-instance p0, Ly6/s1;

    invoke-direct {p0, v0, p4}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_81

    :cond_40
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_46
    invoke-interface {p1}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object p0

    iget-boolean p0, p0, Ly6/e2;->b:Z

    if-nez p0, :cond_5c

    new-instance p0, Ly6/s1;

    invoke-static {p1}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p1

    invoke-virtual {p1}, Lf5/g;->p()Ly6/s0;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_7c

    :cond_5c
    invoke-virtual {p4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string v0, "erasedUpperBound.constructor.parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p3

    if-eqz p0, :cond_78

    new-instance p0, Ly6/s1;

    sget-object p1, Ly6/e2;->e:Ly6/e2;

    invoke-direct {p0, p1, p4}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_7c

    :cond_78
    invoke-static {p1, p2}, Ly6/a2;->n(Li5/a1;Ly6/c0;)Ly6/q1;

    move-result-object p0

    :goto_7c
    const-string p1, "{\n                if (!p…          }\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_81
    return-object p0
.end method

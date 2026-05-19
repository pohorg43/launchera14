.class public final Lw5/h;
.super Ly6/t1;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRawSubstitution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawSubstitution.kt\norg/jetbrains/kotlin/load/java/lazy/types/RawSubstitution\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1549#2:96\n1620#2,3:97\n*S KotlinDebug\n*F\n+ 1 RawSubstitution.kt\norg/jetbrains/kotlin/load/java/lazy/types/RawSubstitution\n*L\n73#1:96\n73#1:97,3\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lw5/a;

.field public static final e:Lw5/a;


# instance fields
.field public final b:Lw5/g;

.field public final c:Ly6/n1;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    sget-object v0, Ly6/z1;->b:Ly6/z1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v5

    sget-object v6, Lw5/c;->c:Lw5/c;

    invoke-virtual {v5, v6}, Lw5/a;->g(Lw5/c;)Lw5/a;

    move-result-object v5

    sput-object v5, Lw5/h;->d:Lw5/a;

    invoke-static {v0, v1, v2, v3, v4}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v0

    sget-object v1, Lw5/c;->b:Lw5/c;

    invoke-virtual {v0, v1}, Lw5/a;->g(Lw5/c;)Lw5/a;

    move-result-object v0

    sput-object v0, Lw5/h;->e:Lw5/a;

    return-void
.end method

.method public constructor <init>(Ly6/n1;I)V
    .registers 5

    invoke-direct {p0}, Ly6/t1;-><init>()V

    new-instance p1, Lw5/g;

    invoke-direct {p1}, Lw5/g;-><init>()V

    iput-object p1, p0, Lw5/h;->b:Lw5/g;

    new-instance p2, Ly6/n1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Ly6/n1;-><init>(Ly6/b0;Ly6/m1;I)V

    iput-object p2, p0, Lw5/h;->c:Ly6/n1;

    return-void
.end method


# virtual methods
.method public e(Ly6/l0;)Ly6/q1;
    .registers 12

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/s1;

    new-instance v9, Lw5/a;

    sget-object v2, Ly6/z1;->b:Ly6/z1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lw5/a;-><init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)V

    invoke-virtual {p0, p1, v9}, Lw5/h;->i(Ly6/l0;Lw5/a;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, p0}, Ly6/s1;-><init>(Ly6/l0;)V

    return-object v0
.end method

.method public final h(Ly6/s0;Li5/e;Lw5/a;)Lh4/j;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/s0;",
            "Li5/e;",
            "Lw5/a;",
            ")",
            "Lh4/j<",
            "Ly6/s0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lh4/j;

    invoke-direct {p2, p1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_16
    invoke-static {p1}, Lf5/g;->A(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly6/q1;

    new-instance v0, Ly6/s1;

    invoke-interface {p2}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    invoke-interface {p2}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p2

    const-string v2, "componentTypeProjection.type"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lw5/h;->i(Ly6/l0;Lw5/a;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v2

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-virtual {p1}, Ly6/l0;->G0()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v2 .. v7}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lh4/j;

    invoke-direct {p2, p0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_5c
    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object p0, La7/i;->P:La7/i;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p0, p2}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lh4/j;

    invoke-direct {p2, p0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_7d
    invoke-interface {p2, p0}, Li5/e;->Q(Ly6/t1;)Lr6/i;

    move-result-object v4

    const-string v0, "declaration.getMemberScope(this)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v0

    invoke-interface {p2}, Li5/h;->h()Ly6/j1;

    move-result-object v1

    const-string v2, "declaration.typeConstructor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Li5/h;->h()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string v3, "declaration.typeConstructor.parameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    iget-object v6, p0, Lw5/h;->b:Lw5/g;

    const-string v7, "parameter"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lw5/h;->c:Ly6/n1;

    invoke-virtual {v7, v5, p3}, Ly6/n1;->b(Li5/a1;Ly6/c0;)Ly6/l0;

    move-result-object v8

    invoke-virtual {v6, v5, p3, v7, v8}, Ly6/b0;->a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_d0
    invoke-virtual {p1}, Ly6/l0;->G0()Z

    move-result v5

    new-instance v6, Lw5/h$a;

    invoke-direct {v6, p2, p0, p1, p3}, Lw5/h$a;-><init>(Li5/e;Lw5/h;Ly6/s0;Lw5/a;)V

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Ly6/m0;->j(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Lh4/j;

    invoke-direct {p2, p0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final i(Ly6/l0;Lw5/a;)Ly6/l0;
    .registers 6

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/a1;

    if-eqz v1, :cond_1e

    iget-object p1, p0, Lw5/h;->c:Ly6/n1;

    check-cast v0, Li5/a1;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lw5/a;->f(Z)Lw5/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ly6/n1;->b(Li5/a1;Ly6/c0;)Ly6/l0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lw5/h;->i(Ly6/l0;Lw5/a;)Ly6/l0;

    move-result-object p0

    goto :goto_71

    :cond_1e
    instance-of p2, v0, Li5/e;

    if-eqz p2, :cond_9a

    invoke-static {p1}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object p2

    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p2

    invoke-interface {p2}, Ly6/j1;->e()Li5/h;

    move-result-object p2

    instance-of v1, p2, Li5/e;

    if-eqz v1, :cond_72

    invoke-static {p1}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v1

    check-cast v0, Li5/e;

    sget-object v2, Lw5/h;->d:Lw5/a;

    invoke-virtual {p0, v1, v0, v2}, Lw5/h;->h(Ly6/s0;Li5/e;Lw5/a;)Lh4/j;

    move-result-object v0

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Ly6/s0;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object p1

    check-cast p2, Li5/e;

    sget-object v2, Lw5/h;->e:Lw5/a;

    invoke-virtual {p0, p1, p2, v2}, Lw5/h;->h(Ly6/s0;Li5/e;Lw5/a;)Lh4/j;

    move-result-object p0

    iget-object p1, p0, Lh4/j;->a:Ljava/lang/Object;

    check-cast p1, Ly6/s0;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez v0, :cond_6c

    if-eqz p0, :cond_67

    goto :goto_6c

    :cond_67
    invoke-static {v1, p1}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    goto :goto_71

    :cond_6c
    :goto_6c
    new-instance p0, Lw5/i;

    invoke-direct {p0, v1, p1}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    :goto_71
    return-object p0

    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "For some reason declaration for upper bound is not a class but \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" while for lower it\'s \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected declaration kind: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

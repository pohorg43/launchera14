.class public final Ly6/m0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/m0$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinTypeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypeFactory.kt\norg/jetbrains/kotlin/types/KotlinTypeFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ly6/m0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/m0;

    invoke-direct {v0}, Ly6/m0;-><init>()V

    sput-object v0, Ly6/m0;->a:Ly6/m0;

    sget-object v0, Ly6/m0$a;->a:Ly6/m0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ly6/m0;Ly6/j1;Lz6/f;Ljava/util/List;)Ly6/m0$b;
    .registers 5

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p2, p0}, Lz6/f;->f(Li5/l;)Li5/h;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_31

    :cond_e
    instance-of v0, p0, Li5/z0;

    if-eqz v0, :cond_1e

    new-instance p2, Ly6/m0$b;

    check-cast p0, Li5/z0;

    invoke-static {p0, p3}, Ly6/m0;->b(Li5/z0;Ljava/util/List;)Ly6/s0;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ly6/m0$b;-><init>(Ly6/s0;Ly6/j1;)V

    goto :goto_30

    :cond_1e
    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0, p2}, Ly6/j1;->a(Lz6/f;)Ly6/j1;

    move-result-object p0

    const-string p2, "descriptor.typeConstruct…refine(kotlinTypeRefiner)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ly6/m0$b;

    invoke-direct {p2, p1, p0}, Ly6/m0$b;-><init>(Ly6/s0;Ly6/j1;)V

    :goto_30
    move-object p1, p2

    :cond_31
    :goto_31
    return-object p1
.end method

.method public static final b(Li5/z0;Ljava/util/List;)Ly6/s0;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/z0;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ly6/b1;

    sget-object v2, Ly6/d1$a;->a:Ly6/d1$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ly6/b1;-><init>(Ly6/d1;Z)V

    const-string v2, "typeAliasDescriptor"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a1;

    invoke-interface {v3}, Li5/a1;->a()Li5/a1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4a
    invoke-static {v2, p1}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    new-instance v0, Ly6/c1;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Ly6/c1;-><init>(Ly6/c1;Li5/z0;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ly6/g1;->c:Ly6/g1;

    const-string p0, "typeAliasExpansion"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "attributes"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ly6/b1;->d(Ly6/c1;Ly6/g1;ZIZ)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ly6/s0;Ly6/s0;)Ly6/d2;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    new-instance v0, Ly6/f0;

    invoke-direct {v0, p0, p1}, Ly6/f0;-><init>(Ly6/s0;Ly6/s0;)V

    return-object v0
.end method

.method public static final d(Ly6/g1;Lm6/n;Z)Ly6/s0;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "attributes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li4/y;->a:Li4/y;

    sget-object v1, La7/f;->c:La7/f;

    const-string v2, "unknown integer literal type"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, La7/j;->a(La7/f;Z[Ljava/lang/String;)La7/e;

    move-result-object v1

    invoke-static {p0, p1, v0, p2, v1}, Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/g1;",
            "Li5/e;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "attributes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object v2

    const-string p1, "descriptor.typeConstructor"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;)Ly6/s0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/g1;",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;Z",
            "Lz6/f;",
            ")",
            "Ly6/s0;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "attributes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    if-nez p3, :cond_34

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Li5/h;->m()Ly6/s0;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_34
    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/a1;

    if-eqz v1, :cond_48

    check-cast v0, Li5/a1;

    invoke-interface {v0}, Li5/h;->m()Ly6/s0;

    move-result-object p4

    invoke-virtual {p4}, Ly6/l0;->l()Lr6/i;

    move-result-object p4

    goto/16 :goto_db

    :cond_48
    instance-of v1, v0, Li5/e;

    if-eqz v1, :cond_be

    if-nez p4, :cond_57

    invoke-static {v0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object p4

    invoke-static {p4}, Lo6/c;->j(Li5/e0;)Lz6/f;

    sget-object p4, Lz6/f$a;->a:Lz6/f$a;

    :cond_57
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "kotlinTypeRefiner"

    const-string v4, "<this>"

    if-eqz v1, :cond_89

    check-cast v0, Li5/e;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ll5/v;

    if-eqz v1, :cond_77

    move-object v2, v0

    check-cast v2, Ll5/v;

    :cond_77
    if-eqz v2, :cond_7f

    invoke-virtual {v2, p4}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p4

    if-nez p4, :cond_db

    :cond_7f
    invoke-interface {v0}, Li5/e;->U()Lr6/i;

    move-result-object p4

    const-string v0, "this.unsubstitutedMemberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_db

    :cond_89
    check-cast v0, Li5/e;

    sget-object v1, Ly6/l1;->b:Ly6/l1$a;

    invoke-virtual {v1, p1, p2}, Ly6/l1$a;->b(Ly6/j1;Ljava/util/List;)Ly6/t1;

    move-result-object v1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeSubstitution"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v0, Ll5/v;

    if-eqz v3, :cond_ac

    move-object v2, v0

    check-cast v2, Ll5/v;

    :cond_ac
    if-eqz v2, :cond_b4

    invoke-virtual {v2, v1, p4}, Ll5/v;->z(Ly6/t1;Lz6/f;)Lr6/i;

    move-result-object p4

    if-nez p4, :cond_db

    :cond_b4
    invoke-interface {v0, v1}, Li5/e;->Q(Ly6/t1;)Lr6/i;

    move-result-object p4

    const-string v0, "this.getMemberScope(\n   …ubstitution\n            )"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_db

    :cond_be
    instance-of p4, v0, Li5/z0;

    if-eqz p4, :cond_dd

    sget-object p4, La7/f;->e:La7/f;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast v0, Li5/z0;

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    iget-object v0, v0, Lh6/f;->a:Ljava/lang/String;

    const-string v4, "descriptor.name.toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v2, v3

    invoke-static {p4, v1, v2}, La7/j;->a(La7/f;Z[Ljava/lang/String;)La7/e;

    move-result-object p4

    :cond_db
    :goto_db
    move-object v4, p4

    goto :goto_e9

    :cond_dd
    instance-of p4, p1, Ly6/j0;

    if-eqz p4, :cond_f7

    move-object p4, p1

    check-cast p4, Ly6/j0;

    invoke-virtual {p4}, Ly6/j0;->g()Lr6/i;

    move-result-object p4

    goto :goto_db

    :goto_e9
    new-instance v5, Ly6/m0$c;

    invoke-direct {v5, p1, p2, p0, p3}, Ly6/m0$c;-><init>(Ly6/j1;Ljava/util/List;Ly6/g1;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Ly6/m0;->j(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    return-object p0

    :cond_f7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported classifier: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ly6/s0;Ly6/g1;Ly6/j1;Ljava/util/List;ZI)Ly6/s0;
    .registers 12

    and-int/lit8 p1, p5, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p1

    move-object v0, p1

    goto :goto_c

    :cond_b
    move-object v0, p3

    :goto_c
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p2

    :cond_14
    move-object v1, p2

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p3

    :cond_1d
    move-object v2, p3

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p4

    :cond_26
    move v3, p4

    const-string p1, "baseType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "annotations"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "constructor"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;
    .registers 6

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Ly6/m0;->f(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/g1;",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;Z",
            "Lr6/i;",
            ")",
            "Ly6/s0;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "attributes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/t0;

    new-instance v7, Ly6/m0$d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ly6/m0$d;-><init>(Ly6/j1;Ljava/util/List;Ly6/g1;ZLr6/i;)V

    move-object v1, v0

    move v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Ly6/t0;-><init>(Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_35

    :cond_2f
    new-instance p1, Ly6/u0;

    invoke-direct {p1, v0, p0}, Ly6/u0;-><init>(Ly6/s0;Ly6/g1;)V

    move-object v0, p1

    :goto_35
    return-object v0
.end method

.method public static final j(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/g1;",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;Z",
            "Lr6/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lz6/f;",
            "+",
            "Ly6/s0;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "attributes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/t0;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ly6/t0;-><init>(Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_31

    :cond_2b
    new-instance p1, Ly6/u0;

    invoke-direct {p1, v0, p0}, Ly6/u0;-><init>(Ly6/s0;Ly6/g1;)V

    move-object v0, p1

    :goto_31
    return-object v0
.end method

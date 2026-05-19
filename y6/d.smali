.class public final Ly6/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractNullabilityChecker\n+ 2 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,835:1\n132#2,16:836\n148#2,13:853\n132#2,16:866\n148#2,13:883\n1#3:852\n1#3:882\n*S KotlinDebug\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractNullabilityChecker\n*L\n779#1:836,16\n779#1:853,13\n793#1:866,16\n793#1:883,13\n779#1:852\n793#1:882\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/i1;Lc7/k;Ly6/i1$b;)Z
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypesPolicy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/i1;->d:Lc7/p;

    invoke-interface {v0, p1}, Lc7/p;->H(Lc7/k;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    invoke-interface {v0, p1}, Lc7/p;->p(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_1f
    invoke-interface {v0, p1}, Lc7/p;->t(Lc7/i;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_25
    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    if-eqz v1, :cond_2c

    goto/16 :goto_ac

    :cond_2c
    invoke-virtual {p0}, Ly6/i1;->d()V

    iget-object v1, p0, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_d7

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-gt v5, v6, :cond_b2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc7/k;

    const-string v6, "current"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v0, v5}, Lc7/p;->p(Lc7/k;)Z

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    goto :goto_66

    :cond_65
    move-object v6, p2

    :goto_66
    sget-object v7, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_70

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    if-nez v6, :cond_74

    goto :goto_3c

    :cond_74
    iget-object v7, p0, Ly6/i1;->d:Lc7/p;

    invoke-interface {v7, v5}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v5

    invoke-interface {v7, v5}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc7/i;

    invoke-virtual {v6, p0, v7}, Ly6/i1$b;->a(Ly6/i1;Lc7/i;)Lc7/k;

    move-result-object v7

    invoke-interface {v0, v7}, Lc7/p;->H(Lc7/k;)Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v0, v7}, Lc7/p;->p(Lc7/k;)Z

    move-result v8

    if-eqz v8, :cond_a4

    :cond_9e
    invoke-interface {v0, v7}, Lc7/p;->t(Lc7/i;)Z

    move-result v8

    if-eqz v8, :cond_a6

    :cond_a4
    move v8, v3

    goto :goto_a7

    :cond_a6
    move v8, v2

    :goto_a7
    if-eqz v8, :cond_ae

    invoke-virtual {p0}, Ly6/i1;->b()V

    :goto_ac
    move v2, v3

    goto :goto_da

    :cond_ae
    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_b2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Too many supertypes for type: "

    const-string v0, ". Supertypes = "

    invoke-static {p2, p1, v0}, Ly6/c;->a(Ljava/lang/String;Lc7/k;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    invoke-static/range {v4 .. v11}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d7
    invoke-virtual {p0}, Ly6/i1;->b()V

    :goto_da
    return v2
.end method

.method public static final b(Ly6/i1;Lc7/k;Lc7/n;)Z
    .registers 6

    iget-object v0, p0, Ly6/i1;->d:Lc7/p;

    invoke-interface {v0, p1}, Lc7/p;->z(Lc7/i;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-interface {v0, p1}, Lc7/p;->p(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    iget-boolean p0, p0, Ly6/i1;->b:Z

    if-eqz p0, :cond_1d

    invoke-interface {v0, p1}, Lc7/p;->l(Lc7/k;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    invoke-interface {v0, p1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result p0

    return p0
.end method

.class public final La6/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmethodSignatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 methodSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/MethodSignatureMappingKt\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n*L\n1#1,184:1\n13#2:185\n*S KotlinDebug\n*F\n+ 1 methodSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/MethodSignatureMappingKt\n*L\n65#1:185\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/StringBuilder;Ly6/l0;)V
    .registers 2

    invoke-static {p1}, La6/x;->d(Ly6/l0;)La6/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Li5/x;ZZI)Ljava/lang/String;
    .registers 7

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move p1, v1

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move p2, v1

    :cond_b
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2e

    instance-of p2, p0, Li5/k;

    if-eqz p2, :cond_1e

    const-string p2, "<init>"

    goto :goto_2b

    :cond_1e
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p2

    invoke-virtual {p2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2b
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string p2, "("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object p2

    if-eqz p2, :cond_45

    invoke-interface {p2}, Li5/d1;->getType()Ly6/l0;

    move-result-object p2

    const-string v0, "it.type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, La6/x;->a(Ljava/lang/StringBuilder;Ly6/l0;)V

    :cond_45
    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    const-string v2, "parameter.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, La6/x;->a(Ljava/lang/StringBuilder;Ly6/l0;)V

    goto :goto_4d

    :cond_66
    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a9

    const-string p1, "descriptor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p0, Li5/k;

    if-eqz p1, :cond_77

    goto :goto_97

    :cond_77
    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lf5/g;->Q(Ly6/l0;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p1

    if-nez p1, :cond_96

    instance-of p1, p0, Li5/p0;

    if-nez p1, :cond_96

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    if-eqz v1, :cond_9f

    const-string p0, "V"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    :cond_9f
    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p0}, La6/x;->a(Ljava/lang/StringBuilder;Ly6/l0;)V

    :cond_a9
    :goto_a9
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Li5/a;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/a0;->a:La6/a0;

    invoke-static {p0}, Lk6/i;->t(Li5/l;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    return-object v2

    :cond_f
    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object v1

    instance-of v3, v1, Li5/e;

    if-eqz v3, :cond_1a

    check-cast v1, Li5/e;

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    if-nez v1, :cond_1e

    return-object v2

    :cond_1e
    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    iget-boolean v3, v3, Lh6/f;->b:Z

    if-eqz v3, :cond_27

    return-object v2

    :cond_27
    invoke-interface {p0}, Li5/a;->a()Li5/a;

    move-result-object p0

    instance-of v3, p0, Li5/u0;

    if-eqz v3, :cond_32

    check-cast p0, Li5/u0;

    goto :goto_33

    :cond_32
    move-object p0, v2

    :goto_33
    if-nez p0, :cond_36

    return-object v2

    :cond_36
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v3, v3, v2}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ly6/l0;)La6/o;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/q;->a:La6/q;

    sget-object v1, La6/d0;->k:La6/d0;

    sget-object v2, La6/c0;->a:La6/c0;

    sget-object v3, Li7/c;->b:Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1, v2, v3}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La6/o;

    return-object p0
.end method

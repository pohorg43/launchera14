.class public final Lk6/b;
.super Lk6/v;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSealedClassInheritorsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SealedClassInheritorsProvider.kt\norg/jetbrains/kotlin/resolve/CliSealedClassInheritorsProvider\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n179#2,2:87\n1045#3:89\n*S KotlinDebug\n*F\n+ 1 SealedClassInheritorsProvider.kt\norg/jetbrains/kotlin/resolve/CliSealedClassInheritorsProvider\n*L\n73#1:87,2\n82#1:89\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/e;Ljava/util/LinkedHashSet;Lr6/i;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            "Ljava/util/LinkedHashSet<",
            "Li5/e;",
            ">;",
            "Lr6/i;",
            "Z)V"
        }
    .end annotation

    sget-object v0, Lr6/d;->o:Lr6/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, v1}, Lr6/l$a;->a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/l;

    instance-of v3, v2, Li5/e;

    if-eqz v3, :cond_c

    check-cast v2, Li5/e;

    invoke-interface {v2}, Li5/c0;->f0()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lq5/d;->m:Lq5/d;

    invoke-interface {p2, v2, v3}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v2

    instance-of v3, v2, Li5/e;

    if-eqz v3, :cond_3a

    check-cast v2, Li5/e;

    goto :goto_46

    :cond_3a
    instance-of v3, v2, Li5/z0;

    if-eqz v3, :cond_45

    check-cast v2, Li5/z0;

    invoke-interface {v2}, Li5/z0;->p()Li5/e;

    move-result-object v2

    goto :goto_46

    :cond_45
    move-object v2, v1

    :cond_46
    :goto_46
    if-nez v2, :cond_49

    goto :goto_c

    :cond_49
    sget v3, Lk6/i;->a:I

    invoke-interface {v2}, Li5/h;->h()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    invoke-interface {p0}, Li5/e;->a()Li5/e;

    move-result-object v5

    invoke-static {v4, v5}, Lk6/i;->u(Ly6/l0;Li5/l;)Z

    move-result v4

    if-eqz v4, :cond_57

    const/4 v3, 0x1

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    :goto_70
    if-eqz v3, :cond_75

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_75
    if-eqz p3, :cond_c

    invoke-interface {v2}, Li5/e;->R()Lr6/i;

    move-result-object v2

    const-string v3, "refinedDescriptor.unsubstitutedInnerClassesScope"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2, p3}, Lk6/b;->a(Li5/e;Ljava/util/LinkedHashSet;Lr6/i;Z)V

    goto :goto_c

    :cond_84
    return-void
.end method

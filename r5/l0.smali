.class public final Lr5/l0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "SpecialBuiltinMembers"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nspecialBuiltinMembers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 specialBuiltinMembers.kt\norg/jetbrains/kotlin/load/java/SpecialBuiltinMembers\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/b;)Ljava/lang/String;
    .registers 5

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/g;->B(Li5/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-eqz p0, :cond_70

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_70

    :cond_1b
    instance-of v0, p0, Li5/o0;

    if-eqz v0, :cond_4b

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/g;->B(Li5/l;)Z

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v2, Lr5/k;->a:Lr5/k;

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object p0

    if-nez p0, :cond_36

    goto :goto_70

    :cond_36
    sget-object v0, Lr5/j;->a:Lr5/j;

    sget-object v0, Lr5/j;->b:Ljava/util/Map;

    invoke-static {p0}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/f;

    if-eqz p0, :cond_70

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_70

    :cond_4b
    instance-of v0, p0, Li5/u0;

    if-eqz v0, :cond_70

    sget-object v0, Lr5/g;->m:Lr5/g;

    check-cast p0, Li5/u0;

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr5/m0;->j:Ljava/util/Map;

    invoke-static {p0}, La6/x;->c(Li5/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_62

    move-object p0, v1

    goto :goto_6a

    :cond_62
    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/f;

    :goto_6a
    if-eqz p0, :cond_70

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_70
    :goto_70
    return-object v1
.end method

.method public static final b(Li5/b;)Li5/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Li5/b;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr5/m0;->a:Lr5/m0$a;

    sget-object v0, Lr5/m0;->k:Ljava/util/List;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    sget-object v0, Lr5/j;->a:Lr5/j;

    sget-object v0, Lr5/j;->e:Ljava/util/Set;

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object v2

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    return-object v1

    :cond_29
    instance-of v0, p0, Li5/o0;

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    move v0, v2

    goto :goto_32

    :cond_30
    instance-of v0, p0, Li5/n0;

    :goto_32
    const/4 v3, 0x0

    if-eqz v0, :cond_3c

    sget-object v0, Lr5/l0$a;->a:Lr5/l0$a;

    invoke-static {p0, v3, v0, v2}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object v1

    goto :goto_46

    :cond_3c
    instance-of v0, p0, Li5/u0;

    if-eqz v0, :cond_46

    sget-object v0, Lr5/l0$b;->a:Lr5/l0$b;

    invoke-static {p0, v3, v0, v2}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object v1

    :cond_46
    :goto_46
    return-object v1
.end method

.method public static final c(Li5/b;)Li5/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Li5/b;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    sget-object v0, Lr5/h;->m:Lr5/h;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr5/h;->b(Lh6/f;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 p0, 0x0

    return-object p0

    :cond_1f
    const/4 v0, 0x0

    sget-object v1, Lr5/l0$c;->a:Lr5/l0$c;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Li5/e;Li5/a;)Z
    .registers 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li5/e;

    invoke-interface {p1}, Li5/e;->m()Ly6/s0;

    move-result-object p1

    const-string v0, "specialCallableDescripto…ssDescriptor).defaultType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/i;->l(Li5/e;)Li5/e;

    move-result-object p0

    :goto_22
    const/4 v0, 0x0

    if-eqz p0, :cond_166

    instance-of v1, p0, Lt5/c;

    if-nez v1, :cond_160

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15c

    const/4 v3, 0x1

    if-eqz p1, :cond_158

    new-instance v4, Lz6/r;

    invoke-direct {v4}, Lz6/r;-><init>()V

    sget-object v5, Ly6/e2;->c:Ly6/e2;

    const-string v6, "subtype"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "supertype"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "typeCheckingProcedureCallbacks"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v7, Lz6/q;

    invoke-direct {v7, v1, v2}, Lz6/q;-><init>(Ly6/l0;Lz6/q;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    :cond_5a
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14d

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz6/q;

    iget-object v8, v7, Lz6/q;->a:Ly6/l0;

    invoke-virtual {v8}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Lz6/r;->b(Ly6/j1;Ly6/j1;)Z

    move-result v10

    if-eqz v10, :cond_12b

    invoke-virtual {v8}, Ly6/l0;->G0()Z

    move-result v2

    iget-object v6, v7, Lz6/q;->b:Lz6/q;

    :goto_78
    if-eqz v6, :cond_ed

    iget-object v7, v6, Lz6/q;->a:Ly6/l0;

    invoke-virtual {v7}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v9

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_8b

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8b

    goto :goto_a8

    :cond_8b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly6/q1;

    invoke-interface {v10}, Ly6/q1;->c()Ly6/e2;

    move-result-object v10

    if-eq v10, v5, :cond_a3

    move v10, v3

    goto :goto_a4

    :cond_a3
    move v10, v0

    :goto_a4
    if-eqz v10, :cond_8f

    move v9, v3

    goto :goto_a9

    :cond_a8
    :goto_a8
    move v9, v0

    :goto_a9
    if-eqz v9, :cond_cb

    sget-object v9, Ly6/l1;->b:Ly6/l1$a;

    invoke-virtual {v9, v7}, Ly6/l1$a;->a(Ly6/l0;)Ly6/t1;

    move-result-object v9

    invoke-static {v9, v0, v3}, Ll6/d;->c(Ly6/t1;ZI)Ly6/t1;

    move-result-object v9

    invoke-virtual {v9}, Ly6/t1;->c()Ly6/x1;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v8

    const-string v9, "TypeConstructorSubstitut…uted, Variance.INVARIANT)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object v8

    iget-object v8, v8, Le7/a;->b:Ljava/lang/Object;

    check-cast v8, Ly6/l0;

    goto :goto_de

    :cond_cb
    sget-object v9, Ly6/l1;->b:Ly6/l1$a;

    invoke-virtual {v9, v7}, Ly6/l1$a;->a(Ly6/l0;)Ly6/t1;

    move-result-object v9

    invoke-virtual {v9}, Ly6/t1;->c()Ly6/x1;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v8

    const-string v9, "{\n                    Ty…ARIANT)\n                }"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_de
    if-nez v2, :cond_e9

    invoke-virtual {v7}, Ly6/l0;->G0()Z

    move-result v2

    if-eqz v2, :cond_e7

    goto :goto_e9

    :cond_e7
    move v2, v0

    goto :goto_ea

    :cond_e9
    :goto_e9
    move v2, v3

    :goto_ea
    iget-object v6, v6, Lz6/q;->b:Lz6/q;

    goto :goto_78

    :cond_ed
    invoke-virtual {v8}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lz6/r;->b(Ly6/j1;Ly6/j1;)Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-static {v8, v2}, Ly6/a2;->j(Ly6/l0;Z)Ly6/l0;

    move-result-object v2

    goto :goto_14d

    :cond_fc
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Type constructors should be equals!\nsubstitutedSuperType: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v5}, Lz6/x;->a(Ly6/j1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \n\nsupertype: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lz6/x;->a(Ly6/j1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v1}, Lz6/r;->b(Ly6/j1;Ly6/j1;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_12b
    invoke-interface {v9}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_133
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly6/l0;

    new-instance v10, Lz6/q;

    const-string v11, "immediateSupertype"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v9, v7}, Lz6/q;-><init>(Ly6/l0;Lz6/q;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_133

    :cond_14d
    :goto_14d
    if-eqz v2, :cond_150

    move v0, v3

    :cond_150
    if-eqz v0, :cond_160

    invoke-static {p0}, Lf5/g;->B(Li5/l;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_158
    invoke-static {v3}, Lz6/s;->a(I)V

    throw v2

    :cond_15c
    invoke-static {v0}, Lz6/s;->a(I)V

    throw v2

    :cond_160
    invoke-static {p0}, Lk6/i;->l(Li5/e;)Li5/e;

    move-result-object p0

    goto/16 :goto_22

    :cond_166
    return v0
.end method

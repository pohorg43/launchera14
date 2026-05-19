.class public Lw6/l;
.super Lw6/k;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedPackageMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedPackageMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedPackageMemberScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1360#2:82\n1446#2,5:83\n1747#2,3:88\n*S KotlinDebug\n*F\n+ 1 DeserializedPackageMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedPackageMemberScope\n*L\n55#1:82\n55#1:83,5\n58#1:88,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Li5/h0;

.field public final h:Ljava/lang/String;

.field public final i:Lh6/c;


# direct methods
.method public constructor <init>(Li5/h0;Lc6/l;Le6/c;Le6/a;Lw6/i;Lu6/k;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/h0;",
            "Lc6/l;",
            "Le6/c;",
            "Le6/a;",
            "Lw6/i;",
            "Lu6/k;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lh6/f;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p7

    const-string v1, "packageDescriptor"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "components"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugName"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classNames"

    move-object/from16 v5, p8

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Le6/g;

    iget-object v1, v0, Lc6/l;->g:Lc6/t;

    const-string v7, "proto.typeTable"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, Le6/g;-><init>(Lc6/t;)V

    sget-object v1, Le6/h;->b:Le6/h$a;

    iget-object v7, v0, Lc6/l;->h:Lc6/w;

    const-string v8, "proto.versionRequirementTable"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Le6/h$a;->a(Lc6/w;)Le6/h;

    move-result-object v11

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Lu6/k;->a(Li5/h0;Le6/c;Le6/g;Le6/h;Le6/a;Lw6/i;)Lu6/m;

    move-result-object v1

    iget-object v2, v0, Lc6/l;->d:Ljava/util/List;

    const-string v3, "proto.functionList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lc6/l;->e:Ljava/util/List;

    const-string v4, "proto.propertyList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lc6/l;->f:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lw6/k;-><init>(Lu6/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    iput-object v14, v6, Lw6/l;->g:Li5/h0;

    iput-object v15, v6, Lw6/l;->h:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Li5/h0;->e()Lh6/c;

    move-result-object v0

    iput-object v0, v6, Lw6/l;->i:Lh6/c;

    return-void
.end method


# virtual methods
.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 6

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq5/d;->m:Lq5/d;

    invoke-virtual {p0, p1, p2, v0}, Lw6/k;->i(Lr6/d;Lkotlin/jvm/functions/Function1;Lq5/b;)Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lw6/k;->b:Lu6/m;

    iget-object p2, p2, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->k:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/b;

    iget-object v2, p0, Lw6/l;->i:Lh6/c;

    invoke-interface {v1, v2}, Lk5/b;->c(Lh6/c;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1f

    :cond_35
    invoke-static {p1, v0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->i:Lq5/c;

    iget-object v1, p0, Lw6/l;->g:Li5/h0;

    invoke-static {v0, p2, v1, p1}, Lp5/a;->b(Lq5/c;Lq5/b;Li5/h0;Lh6/f;)V

    invoke-super {p0, p1, p2}, Lw6/k;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(Lh6/f;)Lh6/b;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh6/b;

    iget-object p0, p0, Lw6/l;->i:Lh6/c;

    invoke-direct {v0, p0, p1}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public n()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public o()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public p()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method

.method public q(Lh6/f;)Z
    .registers 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/k;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_46

    iget-object v0, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->k:Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_29

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_27
    move p0, v2

    goto :goto_42

    :cond_29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/b;

    iget-object v4, p0, Lw6/l;->i:Lh6/c;

    invoke-interface {v3, v4, p1}, Lk5/b;->b(Lh6/c;Lh6/f;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move p0, v1

    :goto_42
    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :cond_46
    :goto_46
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lw6/l;->h:Ljava/lang/String;

    return-object p0
.end method

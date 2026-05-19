.class public final Lv5/v;
.super Ll5/c;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaTypeParameterDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaTypeParameterDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1549#2:76\n1620#2,3:77\n*S KotlinDebug\n*F\n+ 1 LazyJavaTypeParameterDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor\n*L\n62#1:76\n62#1:77,3\n*E\n"
    }
.end annotation


# instance fields
.field public final k:Lu5/g;

.field public final l:Ly5/y;


# direct methods
.method public constructor <init>(Lu5/g;Ly5/y;ILi5/l;)V
    .registers 16

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v2, v0, Lu5/c;->a:Lx6/m;

    new-instance v4, Lu5/e;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V

    invoke-interface {p2}, Ly5/t;->getName()Lh6/f;

    move-result-object v5

    sget-object v6, Ly6/e2;->c:Ly6/e2;

    sget-object v9, Li5/v0;->a:Li5/v0;

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v10, v0, Lu5/c;->m:Li5/y0;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p4

    move v8, p3

    invoke-direct/range {v1 .. v10}, Ll5/c;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V

    iput-object p1, p0, Lv5/v;->k:Lu5/g;

    iput-object p2, p0, Lv5/v;->l:Ly5/y;

    return-void
.end method


# virtual methods
.method public D0(Ly6/l0;)V
    .registers 2

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public E0()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv5/v;->l:Ly5/y;

    invoke-interface {v0}, Ly5/y;->getUpperBounds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lv5/v;->k:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->o:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    invoke-virtual {v0}, Lf5/g;->f()Ly6/s0;

    move-result-object v0

    const-string v1, "c.module.builtIns.anyType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/v;->k:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->q()Ly6/s0;

    move-result-object p0

    const-string v1, "c.module.builtIns.nullableAnyType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_6b

    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/j;

    iget-object v3, p0, Lv5/v;->k:Lu5/g;

    iget-object v3, v3, Lu5/g;->e:Lw5/e;

    sget-object v4, Ly6/z1;->b:Ly6/z1;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v4, v6, v6, p0, v5}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_6a
    move-object p0, v1

    :goto_6b
    return-object p0
.end method

.method public z0(Ljava/util/List;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;)",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "bounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v7, Lv5/v;->k:Lu5/g;

    iget-object v2, v8, Lu5/g;->a:Lu5/c;

    iget-object v15, v2, Lu5/c;->r:Lz5/n;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "typeParameter"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ly6/l0;

    sget-object v0, Lz5/r;->a:Lz5/r;

    invoke-static {v13, v0}, Ld7/c;->b(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_47

    move-object v3, v13

    move-object v0, v14

    move-object v1, v15

    goto :goto_6a

    :cond_47
    new-instance v10, Lz5/t;

    const/4 v2, 0x0

    sget-object v4, Lr5/c;->f:Lr5/c;

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lz5/t;-><init>(Lj5/a;ZLu5/g;Lr5/c;ZI)V

    sget-object v12, Li4/y;->a:Li4/y;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc

    move-object v9, v15

    move-object v11, v13

    move-object v3, v13

    move-object v13, v0

    move-object v0, v14

    move v14, v1

    move-object v1, v15

    move v15, v2

    invoke-static/range {v9 .. v15}, Lz5/n;->d(Lz5/n;Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;ZI)Ly6/l0;

    move-result-object v13

    if-nez v13, :cond_6b

    :goto_6a
    move-object v13, v3

    :cond_6b
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v1

    goto :goto_2e

    :cond_71
    move-object v0, v14

    return-object v0
.end method

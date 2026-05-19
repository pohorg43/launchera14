.class public final Lw6/p;
.super Ll5/c;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedTypeParameterDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedTypeParameterDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1549#2:59\n1620#2,3:60\n*S KotlinDebug\n*F\n+ 1 DeserializedTypeParameterDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor\n*L\n51#1:59\n51#1:60,3\n*E\n"
    }
.end annotation


# instance fields
.field public final k:Lu6/m;

.field public final l:Lc6/s;

.field public final m:Lw6/a;


# direct methods
.method public constructor <init>(Lu6/m;Lc6/s;I)V
    .registers 15

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lu6/m;->a:Lu6/k;

    iget-object v2, v0, Lu6/k;->a:Lx6/m;

    iget-object v3, p1, Lu6/m;->c:Li5/l;

    sget v0, Lj5/h;->I:I

    sget-object v4, Lj5/h$a;->b:Lj5/h;

    iget-object v0, p1, Lu6/m;->b:Le6/c;

    iget v1, p2, Lc6/s;->e:I

    invoke-static {v0, v1}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v5

    iget-object v0, p2, Lc6/s;->g:Lc6/s$c;

    const-string v1, "proto.variance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "variance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    goto :goto_42

    :cond_37
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_3d
    sget-object v0, Ly6/e2;->e:Ly6/e2;

    goto :goto_42

    :cond_40
    sget-object v0, Ly6/e2;->d:Ly6/e2;

    :goto_42
    move-object v6, v0

    iget-boolean v7, p2, Lc6/s;->f:Z

    sget-object v9, Li5/v0;->a:Li5/v0;

    sget-object v10, Li5/y0$a;->a:Li5/y0$a;

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v10}, Ll5/c;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V

    iput-object p1, p0, Lw6/p;->k:Lu6/m;

    iput-object p2, p0, Lw6/p;->l:Lc6/s;

    new-instance p2, Lw6/a;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/p$a;

    invoke-direct {p3, p0}, Lw6/p$a;-><init>(Lw6/p;)V

    invoke-direct {p2, p1, p3}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lw6/p;->m:Lw6/a;

    return-void
.end method


# virtual methods
.method public D0(Ly6/l0;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There should be no cycles for deserialized type parameters, but found for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E0()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw6/p;->l:Lc6/s;

    iget-object v1, p0, Lw6/p;->k:Lu6/m;

    iget-object v1, v1, Lu6/m;->d:Le6/g;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    const/16 v3, 0xa

    if-nez v2, :cond_51

    iget-object v0, v0, Lc6/s;->i:Ljava/util/List;

    const-string v2, "upperBoundIdList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Le6/g;->a(I)Lc6/q;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_51
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->n()Ly6/s0;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_64
    iget-object p0, p0, Lw6/p;->k:Lu6/m;

    iget-object p0, p0, Lu6/m;->h:Lu6/f0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/q;

    invoke-virtual {p0, v2}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_89
    return-object v0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Lw6/p;->m:Lw6/a;

    return-object p0
.end method

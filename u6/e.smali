.class public final Lu6/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/e$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotationDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/AnnotationDeserializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n121#1:147\n121#1:148\n121#1:149\n121#1:150\n1194#2,2:128\n1222#2,4:130\n1603#2,9:134\n1855#2:143\n1856#2:145\n1612#2:146\n1549#2:151\n1620#2,3:152\n1726#2,3:155\n1#3:144\n*S KotlinDebug\n*F\n+ 1 AnnotationDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/AnnotationDeserializer\n*L\n74#1:147\n76#1:148\n77#1:149\n78#1:150\n47#1:128,2\n47#1:130,4\n48#1:134,9\n48#1:143\n48#1:145\n48#1:146\n87#1:151\n87#1:152,3\n112#1:155,3\n48#1:144\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Li5/e0;

.field public final b:Li5/g0;


# direct methods
.method public constructor <init>(Li5/e0;Li5/g0;)V
    .registers 4

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/e;->a:Li5/e0;

    iput-object p2, p0, Lu6/e;->b:Li5/g0;

    return-void
.end method


# virtual methods
.method public final a(Lc6/a;Le6/c;)Lj5/c;
    .registers 13

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lc6/a;->c:I

    invoke-static {p2, v0}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object v0

    iget-object v1, p0, Lu6/e;->a:Li5/e0;

    iget-object v2, p0, Lu6/e;->b:Li5/g0;

    invoke-static {v1, v0, v2}, Li5/w;->c(Li5/e0;Lh6/b;Li5/g0;)Li5/e;

    move-result-object v0

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    iget-object v2, p1, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_fd

    invoke-static {v0}, La7/j;->f(Li5/l;)Z

    move-result v2

    if-nez v2, :cond_fd

    invoke-static {v0}, Lk6/i;->m(Li5/l;)Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {v0}, Li5/e;->i()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->Y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/d;

    if-eqz v2, :cond_fd

    invoke-interface {v2}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Li4/j0;->b(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_5a

    move v2, v3

    :cond_5a
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Li5/e1;

    invoke-interface {v4}, Li5/l;->getName()Lh6/f;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_78
    iget-object p1, p1, Lc6/a;->d:Ljava/util/List;

    const-string v1, "proto.argumentList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_88
    :goto_88
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/a$b;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Lc6/a$b;->c:I

    invoke-static {p2, v4}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    const/4 v5, 0x0

    if-nez v4, :cond_a9

    goto :goto_f3

    :cond_a9
    new-instance v6, Lh4/j;

    iget v7, v2, Lc6/a$b;->c:I

    invoke-static {p2, v7}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v7

    invoke-interface {v4}, Li5/d1;->getType()Ly6/l0;

    move-result-object v4

    const-string v8, "parameter.type"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lc6/a$b;->d:Lc6/a$b$c;

    const-string v8, "proto.value"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, p2}, Lu6/e;->c(Ly6/l0;Lc6/a$b$c;Le6/c;)Lm6/g;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v2}, Lu6/e;->b(Lm6/g;Ly6/l0;Lc6/a$b$c;)Z

    move-result v9

    if-eqz v9, :cond_cc

    move-object v5, v8

    :cond_cc
    if-nez v5, :cond_ef

    const-string v5, "Unexpected argument value: actual type "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lm6/k$a;

    invoke-direct {v5, v2}, Lm6/k$a;-><init>(Ljava/lang/String;)V

    :cond_ef
    invoke-direct {v6, v7, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_f3
    if-eqz v5, :cond_88

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_f9
    invoke-static {v1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    :cond_fd
    new-instance p0, Lj5/d;

    invoke-interface {v0}, Li5/e;->m()Ly6/s0;

    move-result-object p1

    sget-object p2, Li5/v0;->a:Li5/v0;

    invoke-direct {p0, p1, v1, p2}, Lj5/d;-><init>(Ly6/l0;Ljava/util/Map;Li5/v0;)V

    return-object p0
.end method

.method public final b(Lm6/g;Ly6/l0;Lc6/a$b$c;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/g<",
            "*>;",
            "Ly6/l0;",
            "Lc6/a$b$c;",
            ")Z"
        }
    .end annotation

    iget-object v0, p3, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    sget-object v1, Lu6/e$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_af

    const/16 v1, 0xd

    if-eq v0, v1, :cond_24

    iget-object p0, p0, Lu6/e;->a:Li5/e0;

    invoke-virtual {p1, p0}, Lm6/g;->a(Li5/e0;)Ly6/l0;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_c8

    :cond_24
    instance-of v0, p1, Lm6/b;

    if-eqz v0, :cond_3d

    move-object v0, p1

    check-cast v0, Lm6/b;

    iget-object v0, v0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p3, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3d

    move v0, v3

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    if-eqz v0, :cond_94

    iget-object v0, p0, Lu6/e;->a:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf5/g;->g(Ly6/l0;)Ly6/l0;

    move-result-object p2

    const-string v0, "builtIns.getArrayElementType(expectedType)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm6/b;

    iget-object v0, p1, Lm6/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Li4/o;->d(Ljava/util/Collection;)Ly4/d;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_67

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_c7

    :cond_67
    invoke-virtual {v0}, Ly4/b;->a()Li4/f0;

    move-result-object v0

    :cond_6b
    move-object v1, v0

    check-cast v1, Ly4/c;

    iget-boolean v1, v1, Ly4/c;->c:Z

    if-eqz v1, :cond_c7

    invoke-virtual {v0}, Li4/f0;->nextInt()I

    move-result v1

    iget-object v4, p1, Lm6/g;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm6/g;

    iget-object v5, p3, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a$b$c;

    const-string v5, "value.getArrayElement(i)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2, v1}, Lu6/e;->b(Lm6/g;Ly6/l0;Lc6/a$b$c;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto :goto_c8

    :cond_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_af
    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_be

    check-cast p0, Li5/e;

    goto :goto_bf

    :cond_be
    const/4 p0, 0x0

    :goto_bf
    if-eqz p0, :cond_c7

    invoke-static {p0}, Lf5/g;->F(Li5/e;)Z

    move-result p0

    if-eqz p0, :cond_c8

    :cond_c7
    :goto_c7
    move v2, v3

    :cond_c8
    :goto_c8
    return v2
.end method

.method public final c(Ly6/l0;Lc6/a$b$c;Le6/c;)Lm6/g;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Lc6/a$b$c;",
            "Le6/c;",
            ")",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "expectedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le6/b;->M:Le6/b$b;

    iget v2, p2, Lc6/a$b$c;->m:I

    const-string v3, "IS_UNSIGNED.get(value.flags)"

    invoke-static {v1, v2, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v1

    iget-object v2, p2, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    if-nez v2, :cond_1f

    const/4 v2, -0x1

    goto :goto_27

    :cond_1f
    sget-object v3, Lu6/e$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_27
    packed-switch v2, :pswitch_data_158

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, "Unsupported annotation argument type: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    goto/16 :goto_139

    :pswitch_34  #0xd
    iget-object p2, p2, Lc6/a$b$c;->k:Ljava/util/List;

    const-string v1, "value.arrayElementList"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/a$b$c;

    iget-object v3, p0, Lu6/e;->a:Li5/e0;

    invoke-interface {v3}, Li5/e0;->k()Lf5/g;

    move-result-object v3

    invoke-virtual {v3}, Lf5/g;->f()Ly6/s0;

    move-result-object v3

    const-string v4, "builtIns.anyType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2, p3}, Lu6/e;->c(Ly6/l0;Lc6/a$b$c;Le6/c;)Lm6/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_72
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lm6/w;

    invoke-direct {p0, v1, p1}, Lm6/w;-><init>(Ljava/util/List;Ly6/l0;)V

    goto/16 :goto_138

    :pswitch_81  #0xc
    new-instance p1, Lm6/a;

    iget-object p2, p2, Lc6/a$b$c;->j:Lc6/a;

    const-string v0, "value.annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object p0

    invoke-direct {p1, p0}, Lm6/a;-><init>(Lj5/c;)V

    :goto_91
    move-object p0, p1

    goto/16 :goto_138

    :pswitch_94  #0xb
    new-instance p0, Lm6/j;

    iget p1, p2, Lc6/a$b$c;->h:I

    invoke-static {p3, p1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p1

    iget p2, p2, Lc6/a$b$c;->i:I

    invoke-static {p3, p2}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    goto/16 :goto_138

    :pswitch_a7  #0xa
    new-instance p0, Lm6/r;

    iget p1, p2, Lc6/a$b$c;->h:I

    invoke-static {p3, p1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p1

    iget p2, p2, Lc6/a$b$c;->l:I

    invoke-direct {p0, p1, p2}, Lm6/r;-><init>(Lh6/b;I)V

    goto/16 :goto_138

    :pswitch_b6  #0x9
    new-instance p0, Lm6/v;

    iget p1, p2, Lc6/a$b$c;->g:I

    invoke-interface {p3, p1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lm6/v;-><init>(Ljava/lang/String;)V

    goto/16 :goto_138

    :pswitch_c3  #0x8
    new-instance p0, Lm6/c;

    iget-wide p1, p2, Lc6/a$b$c;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_cf

    const/4 p1, 0x1

    goto :goto_d0

    :cond_cf
    const/4 p1, 0x0

    :goto_d0
    invoke-direct {p0, p1}, Lm6/c;-><init>(Z)V

    goto :goto_138

    :pswitch_d4  #0x7
    new-instance p0, Lm6/i;

    iget-wide p1, p2, Lc6/a$b$c;->f:D

    invoke-direct {p0, p1, p2}, Lm6/i;-><init>(D)V

    goto :goto_138

    :pswitch_dc  #0x6
    new-instance p0, Lm6/l;

    iget p1, p2, Lc6/a$b$c;->e:F

    invoke-direct {p0, p1}, Lm6/l;-><init>(F)V

    goto :goto_138

    :pswitch_e4  #0x5
    iget-wide p0, p2, Lc6/a$b$c;->d:J

    if-eqz v1, :cond_ee

    new-instance p2, Lm6/z;

    invoke-direct {p2, p0, p1}, Lm6/z;-><init>(J)V

    goto :goto_f3

    :cond_ee
    new-instance p2, Lm6/s;

    invoke-direct {p2, p0, p1}, Lm6/s;-><init>(J)V

    :goto_f3
    move-object p0, p2

    goto :goto_138

    :pswitch_f5  #0x4
    iget-wide p0, p2, Lc6/a$b$c;->d:J

    long-to-int p0, p0

    if-eqz v1, :cond_100

    new-instance p1, Lm6/y;

    invoke-direct {p1, p0}, Lm6/y;-><init>(I)V

    goto :goto_91

    :cond_100
    new-instance p1, Lm6/m;

    invoke-direct {p1, p0}, Lm6/m;-><init>(I)V

    goto :goto_91

    :pswitch_106  #0x3
    iget-wide p0, p2, Lc6/a$b$c;->d:J

    long-to-int p0, p0

    int-to-short p0, p0

    if-eqz v1, :cond_113

    new-instance p1, Lm6/a0;

    invoke-direct {p1, p0}, Lm6/a0;-><init>(S)V

    goto/16 :goto_91

    :cond_113
    new-instance p1, Lm6/u;

    invoke-direct {p1, p0}, Lm6/u;-><init>(S)V

    goto/16 :goto_91

    :pswitch_11a  #0x2
    new-instance p0, Lm6/e;

    iget-wide p1, p2, Lc6/a$b$c;->d:J

    long-to-int p1, p1

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lm6/e;-><init>(C)V

    goto :goto_138

    :pswitch_124  #0x1
    iget-wide p0, p2, Lc6/a$b$c;->d:J

    long-to-int p0, p0

    int-to-byte p0, p0

    if-eqz v1, :cond_131

    new-instance p1, Lm6/x;

    invoke-direct {p1, p0}, Lm6/x;-><init>(B)V

    goto/16 :goto_91

    :cond_131
    new-instance p1, Lm6/d;

    invoke-direct {p1, p0}, Lm6/d;-><init>(B)V

    goto/16 :goto_91

    :goto_138
    return-object p0

    :goto_139
    iget-object p2, p2, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_124  #00000001
        :pswitch_11a  #00000002
        :pswitch_106  #00000003
        :pswitch_f5  #00000004
        :pswitch_e4  #00000005
        :pswitch_dc  #00000006
        :pswitch_d4  #00000007
        :pswitch_c3  #00000008
        :pswitch_b6  #00000009
        :pswitch_a7  #0000000a
        :pswitch_94  #0000000b
        :pswitch_81  #0000000c
        :pswitch_34  #0000000d
    .end packed-switch
.end method

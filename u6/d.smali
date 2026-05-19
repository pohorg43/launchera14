.class public final Lu6/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu6/c<",
        "Lj5/c;",
        "Lm6/g<",
        "*>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotationAndConstantLoaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationAndConstantLoaderImpl.kt\norg/jetbrains/kotlin/serialization/deserialization/AnnotationAndConstantLoaderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,3:141\n1549#2:144\n1620#2,3:145\n1549#2:149\n1620#2,3:150\n1549#2:153\n1620#2,3:154\n1549#2:157\n1620#2,3:158\n1549#2:161\n1620#2,3:162\n1549#2:165\n1620#2,3:166\n1549#2:169\n1620#2,3:170\n1549#2:173\n1620#2,3:174\n1#3:148\n*S KotlinDebug\n*F\n+ 1 AnnotationAndConstantLoaderImpl.kt\norg/jetbrains/kotlin/serialization/deserialization/AnnotationAndConstantLoaderImpl\n*L\n39#1:140\n39#1:141,3\n58#1:144\n58#1:145,3\n65#1:149\n65#1:150,3\n72#1:153\n72#1:154,3\n79#1:157\n79#1:158,3\n92#1:161\n92#1:162,3\n112#1:165\n112#1:166,3\n118#1:169\n118#1:170,3\n122#1:173\n122#1:174,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lt6/a;

.field public final b:Lu6/e;


# direct methods
.method public constructor <init>(Li5/e0;Li5/g0;Lt6/a;)V
    .registers 5

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lu6/d;->a:Lt6/a;

    new-instance p3, Lu6/e;

    invoke-direct {p3, p1, p2}, Lu6/e;-><init>(Li5/e0;Li5/g0;)V

    iput-object p3, p0, Lu6/d;->b:Lu6/e;

    return-void
.end method


# virtual methods
.method public a(Lu6/b0;Li6/p;Lu6/b;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Li6/p;",
            "Lu6/b;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lc6/i;

    if-eqz v0, :cond_22

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->e:Li6/h$f;

    if-eqz p3, :cond_5e

    check-cast p2, Lc6/i;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_5f

    :cond_22
    instance-of v0, p2, Lc6/n;

    if-eqz v0, :cond_8b

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    goto :goto_4f

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported callable kind with property proto for receiver annotations: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    :goto_4f
    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->i:Li6/h$f;

    if-eqz p3, :cond_5e

    check-cast p2, Lc6/n;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    if-nez p2, :cond_63

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_63
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_72
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/a;

    iget-object v1, p0, Lu6/d;->b:Lu6/e;

    iget-object v2, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v1, v0, v2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_8a
    return-object p3

    :cond_8b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown message: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lc6/q;Le6/c;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/q;",
            "Le6/c;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->o:Li6/h$f;

    invoke-virtual {p1, v0}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_18

    sget-object p1, Li4/y;->a:Li4/y;

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a;

    iget-object v2, p0, Lu6/d;->b:Lu6/e;

    invoke-virtual {v2, v1, p2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3d
    return-object v0
.end method

.method public c(Lu6/b0;Lc6/n;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->k:Li6/h$f;

    if-eqz v0, :cond_17

    invoke-virtual {p2, v0}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-nez p2, :cond_1c

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a;

    iget-object v2, p0, Lu6/d;->b:Lu6/e;

    iget-object v3, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v2, v1, v3}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_43
    return-object v0
.end method

.method public d(Lu6/b0;Lc6/n;Ly6/l0;)Ljava/lang/Object;
    .registers 5

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->m:Li6/h$f;

    invoke-static {p2, v0}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc6/a$b$c;

    if-nez p2, :cond_1d

    const/4 p0, 0x0

    goto :goto_25

    :cond_1d
    iget-object p0, p0, Lu6/d;->b:Lu6/e;

    iget-object p1, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {p0, p3, p2, p1}, Lu6/e;->c(Ly6/l0;Lc6/a$b$c;Le6/c;)Lm6/g;

    move-result-object p0

    :goto_25
    return-object p0
.end method

.method public e(Lu6/b0;Lc6/g;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/g;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->l:Li6/h$f;

    invoke-virtual {p2, v0}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_18

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a;

    iget-object v2, p0, Lu6/d;->b:Lu6/e;

    iget-object v3, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v2, v1, v3}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3f
    return-object v0
.end method

.method public f(Lu6/b0;Li6/p;Lu6/b;ILc6/u;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Li6/p;",
            "Lu6/b;",
            "I",
            "Lc6/u;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lu6/d;->a:Lt6/a;

    iget-object p2, p2, Lt6/a;->n:Li6/h$f;

    invoke-virtual {p5, p2}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_22

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_22
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lc6/a;

    iget-object p5, p0, Lu6/d;->b:Lu6/e;

    iget-object v0, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {p5, p4, v0}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_49
    return-object p3
.end method

.method public g(Lc6/s;Le6/c;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/s;",
            "Le6/c;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->p:Li6/h$f;

    invoke-virtual {p1, v0}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_18

    sget-object p1, Li4/y;->a:Li4/y;

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a;

    iget-object v2, p0, Lu6/d;->b:Lu6/e;

    invoke-virtual {v2, v1, p2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3d
    return-object v0
.end method

.method public h(Lu6/b0;Lc6/n;Ly6/l0;)Ljava/lang/Object;
    .registers 4

    const-string p0, "container"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proto"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expectedType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Lu6/b0;Lc6/n;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/d;->a:Lt6/a;

    iget-object v0, v0, Lt6/a;->j:Li6/h$f;

    if-eqz v0, :cond_17

    invoke-virtual {p2, v0}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-nez p2, :cond_1c

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/a;

    iget-object v2, p0, Lu6/d;->b:Lu6/e;

    iget-object v3, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v2, v1, v3}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_43
    return-object v0
.end method

.method public j(Lu6/b0$a;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0$a;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lu6/b0$a;->d:Lc6/b;

    iget-object v1, p0, Lu6/d;->a:Lt6/a;

    iget-object v1, v1, Lt6/a;->c:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/a;

    iget-object v3, p0, Lu6/d;->b:Lu6/e;

    iget-object v4, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v3, v2, v4}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3c
    return-object v1
.end method

.method public k(Lu6/b0;Li6/p;Lu6/b;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Li6/p;",
            "Lu6/b;",
            ")",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lc6/d;

    if-eqz v0, :cond_20

    check-cast p2, Lc6/d;

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->b:Li6/h$f;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_74

    :cond_20
    instance-of v0, p2, Lc6/i;

    if-eqz v0, :cond_31

    check-cast p2, Lc6/i;

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->d:Li6/h$f;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_74

    :cond_31
    instance-of v0, p2, Lc6/n;

    if-eqz v0, :cond_a0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_68

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5b

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4f

    check-cast p2, Lc6/n;

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->h:Li6/h$f;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_74

    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported callable kind with property proto"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    check-cast p2, Lc6/n;

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->g:Li6/h$f;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_74

    :cond_68
    check-cast p2, Lc6/n;

    iget-object p3, p0, Lu6/d;->a:Lt6/a;

    iget-object p3, p3, Lt6/a;->f:Li6/h$f;

    invoke-virtual {p2, p3}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_74
    if-nez p2, :cond_78

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_78
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/a;

    iget-object v1, p0, Lu6/d;->b:Lu6/e;

    iget-object v2, p1, Lu6/b0;->a:Le6/c;

    invoke-virtual {v1, v0, v2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_9f
    return-object p3

    :cond_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown message: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

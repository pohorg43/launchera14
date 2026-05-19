.class public abstract La6/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu6/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/d$a;,
        La6/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "S:",
        "La6/d$a<",
        "+TA;>;>",
        "Ljava/lang/Object;",
        "Lu6/f<",
        "TA;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractBinaryClassAnnotationLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractBinaryClassAnnotationLoader.kt\norg/jetbrains/kotlin/load/kotlin/AbstractBinaryClassAnnotationLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n1549#2:330\n1620#2,3:331\n1549#2:334\n1620#2,3:335\n1#3:338\n*S KotlinDebug\n*F\n+ 1 AbstractBinaryClassAnnotationLoader.kt\norg/jetbrains/kotlin/load/kotlin/AbstractBinaryClassAnnotationLoader\n*L\n196#1:330\n196#1:331,3\n200#1:334\n200#1:335,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:La6/r;


# direct methods
.method public constructor <init>(La6/r;)V
    .registers 3

    const-string v0, "kotlinClassFinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/d;->a:La6/r;

    return-void
.end method

.method public static synthetic m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;
    .registers 18

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, p3

    :goto_8
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, p4

    :goto_f
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_17

    :cond_16
    move-object v7, p5

    :goto_17
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1d

    move v8, v1

    goto :goto_1e

    :cond_1d
    move v8, p6

    :goto_1e
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, La6/d;->l(Lu6/b0;La6/w;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p(La6/d;Li6/p;Le6/c;Le6/g;Lu6/b;ZILjava/lang/Object;)La6/w;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, La6/d;->o(Li6/p;Le6/c;Le6/g;Lu6/b;Z)La6/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lu6/b0;Li6/p;Lu6/b;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Li6/p;",
            "Lu6/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lu6/b0;->a:Le6/c;

    iget-object v4, p1, Lu6/b0;->b:Le6/g;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, La6/d;->p(La6/d;Li6/p;Le6/c;Le6/g;Lu6/b;ZILjava/lang/Object;)La6/w;

    move-result-object p2

    if-eqz p2, :cond_50

    const/4 p3, 0x0

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, La6/w;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, La6/w;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, La6/d;->m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_50
    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public b(Lc6/q;Le6/c;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/q;",
            "Le6/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lf6/a;->f:Li6/h$f;

    invoke-virtual {p1, v2}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, La6/f;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, La6/f;->e:Lu6/e;

    invoke-virtual {v4, v3, p2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4a
    return-object v2
.end method

.method public c(Lu6/b0;Lc6/n;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/d$b;->c:La6/d$b;

    invoke-virtual {p0, p1, p2, v0}, La6/d;->u(Lu6/b0;Lc6/n;La6/d$b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public e(Lu6/b0;Lc6/g;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/g;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lu6/b0;->a:Le6/c;

    iget p2, p2, Lc6/g;->d:I

    invoke-interface {v0, p2}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lu6/b0$a;

    iget-object v0, v0, Lu6/b0$a;->f:Lh6/b;

    invoke-virtual {v0}, Lh6/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container as ProtoContai…Class).classId.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg6/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, La6/w;

    const/16 v1, 0x23

    invoke-static {p2, v1, v0}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {v4, p2, v0}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v10}, La6/d;->m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Lu6/b0;Li6/p;Lu6/b;ILc6/u;)Ljava/util/List;
    .registers 15
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
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableProto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lu6/b0;->a:Le6/c;

    iget-object v4, p1, Lu6/b0;->b:Le6/g;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, La6/d;->p(La6/d;Li6/p;Le6/c;Le6/g;Lu6/b;ZILjava/lang/Object;)La6/w;

    move-result-object p3

    if-eqz p3, :cond_a2

    instance-of p5, p2, Lc6/i;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_34

    check-cast p2, Lc6/i;

    invoke-static {p2}, Le6/f;->a(Lc6/i;)Z

    move-result p2

    if-eqz p2, :cond_5a

    goto :goto_5b

    :cond_34
    instance-of p5, p2, Lc6/n;

    if-eqz p5, :cond_41

    check-cast p2, Lc6/n;

    invoke-static {p2}, Le6/f;->b(Lc6/n;)Z

    move-result p2

    if-eqz p2, :cond_5a

    goto :goto_5b

    :cond_41
    instance-of p5, p2, Lc6/d;

    if-eqz p5, :cond_8b

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.ProtoContainer.Class"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lu6/b0$a;

    iget-object p5, p2, Lu6/b0$a;->g:Lc6/b$c;

    sget-object v2, Lc6/b$c;->d:Lc6/b$c;

    if-ne p5, v2, :cond_55

    const/4 v0, 0x2

    goto :goto_5b

    :cond_55
    iget-boolean p2, p2, Lu6/b0$a;->h:Z

    if-eqz p2, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    add-int/2addr p4, v0

    const-string p2, "signature"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, La6/w;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, La6/w;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v2, p2, p3}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, La6/d;->m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported message: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public g(Lc6/s;Le6/c;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/s;",
            "Le6/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lf6/a;->h:Li6/h$f;

    invoke-virtual {p1, v2}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "proto.getExtension(JvmPr….typeParameterAnnotation)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, La6/f;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, La6/f;->e:Lu6/e;

    invoke-virtual {v4, v3, p2}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4a
    return-object v2
.end method

.method public i(Lu6/b0;Lc6/n;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/d$b;->b:La6/d$b;

    invoke-virtual {p0, p1, p2, v0}, La6/d;->u(Lu6/b0;Lc6/n;La6/d$b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j(Lu6/b0$a;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, La6/d;->v(Lu6/b0$a;)La6/t;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, La6/d$c;

    invoke-direct {v1, p0, p1}, La6/d$c;-><init>(La6/d;Ljava/util/ArrayList;)V

    const-string p0, "kotlinClass"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, La6/t;->g(La6/t$c;[B)V

    return-object p1

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Class for loading annotations is not found: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lu6/b0$a;->f:Lh6/b;

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object p1

    const-string v1, "classId.asSingleFqName()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(Lu6/b0;Li6/p;Lu6/b;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Li6/p;",
            "Lu6/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v2, "container"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "proto"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lu6/b;->b:Lu6/b;

    if-ne p3, v2, :cond_1d

    move-object v0, p2

    check-cast v0, Lc6/n;

    sget-object v2, La6/d$b;->a:La6/d$b;

    invoke-virtual {p0, p1, v0, v2}, La6/d;->u(Lu6/b0;Lc6/n;La6/d$b;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v4, p1, Lu6/b0;->a:Le6/c;

    iget-object v5, p1, Lu6/b0;->b:Le6/g;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v2 .. v9}, La6/d;->p(La6/d;Li6/p;Le6/c;Le6/g;Lu6/b;ZILjava/lang/Object;)La6/w;

    move-result-object v2

    if-nez v2, :cond_31

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_31
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, La6/d;->m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lu6/b0;La6/w;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "La6/w;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, La6/d;->q(Lu6/b0;ZZLjava/lang/Boolean;Z)La6/t;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, La6/d;->n(Lu6/b0;La6/t;)La6/t;

    move-result-object p1

    if-nez p1, :cond_13

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_13
    check-cast p0, La6/a;

    const-string p3, "binaryClass"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/a;->b:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La6/a$a;

    iget-object p0, p0, La6/a$a;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_30

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_30
    return-object p0
.end method

.method public final n(Lu6/b0;La6/t;)La6/t;
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_13

    instance-of p2, p1, Lu6/b0$a;

    if-eqz p2, :cond_12

    check-cast p1, Lu6/b0$a;

    invoke-virtual {p0, p1}, La6/d;->v(Lu6/b0$a;)La6/t;

    move-result-object p2

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :cond_13
    :goto_13
    return-object p2
.end method

.method public final o(Li6/p;Le6/c;Le6/g;Lu6/b;Z)La6/w;
    .registers 14

    const-string p0, "proto"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameResolver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lc6/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    sget-object p0, Lg6/h;->a:Lg6/h;

    check-cast p1, Lc6/d;

    invoke-virtual {p0, p1, p2, p3}, Lg6/h;->a(Lc6/d;Le6/c;Le6/g;)Lg6/d$b;

    move-result-object p0

    if-nez p0, :cond_24

    return-object v1

    :cond_24
    invoke-static {p0}, La6/w;->b(Lg6/d;)La6/w;

    move-result-object v1

    goto/16 :goto_d5

    :cond_2a
    instance-of v0, p1, Lc6/i;

    if-eqz v0, :cond_3f

    sget-object p0, Lg6/h;->a:Lg6/h;

    check-cast p1, Lc6/i;

    invoke-virtual {p0, p1, p2, p3}, Lg6/h;->c(Lc6/i;Le6/c;Le6/g;)Lg6/d$b;

    move-result-object p0

    if-nez p0, :cond_39

    return-object v1

    :cond_39
    invoke-static {p0}, La6/w;->b(Lg6/d;)La6/w;

    move-result-object v1

    goto/16 :goto_d5

    :cond_3f
    instance-of v0, p1, Lc6/n;

    if-eqz v0, :cond_d5

    move-object v0, p1

    check-cast v0, Li6/h$d;

    sget-object v2, Lf6/a;->d:Li6/h$f;

    const-string v3, "propertySignature"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf6/a$d;

    if-nez v0, :cond_56

    return-object v1

    :cond_56
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v2, 0x1

    if-eq p4, v2, :cond_c9

    const/4 p1, 0x2

    const-string p3, "desc"

    const-string p5, "name"

    const-string v2, "signature"

    if-eq p4, p1, :cond_99

    const/4 p1, 0x3

    if-eq p4, p1, :cond_6a

    goto :goto_d5

    :cond_6a
    invoke-virtual {v0}, Lf6/a$d;->f()Z

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p1, v0, Lf6/a$d;->f:Lf6/a$c;

    const-string p4, "signature.setter"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lf6/a$c;->c:I

    invoke-interface {p2, p0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lf6/a$c;->d:I

    invoke-interface {p2, p1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, La6/w;

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v1}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_c7

    :cond_99
    invoke-virtual {v0}, Lf6/a$d;->e()Z

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p1, v0, Lf6/a$d;->e:Lf6/a$c;

    const-string p4, "signature.getter"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lf6/a$c;->c:I

    invoke-interface {p2, p0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lf6/a$c;->d:I

    invoke-interface {p2, p1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, La6/w;

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v1}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_c7
    move-object v1, p2

    goto :goto_d5

    :cond_c9
    move-object v2, p1

    check-cast v2, Lc6/n;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, La6/e;->a(Lc6/n;Le6/c;Le6/g;ZZZ)La6/w;

    move-result-object v1

    :cond_d5
    :goto_d5
    return-object v1
.end method

.method public final q(Lu6/b0;ZZLjava/lang/Boolean;Z)La6/t;
    .registers 9

    sget-object v0, Lc6/b$c;->c:Lc6/b$c;

    const-string v1, "container"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_9b

    if-eqz p4, :cond_7b

    instance-of p2, p1, Lu6/b0$a;

    if-eqz p2, :cond_33

    move-object p2, p1

    check-cast p2, Lu6/b0$a;

    iget-object v2, p2, Lu6/b0$a;->g:Lc6/b$c;

    if-ne v2, v0, :cond_33

    iget-object p1, p0, La6/d;->a:La6/r;

    iget-object p2, p2, Lu6/b0$a;->f:Lh6/b;

    const-string p3, "DefaultImpls"

    invoke-static {p3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object p2

    const-string p3, "container.classId.create…EFAULT_IMPLS_CLASS_NAME))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La6/f;

    iget-object p0, p0, La6/f;->f:Lg6/e;

    invoke-static {p1, p2, p0}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object p0

    return-object p0

    :cond_33
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9b

    instance-of p2, p1, Lu6/b0$b;

    if-eqz p2, :cond_9b

    iget-object p2, p1, Lu6/b0;->c:Li5/v0;

    instance-of p4, p2, La6/n;

    if-eqz p4, :cond_46

    check-cast p2, La6/n;

    goto :goto_47

    :cond_46
    move-object p2, v1

    :goto_47
    if-eqz p2, :cond_4c

    iget-object p2, p2, La6/n;->c:Lp6/c;

    goto :goto_4d

    :cond_4c
    move-object p2, v1

    :goto_4d
    if-eqz p2, :cond_9b

    iget-object p1, p0, La6/d;->a:La6/r;

    new-instance p3, Lh6/c;

    invoke-virtual {p2}, Lp6/c;->e()Ljava/lang/String;

    move-result-object p2

    const-string p4, "facadeClassName.internalName"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x2f

    const/16 p5, 0x2e

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p4, p5, v0, v1}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p2

    const-string p3, "topLevel(FqName(facadeCl…lName.replace(\'/\', \'.\')))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La6/f;

    iget-object p0, p0, La6/f;->f:Lg6/e;

    invoke-static {p1, p2, p0}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object p0

    return-object p0

    :cond_7b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isConst should not be null for property (container="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9b
    if-eqz p3, :cond_c5

    instance-of p2, p1, Lu6/b0$a;

    if-eqz p2, :cond_c5

    move-object p2, p1

    check-cast p2, Lu6/b0$a;

    iget-object p3, p2, Lu6/b0$a;->g:Lc6/b$c;

    sget-object p4, Lc6/b$c;->h:Lc6/b$c;

    if-ne p3, p4, :cond_c5

    iget-object p2, p2, Lu6/b0$a;->e:Lu6/b0$a;

    if-eqz p2, :cond_c5

    iget-object p3, p2, Lu6/b0$a;->g:Lc6/b$c;

    sget-object p4, Lc6/b$c;->b:Lc6/b$c;

    if-eq p3, p4, :cond_c0

    sget-object p4, Lc6/b$c;->d:Lc6/b$c;

    if-eq p3, p4, :cond_c0

    if-eqz p5, :cond_c5

    if-eq p3, v0, :cond_c0

    sget-object p4, Lc6/b$c;->f:Lc6/b$c;

    if-ne p3, p4, :cond_c5

    :cond_c0
    invoke-virtual {p0, p2}, La6/d;->v(Lu6/b0$a;)La6/t;

    move-result-object p0

    return-object p0

    :cond_c5
    instance-of p2, p1, Lu6/b0$b;

    if-eqz p2, :cond_e9

    iget-object p1, p1, Lu6/b0;->c:Li5/v0;

    instance-of p2, p1, La6/n;

    if-eqz p2, :cond_e9

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La6/n;

    iget-object p2, p1, La6/n;->d:La6/t;

    if-nez p2, :cond_e8

    iget-object p2, p0, La6/d;->a:La6/r;

    invoke-virtual {p1}, La6/n;->d()Lh6/b;

    move-result-object p1

    check-cast p0, La6/f;

    iget-object p0, p0, La6/f;->f:Lg6/e;

    invoke-static {p2, p1, p0}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object p2

    :cond_e8
    return-object p2

    :cond_e9
    return-object v1
.end method

.method public final r(Lh6/b;)Z
    .registers 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/b;->g()Lh6/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lh6/b;->j()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_43

    :cond_1d
    iget-object v0, p0, La6/d;->a:La6/r;

    check-cast p0, La6/f;

    iget-object p0, p0, La6/f;->f:Lg6/e;

    invoke-static {v0, p1, p0}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object p0

    if-eqz p0, :cond_43

    sget-object p1, Le5/b;->a:Le5/b;

    const-string p1, "klass"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Le5/a;

    invoke-direct {v0, p1}, Le5/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, La6/t;->g(La6/t$c;[B)V

    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_43

    const/4 v1, 0x1

    :cond_43
    :goto_43
    return v1
.end method

.method public abstract s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            "Li5/v0;",
            "Ljava/util/List<",
            "TA;>;)",
            "La6/t$a;"
        }
    .end annotation
.end method

.method public final t(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            "Li5/v0;",
            "Ljava/util/List<",
            "TA;>;)",
            "La6/t$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le5/b;->a:Le5/b;

    sget-object v0, Le5/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-virtual {p0, p1, p2, p3}, La6/d;->s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lu6/b0;Lc6/n;La6/d$b;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/b0;",
            "Lc6/n;",
            "La6/d$b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    sget-object v2, Le6/b;->A:Le6/b$b;

    iget v4, p2, Lc6/n;->d:I

    const-string v5, "IS_CONST.get(proto.flags)"

    invoke-static {v2, v4, v5}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    invoke-static {p2}, Lg6/h;->d(Lc6/n;)Z

    move-result v10

    sget-object v4, La6/d$b;->a:La6/d$b;

    if-ne p3, v4, :cond_3a

    iget-object v4, p1, Lu6/b0;->a:Le6/c;

    iget-object v5, p1, Lu6/b0;->b:Le6/g;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x28

    move-object v3, p2

    invoke-static/range {v3 .. v9}, La6/e;->b(Lc6/n;Le6/c;Le6/g;ZZZI)La6/w;

    move-result-object v3

    if-nez v3, :cond_25

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_25
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v10

    invoke-static/range {v0 .. v8}, La6/d;->m(La6/d;Lu6/b0;La6/w;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3a
    iget-object v4, p1, Lu6/b0;->a:Le6/c;

    iget-object v5, p1, Lu6/b0;->b:Le6/g;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v3, p2

    invoke-static/range {v3 .. v9}, La6/e;->b(Lc6/n;Le6/c;Le6/g;ZZZI)La6/w;

    move-result-object v3

    if-nez v3, :cond_4d

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_4d
    iget-object v4, v3, La6/w;->a:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "$delegate"

    invoke-static {v4, v7, v6, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    sget-object v5, La6/d$b;->c:La6/d$b;

    if-ne p3, v5, :cond_5c

    const/4 v6, 0x1

    :cond_5c
    if-eq v4, v6, :cond_61

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_61
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v10

    invoke-virtual/range {v0 .. v6}, La6/d;->l(Lu6/b0;La6/w;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lu6/b0$a;)La6/t;
    .registers 3

    iget-object p0, p1, Lu6/b0;->c:Li5/v0;

    instance-of p1, p0, La6/v;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    check-cast p0, La6/v;

    goto :goto_b

    :cond_a
    move-object p0, v0

    :goto_b
    if-eqz p0, :cond_f

    iget-object v0, p0, La6/v;->b:La6/t;

    :cond_f
    return-object v0
.end method

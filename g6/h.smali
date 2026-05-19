.class public final Lg6/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmProtoBufUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmProtoBufUtil.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/JvmProtoBufUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1549#2:142\n1620#2,3:143\n1549#2:146\n1620#2,3:147\n1549#2:150\n1620#2,3:151\n1#3:154\n*S KotlinDebug\n*F\n+ 1 JvmProtoBufUtil.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/JvmProtoBufUtil\n*L\n79#1:142\n79#1:143,3\n81#1:146\n81#1:147,3\n103#1:150\n103#1:151,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lg6/h;

.field public static final b:Li6/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lg6/h;

    invoke-direct {v0}, Lg6/h;-><init>()V

    sput-object v0, Lg6/h;->a:Lg6/h;

    new-instance v0, Li6/f;

    invoke-direct {v0}, Li6/f;-><init>()V

    sget-object v1, Lf6/a;->a:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->b:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->c:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->d:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->e:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->f:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->g:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->h:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->i:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->j:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->k:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->l:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->m:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    sget-object v1, Lf6/a;->n:Li6/h$f;

    invoke-virtual {v0, v1}, Li6/f;->a(Li6/h$f;)V

    const-string v1, "newInstance().apply(JvmP…f::registerAllExtensions)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg6/h;->b:Li6/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Lc6/n;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg6/c;->a:Lg6/c;

    sget-object v0, Lg6/c;->b:Le6/b$b;

    sget-object v1, Lf6/a;->e:Li6/h$f;

    invoke-virtual {p0, v1}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "JvmFlags.IS_MOVED_FROM_I…nsion(JvmProtoBuf.flags))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Lh4/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lh4/j<",
            "Lg6/f;",
            "Lc6/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg6/h;->a:Lg6/h;

    invoke-static {p0}, Lg6/a;->b([Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "decodeBytes(data)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bytes"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lh4/j;

    invoke-virtual {v1, v0, p1}, Lg6/h;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lg6/f;

    move-result-object p1

    sget-object v1, Lg6/h;->b:Li6/f;

    sget-object v2, Lc6/b;->P:Li6/r;

    check-cast v2, Li6/b;

    invoke-virtual {v2, v0, v1}, Li6/b;->d(Ljava/io/InputStream;Li6/f;)Li6/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Li6/b;->b(Li6/p;)Li6/p;

    check-cast v0, Lc6/b;

    invoke-direct {p0, p1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Lh4/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lh4/j<",
            "Lg6/f;",
            "Lc6/l;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg6/h;->a:Lg6/h;

    invoke-static {p0}, Lg6/a;->b([Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "decodeBytes(data)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bytes"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lh4/j;

    invoke-virtual {v1, v0, p1}, Lg6/h;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lg6/f;

    move-result-object p1

    sget-object v1, Lg6/h;->b:Li6/f;

    sget-object v2, Lc6/l;->l:Li6/r;

    check-cast v2, Li6/b;

    invoke-virtual {v2, v0, v1}, Li6/b;->d(Ljava/io/InputStream;Li6/f;)Li6/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Li6/b;->b(Li6/p;)Li6/p;

    check-cast v0, Lc6/l;

    invoke-direct {p0, p1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lc6/d;Le6/c;Le6/g;)Lg6/d$b;
    .registers 13

    const-string p0, "proto"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameResolver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeTable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf6/a;->a:Li6/h$f;

    const-string v0, "constructorSignature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf6/a$c;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lf6/a$c;->f()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lf6/a$c;->c:I

    invoke-interface {p2, v0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_2b
    const-string v0, "<init>"

    :goto_2d
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Lf6/a$c;->e()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget p0, p0, Lf6/a$c;->d:I

    invoke-interface {p2, p0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_84

    :cond_3c
    iget-object p0, p1, Lc6/d;->e:Ljava/util/List;

    const-string p1, "proto.valueParameterList"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/u;

    sget-object v2, Lg6/h;->a:Lg6/h;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Le6/f;->g(Lc6/u;Le6/g;)Lc6/q;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lg6/h;->e(Lc6/q;Le6/c;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_71

    const/4 p0, 0x0

    return-object p0

    :cond_71
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_75
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const-string v2, ""

    const-string v3, "("

    const-string v4, ")V"

    invoke-static/range {v1 .. v8}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    :goto_84
    new-instance p1, Lg6/d$b;

    invoke-direct {p1, v0, p0}, Lg6/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lc6/n;Le6/c;Le6/g;Z)Lg6/d$a;
    .registers 11

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf6/a;->d:Li6/h$f;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf6/a$d;

    const/4 v1, 0x0

    if-nez v0, :cond_20

    return-object v1

    :cond_20
    iget v2, v0, Lf6/a$d;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v4

    :goto_2a
    if-eqz v2, :cond_2f

    iget-object v0, v0, Lf6/a$d;->c:Lf6/a$b;

    goto :goto_30

    :cond_2f
    move-object v0, v1

    :goto_30
    if-nez v0, :cond_35

    if-eqz p4, :cond_35

    return-object v1

    :cond_35
    if-eqz v0, :cond_44

    iget p4, v0, Lf6/a$b;->b:I

    and-int/2addr p4, v3

    if-ne p4, v3, :cond_3e

    move p4, v3

    goto :goto_3f

    :cond_3e
    move p4, v4

    :goto_3f
    if-eqz p4, :cond_44

    iget p4, v0, Lf6/a$b;->c:I

    goto :goto_46

    :cond_44
    iget p4, p1, Lc6/n;->f:I

    :goto_46
    if-eqz v0, :cond_59

    iget v2, v0, Lf6/a$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_4f

    goto :goto_50

    :cond_4f
    move v3, v4

    :goto_50
    if-eqz v3, :cond_59

    iget p0, v0, Lf6/a$b;->d:I

    invoke-interface {p2, p0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_64

    :cond_59
    invoke-static {p1, p3}, Le6/f;->f(Lc6/n;Le6/g;)Lc6/q;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lg6/h;->e(Lc6/q;Le6/c;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_64

    return-object v1

    :cond_64
    :goto_64
    new-instance p1, Lg6/d$a;

    invoke-interface {p2, p4}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lg6/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lc6/i;Le6/c;Le6/g;)Lg6/d$b;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "proto"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameResolver"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lf6/a;->b:Li6/h$f;

    const-string v4, "methodSignature"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf6/a$c;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lf6/a$c;->f()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget v4, v3, Lf6/a$c;->c:I

    goto :goto_2f

    :cond_2d
    iget v4, v0, Lc6/i;->f:I

    :goto_2f
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lf6/a$c;->e()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget v0, v3, Lf6/a$c;->d:I

    invoke-interface {v1, v0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c8

    :cond_3f
    invoke-static {v0, v2}, Le6/f;->d(Lc6/i;Le6/g;)Lc6/q;

    move-result-object v3

    invoke-static {v3}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lc6/i;->o:Ljava/util/List;

    const-string v6, "proto.valueParameterList"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc6/u;

    const-string v9, "it"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Le6/f;->g(Lc6/u;Le6/g;)Lc6/q;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_76
    invoke-static {v3, v6}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/q;

    sget-object v7, Lg6/h;->a:Lg6/h;

    invoke-virtual {v7, v5, v1}, Lg6/h;->e(Lc6/q;Le6/c;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9f

    return-object v6

    :cond_9f
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_a3
    invoke-static {v0, v2}, Le6/f;->e(Lc6/i;Le6/g;)Lc6/q;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lg6/h;->e(Lc6/q;Le6/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b0

    return-object v6

    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const-string v9, ""

    const-string v10, "("

    const-string v11, ")"

    invoke-static/range {v8 .. v15}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c8
    new-instance v2, Lg6/d$b;

    invoke-interface {v1, v4}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lg6/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final e(Lc6/q;Le6/c;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lc6/q;->n()Z

    move-result p0

    if-eqz p0, :cond_11

    iget p0, p1, Lc6/q;->i:I

    invoke-interface {p2, p0}, Le6/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg6/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public final g(Ljava/io/InputStream;[Ljava/lang/String;)Lg6/f;
    .registers 5

    new-instance p0, Lg6/f;

    sget-object v0, Lg6/h;->b:Li6/f;

    sget-object v1, Lf6/a$e;->h:Li6/r;

    check-cast v1, Li6/b;

    invoke-virtual {v1, p1, v0}, Li6/b;->c(Ljava/io/InputStream;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/a$e;

    const-string v0, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lg6/f;-><init>(Lf6/a$e;[Ljava/lang/String;)V

    return-object p0
.end method

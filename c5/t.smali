.class public abstract Lc5/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/t$c;,
        Lc5/t$a;,
        Lc5/t$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKDeclarationContainerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KDeclarationContainerImpl.kt\nkotlin/reflect/jvm/internal/KDeclarationContainerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,296:1\n1603#2,9:297\n1855#2:306\n1856#2:308\n1612#2:309\n766#2:310\n857#2,2:311\n1477#2:313\n1502#2,3:314\n1505#2,3:324\n766#2:327\n857#2,2:328\n1#3:307\n1#3:330\n361#4,7:317\n1282#5,2:331\n37#6,2:333\n37#6,2:335\n37#6,2:337\n*S KotlinDebug\n*F\n+ 1 KDeclarationContainerImpl.kt\nkotlin/reflect/jvm/internal/KDeclarationContainerImpl\n*L\n56#1:297,9\n56#1:306\n56#1:308\n56#1:309\n81#1:310\n81#1:311,2\n101#1:313\n101#1:314,3\n101#1:324,3\n123#1:327\n123#1:328,2\n56#1:307\n101#1:317,7\n179#1:331,2\n189#1:333,2\n197#1:335,2\n221#1:337,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lc5/t$a;

.field public static final b:Lk7/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc5/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc5/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lc5/t;->a:Lc5/t$a;

    new-instance v0, Lk7/f;

    const-string v1, "<v#(\\d+)>"

    invoke-direct {v0, v1}, Lk7/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc5/t;->b:Lk7/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-class v0, Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-virtual {p0, p2}, Lc5/t;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x20

    const/4 p2, 0x0

    :goto_16
    if-ge p2, p0, :cond_25

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_25
    if-eqz p3, :cond_33

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p0, "DEFAULT_CONSTRUCTOR_MARKER"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_33
    const-class p0, Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_38
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 11

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<init>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p0, p2}, Lc5/t;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lc5/t;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0}, Lc5/t;->j()Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lc5/t;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_35

    return-object v2

    :cond_35
    invoke-virtual {p0}, Lc5/t;->j()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-class v3, Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lc5/t;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_4d

    return-object p0

    :cond_4d
    return-object v1
.end method

.method public abstract e()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/k;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g(Lh6/f;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/x;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(I)Li5/o0;
.end method

.method public final i(Lr6/i;Lc5/t$c;)Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/i;",
            "Lc5/t$c;",
            ")",
            "Ljava/util/Collection<",
            "Lc5/i<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "belonginess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc5/t$d;

    invoke-direct {v0, p0}, Lc5/t$d;-><init>(Lc5/t;)V

    const/4 p0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, p0, p0, v1, p0}, Lr6/l$a;->a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/l;

    instance-of v3, v2, Li5/b;

    if-eqz v3, :cond_62

    move-object v3, v2

    check-cast v3, Li5/b;

    invoke-interface {v3}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v4

    sget-object v5, Li5/s;->h:Li5/t;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "member"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Li5/b;->f()Li5/b$a;

    move-result-object v3

    invoke-virtual {v3}, Li5/b$a;->a()Z

    move-result v3

    sget-object v4, Lc5/t$c;->a:Lc5/t$c;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p2, v4, :cond_52

    move v4, v5

    goto :goto_53

    :cond_52
    move v4, v6

    :goto_53
    if-ne v3, v4, :cond_56

    goto :goto_57

    :cond_56
    move v5, v6

    :goto_57
    if-eqz v5, :cond_62

    sget-object v3, Lh4/z;->a:Lh4/z;

    invoke-interface {v2, v0, v3}, Li5/l;->F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/i;

    goto :goto_63

    :cond_62
    move-object v2, p0

    :goto_63
    if-eqz v2, :cond_1e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_69
    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lo5/d;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public abstract k(Lh6/f;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation
.end method

.method public final l(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_4d

    move v3, v2

    :goto_10
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_1b

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    const-string v6, "VZCBSIFJD"

    const/4 v7, 0x0

    invoke-static {v6, v4, v7, v5}, Lk7/q;->u(Ljava/lang/CharSequence;CZI)Z

    move-result v5

    if-eqz v5, :cond_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_2c
    const/16 v3, 0x4c

    if-ne v4, v3, :cond_41

    const/16 v3, 0x3b

    const/4 v4, 0x4

    invoke-static {p1, v3, v2, v7, v4}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    add-int/2addr v3, v1

    :goto_38
    invoke-virtual {p0, p1, v2, v3}, Lc5/t;->o(Ljava/lang/String;II)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_7

    :cond_41
    new-instance p0, Lc5/n0;

    const-string v0, "Unknown type prefix in the method signature: "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    return-object v0
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x29

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v1, v2}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lc5/t;->o(Ljava/lang/String;II)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    aput-object p1, p3, v0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lc5/t;->q(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lc5/t;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const-string v1, "interfaces"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    move v2, v0

    :goto_29
    if-ge v2, v1, :cond_6c

    aget-object v9, p1, v2

    const-string v3, "superInterface"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, v9

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lc5/t;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_3f

    return-object v3

    :cond_3f
    if-eqz p5, :cond_69

    invoke-static {v9}, Lo5/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$DefaultImpls"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lv1/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_69

    aput-object v9, p3, v0

    invoke-virtual {p0, v3, p2, p3, p4}, Lc5/t;->q(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_69

    return-object v3

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_6c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(Ljava/lang/String;II)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_31

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lo5/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    const/4 v0, 0x4

    invoke-static {p1, p2, p3, v1, v0}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "jClass.safeClassLoader.l…d - 1).replace(\'/\', \'.\'))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8e

    :cond_31
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_4b

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lc5/t;->o(Ljava/lang/String;II)Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lc5/w0;->a:Lh6/c;

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_8e

    :cond_4b
    const/16 p0, 0x56

    if-ne v0, p0, :cond_57

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string p1, "TYPE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8e

    :cond_57
    const/16 p0, 0x5a

    if-ne v0, p0, :cond_5e

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_5e
    const/16 p0, 0x43

    if-ne v0, p0, :cond_65

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_65
    const/16 p0, 0x42

    if-ne v0, p0, :cond_6c

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_6c
    const/16 p0, 0x53

    if-ne v0, p0, :cond_73

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_73
    const/16 p0, 0x49

    if-ne v0, p0, :cond_7a

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_7a
    const/16 p0, 0x46

    if-ne v0, p0, :cond_81

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_81
    const/16 p0, 0x4a

    if-ne v0, p0, :cond_88

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_8e

    :cond_88
    const/16 p0, 0x44

    if-ne v0, p0, :cond_8f

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_8e
    return-object p0

    :cond_8f
    new-instance p0, Lc5/n0;

    const-string p2, "Unknown type prefix in the method signature: "

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    new-array p0, p0, [Ljava/lang/Class;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    array-length p2, p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public final q(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object p0, v0

    goto :goto_50

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v0, "declaredMethods"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_50

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_44} :catch_50

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    move v4, v1

    :goto_49
    if-eqz v4, :cond_4d

    move-object p0, v3

    goto :goto_50

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :catch_50
    :cond_50
    :goto_50
    return-object p0
.end method

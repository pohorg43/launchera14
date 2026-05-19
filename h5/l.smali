.class public final Lh5/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk5/a;
.implements Lk5/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/l$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmBuiltInsCustomizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsCustomizer.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1747#2,3:346\n1603#2,9:349\n1855#2:358\n1856#2:360\n1612#2:361\n1549#2:362\n1620#2,3:363\n766#2:366\n857#2:367\n1747#2,3:368\n858#2:371\n766#2:372\n857#2:373\n2624#2,3:374\n858#2:377\n1549#2:378\n1620#2,3:379\n1747#2,3:382\n1603#2,9:385\n1855#2:394\n1856#2:396\n1612#2:397\n1#3:359\n1#3:395\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsCustomizer.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer\n*L\n108#1:346,3\n124#1:349,9\n124#1:358\n124#1:360\n124#1:361\n173#1:362\n173#1:363,3\n187#1:366\n187#1:367\n192#1:368,3\n187#1:371\n288#1:372\n288#1:373\n290#1:374,3\n288#1:377\n297#1:378\n297#1:379,3\n324#1:382,3\n235#1:385,9\n235#1:394\n235#1:396\n235#1:397\n124#1:359\n235#1:395\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li5/e0;

.field public final b:Lh5/d;

.field public final c:Lx6/i;

.field public final d:Ly6/l0;

.field public final e:Lx6/i;

.field public final f:Lx6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/a<",
            "Lh6/c;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lx6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lh5/l;

    const/4 v1, 0x3

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "notConsideredDeprecation"

    const-string v4, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lh5/l;->h:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Li5/e0;Lx6/m;Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e0;",
            "Lx6/m;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh5/h$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsComputation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/l;->a:Li5/e0;

    sget-object v0, Lh5/d;->a:Lh5/d;

    iput-object v0, p0, Lh5/l;->b:Lh5/d;

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p3

    iput-object p3, p0, Lh5/l;->c:Lx6/i;

    new-instance p3, Lh6/c;

    const-string v0, "java.io"

    invoke-direct {p3, v0}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v2, Lh5/m;

    invoke-direct {v2, p1, p3}, Lh5/m;-><init>(Li5/e0;Lh6/c;)V

    new-instance p1, Ly6/o0;

    new-instance p3, Lh5/n;

    invoke-direct {p3, p0}, Lh5/n;-><init>(Lh5/l;)V

    invoke-direct {p1, p2, p3}, Ly6/o0;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance p1, Ll5/k;

    const-string p3, "Serializable"

    invoke-static {p3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    sget-object v4, Li5/d0;->d:Li5/d0;

    sget-object v5, Li5/f;->b:Li5/f;

    sget-object v7, Li5/v0;->a:Li5/v0;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Ll5/k;-><init>(Li5/l;Lh6/f;Li5/d0;Li5/f;Ljava/util/Collection;Li5/v0;ZLx6/m;)V

    sget-object p3, Lr6/i$b;->b:Lr6/i$b;

    sget-object v0, Li4/a0;->a:Li4/a0;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Ll5/k;->D0(Lr6/i;Ljava/util/Set;Li5/d;)V

    invoke-virtual {p1}, Ll5/b;->m()Ly6/s0;

    move-result-object p1

    const-string p3, "mockSerializableClass.defaultType"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lh5/l;->d:Ly6/l0;

    new-instance p1, Lh5/l$b;

    invoke-direct {p1, p0, p2}, Lh5/l$b;-><init>(Lh5/l;Lx6/m;)V

    invoke-interface {p2, p1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lh5/l;->e:Lx6/i;

    invoke-interface {p2}, Lx6/m;->a()Lx6/a;

    move-result-object p1

    iput-object p1, p0, Lh5/l;->f:Lx6/a;

    new-instance p1, Lh5/l$d;

    invoke-direct {p1, p0}, Lh5/l$d;-><init>(Lh5/l;)V

    invoke-interface {p2, p1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lh5/l;->g:Lx6/i;

    return-void
.end method


# virtual methods
.method public a(Li5/e;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object p1

    sget-object v0, Lh5/s;->a:Lh5/s;

    invoke-virtual {v0, p1}, Lh5/s;->a(Lh6/d;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    const/4 p1, 0x2

    new-array p1, p1, [Ly6/l0;

    iget-object v0, p0, Lh5/l;->e:Lx6/i;

    sget-object v1, Lh5/l;->h:[Lz4/n;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/s0;

    const-string v1, "cloneableType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, v2

    iget-object p0, p0, Lh5/l;->d:Ly6/l0;

    aput-object p0, p1, v3

    invoke-static {p1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_65

    :cond_32
    const-string v1, "fqName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lh5/s;->a(Lh6/d;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v2, v3

    goto :goto_5a

    :cond_3f
    sget-object v0, Lh5/c;->a:Lh5/c;

    invoke-virtual {v0, p1}, Lh5/c;->h(Lh6/d;)Lh6/b;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_5a

    :cond_48
    :try_start_48
    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_54} :catch_5a

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    :catch_5a
    :goto_5a
    if-eqz v2, :cond_63

    iget-object p0, p0, Lh5/l;->d:Ly6/l0;

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_65

    :cond_63
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_65
    return-object p0
.end method

.method public b(Li5/e;Li5/u0;)Z
    .registers 7

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lh5/l;->f(Li5/e;)Lv5/f;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    return v0

    :cond_12
    invoke-interface {p2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v1

    sget-object v2, Lk5/d;->a:Lh6/c;

    invoke-interface {v1, v2}, Lj5/h;->g(Lh6/c;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object p0

    iget-boolean p0, p0, Lh5/h$b;->b:Z

    const/4 v1, 0x0

    if-nez p0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x3

    invoke-static {p2, v1, v1, p0}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lv5/f;->D0()Lv5/h;

    move-result-object p1

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object p2

    const-string v3, "functionDescriptor.name"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lq5/d;->d:Lq5/d;

    invoke-virtual {p1, p2, v3}, Lv5/h;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_67

    :cond_4c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/u0;

    invoke-static {p2, v1, v1, p0}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    goto :goto_68

    :cond_67
    :goto_67
    move v0, v1

    :goto_68
    return v0
.end method

.method public c(Lh6/f;Li5/e;)Ljava/util/Collection;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Li5/e;",
            ")",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh5/a;->e:Lh5/a;

    sget-object v0, Lh5/a;->f:Lh6/f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_bd

    instance-of v0, p2, Lw6/d;

    if-eqz v0, :cond_bd

    sget-object v0, Lf5/g;->e:Lh6/f;

    if-eqz p2, :cond_b7

    sget-object v0, Lf5/j$a;->h:Lh6/d;

    invoke-static {p2, v0}, Lf5/g;->c(Li5/h;Lh6/d;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p2}, Lf5/g;->t(Li5/l;)Lf5/h;

    move-result-object v0

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v0, v3

    goto :goto_31

    :cond_30
    :goto_30
    move v0, v2

    :goto_31
    if-eqz v0, :cond_bd

    check-cast p2, Lw6/d;

    iget-object v0, p2, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->q:Ljava/util/List;

    const-string v1, "classDescriptor.classProto.functionList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_6e

    :cond_49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/i;

    iget-object v4, p2, Lw6/d;->l:Lu6/m;

    iget-object v4, v4, Lu6/m;->b:Le6/c;

    iget v1, v1, Lc6/i;->f:I

    invoke-static {v4, v1}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v1

    sget-object v4, Lh5/a;->e:Lh5/a;

    sget-object v4, Lh5/a;->f:Lh6/f;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move v3, v2

    :cond_6e
    :goto_6e
    if-eqz v3, :cond_73

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_73
    iget-object p0, p0, Lh5/l;->e:Lx6/i;

    sget-object v0, Lh5/l;->h:[Lz4/n;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    sget-object v0, Lq5/d;->d:Lq5/d;

    invoke-interface {p0, p1, v0}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->W(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/u0;

    invoke-interface {p0}, Li5/u0;->q()Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p2}, Li5/x$a;->g(Li5/l;)Li5/x$a;

    sget-object p1, Li5/s;->e:Li5/t;

    invoke-interface {p0, p1}, Li5/x$a;->q(Li5/t;)Li5/x$a;

    invoke-virtual {p2}, Ll5/b;->m()Ly6/s0;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/x$a;->a(Ly6/l0;)Li5/x$a;

    invoke-virtual {p2}, Ll5/b;->C0()Li5/r0;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/x$a;->j(Li5/r0;)Li5/x$a;

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Li5/u0;

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b7
    const/16 p0, 0x59

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v1

    :cond_bd
    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object v0

    iget-boolean v0, v0, Lh5/h$b;->b:Z

    if-nez v0, :cond_c8

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_c8
    new-instance v0, Lh5/l$c;

    invoke-direct {v0, p1}, Lh5/l$c;-><init>(Lh6/f;)V

    invoke-virtual {p0, p2}, Lh5/l;->f(Li5/e;)Lv5/f;

    move-result-object p1

    const/4 v4, 0x3

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    const/4 v6, 0x2

    if-nez p1, :cond_db

    sget-object p1, Li4/y;->a:Li4/y;

    goto/16 :goto_272

    :cond_db
    iget-object v7, p0, Lh5/l;->b:Lh5/d;

    invoke-static {p1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v8

    sget-object v9, Lh5/b;->f:Lh5/b;

    sget-object v9, Lh5/b;->g:Lf5/g;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "fqName"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "builtIns"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-static {v7, v8, v9, v1, v10}, Lh5/d;->b(Lh5/d;Lh6/c;Lf5/g;Ljava/lang/Integer;I)Li5/e;

    move-result-object v7

    if-nez v7, :cond_fc

    sget-object v7, Li4/a0;->a:Li4/a0;

    goto :goto_120

    :cond_fc
    sget-object v8, Lh5/c;->a:Lh5/c;

    invoke-static {v7}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v10

    invoke-virtual {v8, v10}, Lh5/c;->i(Lh6/d;)Lh6/c;

    move-result-object v8

    if-nez v8, :cond_10d

    invoke-static {v7}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    goto :goto_120

    :cond_10d
    new-array v10, v6, [Li5/e;

    aput-object v7, v10, v3

    invoke-virtual {v9, v8}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v7

    const-string v8, "builtIns.getBuiltInClass…otlinMutableAnalogFqName)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v10, v2

    invoke-static {v10}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_120
    const-string v8, "<this>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_13e

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_133

    goto :goto_148

    :cond_133
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_15a

    :cond_13e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_14a

    :goto_148
    move-object v8, v1

    goto :goto_15a

    :cond_14a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    :goto_14e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_159

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    goto :goto_14e

    :cond_159
    move-object v8, v9

    :goto_15a
    check-cast v8, Li5/e;

    if-nez v8, :cond_162

    sget-object p1, Li4/y;->a:Li4/y;

    goto/16 :goto_272

    :cond_162
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_171
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_185

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/e;

    invoke-static {v10}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_171

    :cond_185
    const-string v7, "set"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Li7/e;

    invoke-direct {v7, v1}, Li7/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v9}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lh5/l;->b:Lh5/d;

    invoke-virtual {v1, p2}, Lh5/d;->a(Li5/e;)Z

    move-result v1

    iget-object v9, p0, Lh5/l;->f:Lx6/a;

    invoke-static {p1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v10

    new-instance v11, Lh5/o;

    invoke-direct {v11, p1, v8}, Lh5/o;-><init>(Lv5/f;Li5/e;)V

    check-cast v9, Lx6/e$d;

    invoke-virtual {v9, v10, v11}, Lx6/e$d;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/e;

    invoke-interface {p1}, Li5/e;->U()Lr6/i;

    move-result-object p1

    const-string v8, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lh5/l$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_271

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Li5/u0;

    invoke-interface {v9}, Li5/b;->f()Li5/b$a;

    move-result-object v10

    sget-object v11, Li5/b$a;->a:Li5/b$a;

    if-eq v10, v11, :cond_1da

    goto/16 :goto_268

    :cond_1da
    invoke-interface {v9}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v10

    invoke-virtual {v10}, Li5/t;->a()Li5/i1;

    move-result-object v10

    iget-boolean v10, v10, Li5/i1;->b:Z

    if-nez v10, :cond_1e8

    goto/16 :goto_268

    :cond_1e8
    invoke-static {v9}, Lf5/g;->E(Li5/l;)Z

    move-result v10

    if-eqz v10, :cond_1f0

    goto/16 :goto_268

    :cond_1f0
    invoke-interface {v9}, Li5/x;->d()Ljava/util/Collection;

    move-result-object v10

    const-string v11, "analogueMember.overriddenDescriptors"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v11, v10, Ljava/util/Collection;

    if-eqz v11, :cond_204

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_204

    goto :goto_228

    :cond_204
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_208
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_228

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Li5/x;

    invoke-interface {v11}, Li5/x;->b()Li5/l;

    move-result-object v11

    const-string v12, "it.containingDeclaration"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v11

    invoke-virtual {v7, v11}, Li7/e;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_208

    goto :goto_229

    :cond_228
    :goto_228
    move v2, v3

    :goto_229
    if-eqz v2, :cond_22c

    goto :goto_268

    :cond_22c
    invoke-interface {v9}, Li5/x;->b()Li5/l;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li5/e;

    invoke-static {v9, v3, v3, v4}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lh5/s;->a:Lh5/s;

    sget-object v11, Lh5/s;->e:Ljava/util/Set;

    sget-object v12, La6/a0;->a:La6/a0;

    invoke-static {v12, v2, v10}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_24c

    const/4 v2, 0x1

    goto :goto_264

    :cond_24c
    invoke-static {v9}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v9, Lh5/k;->a:Lh5/k;

    new-instance v10, Lh5/q;

    invoke-direct {v10, p0}, Lh5/q;-><init>(Lh5/l;)V

    invoke-static {v2, v9, v10}, Li7/b;->d(Ljava/util/Collection;Li7/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v9, "private fun SimpleFuncti…scriptor)\n        }\n    }"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_264
    if-nez v2, :cond_268

    const/4 v2, 0x1

    goto :goto_269

    :cond_268
    :goto_268
    move v2, v3

    :goto_269
    if-eqz v2, :cond_26e

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26e
    const/4 v2, 0x1

    goto/16 :goto_1c3

    :cond_271
    move-object p1, v0

    :goto_272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27b
    :goto_27b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_318

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/u0;

    invoke-interface {v1}, Li5/x;->b()Li5/l;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li5/e;

    invoke-static {v2, p2}, Lh5/t;->a(Li5/e;Li5/e;)Ly6/l1;

    move-result-object v2

    invoke-virtual {v2}, Ly6/t1;->c()Ly6/x1;

    move-result-object v2

    invoke-interface {v1, v2}, Li5/x;->c(Ly6/x1;)Li5/x;

    move-result-object v2

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li5/u0;

    invoke-interface {v2}, Li5/u0;->q()Li5/x$a;

    move-result-object v2

    invoke-interface {v2, p2}, Li5/x$a;->g(Li5/l;)Li5/x$a;

    move-object v7, p2

    check-cast v7, Ll5/b;

    invoke-virtual {v7}, Ll5/b;->C0()Li5/r0;

    move-result-object v7

    invoke-interface {v2, v7}, Li5/x$a;->j(Li5/r0;)Li5/x$a;

    invoke-interface {v2}, Li5/x$a;->k()Li5/x$a;

    invoke-interface {v1}, Li5/x;->b()Li5/l;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Li5/e;

    invoke-static {v1, v3, v3, v4}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v7}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v9, Ll/e;

    invoke-direct {v9, p0}, Ll/e;-><init>(Lh5/l;)V

    new-instance v10, Lh5/p;

    invoke-direct {v10, v1, v8}, Lh5/p;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v7, v9, v10}, Li7/b;->b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "jvmDescriptor = computeJ…CONSIDERED\n            })"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lh5/l$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2fd

    if-eq v1, v6, :cond_2ed

    if-eq v1, v4, :cond_303

    goto :goto_308

    :cond_2ed
    iget-object v1, p0, Lh5/l;->g:Lx6/i;

    sget-object v7, Lh5/l;->h:[Lz4/n;

    aget-object v7, v7, v6

    invoke-static {v1, v7}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/h;

    invoke-interface {v2, v1}, Li5/x$a;->p(Lj5/h;)Li5/x$a;

    goto :goto_308

    :cond_2fd
    invoke-static {p2}, Lv1/j;->b(Li5/e;)Z

    move-result v1

    if-eqz v1, :cond_305

    :cond_303
    const/4 v1, 0x0

    goto :goto_311

    :cond_305
    invoke-interface {v2}, Li5/x$a;->e()Li5/x$a;

    :goto_308
    invoke-interface {v2}, Li5/x$a;->build()Li5/x;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Li5/u0;

    :goto_311
    if-eqz v1, :cond_27b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27b

    :cond_318
    return-object v0
.end method

.method public d(Li5/e;)Ljava/util/Collection;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lw6/d;

    iget-object v0, v0, Lw6/d;->k:Li5/f;

    sget-object v1, Li5/f;->a:Li5/f;

    if-ne v0, v1, :cond_174

    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object v0

    iget-boolean v0, v0, Lh5/h$b;->b:Z

    if-nez v0, :cond_18

    goto/16 :goto_174

    :cond_18
    invoke-virtual {p0, p1}, Lh5/l;->f(Li5/e;)Lv5/f;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_21
    iget-object v1, p0, Lh5/l;->b:Lh5/d;

    invoke-static {v0}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v2

    sget-object v3, Lh5/b;->f:Lh5/b;

    sget-object v3, Lh5/b;->g:Lf5/g;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lh5/d;->b(Lh5/d;Lh6/c;Lf5/g;Ljava/lang/Integer;I)Li5/e;

    move-result-object v1

    if-nez v1, :cond_36

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_36
    invoke-static {v1, v0}, Lh5/t;->a(Li5/e;Li5/e;)Ly6/l1;

    move-result-object v2

    invoke-virtual {v2}, Ly6/t1;->c()Ly6/x1;

    move-result-object v2

    iget-object v3, v0, Lv5/f;->r:Lv5/h;

    iget-object v3, v3, Lv5/h;->q:Lx6/i;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v6, :cond_10a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Li5/d;

    invoke-interface {v9}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v10

    invoke-virtual {v10}, Li5/t;->a()Li5/i1;

    move-result-object v10

    iget-boolean v10, v10, Li5/i1;->b:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_103

    invoke-interface {v1}, Li5/e;->i()Ljava/util/Collection;

    move-result-object v10

    const-string v12, "defaultKotlinVersion.constructors"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_81

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_81

    goto :goto_a9

    :cond_81
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_85
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/d;

    const-string v13, "it"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Li5/k;->c(Ly6/x1;)Li5/k;

    move-result-object v13

    invoke-static {v12, v13}, Lk6/o;->j(Li5/a;Li5/a;)Lk6/o$c$a;

    move-result-object v12

    sget-object v13, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne v12, v13, :cond_a4

    move v12, v11

    goto :goto_a5

    :cond_a4
    move v12, v8

    :goto_a5
    if-eqz v12, :cond_85

    move v10, v8

    goto :goto_aa

    :cond_a9
    :goto_a9
    move v10, v11

    :goto_aa
    if-eqz v10, :cond_103

    invoke-interface {v9}, Li5/a;->g()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v11, :cond_e5

    invoke-interface {v9}, Li5/a;->g()Ljava/util/List;

    move-result-object v10

    const-string v12, "valueParameters"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/e1;

    invoke-interface {v10}, Li5/d1;->getType()Ly6/l0;

    move-result-object v10

    invoke-virtual {v10}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v10

    invoke-interface {v10}, Ly6/j1;->e()Li5/h;

    move-result-object v10

    if-eqz v10, :cond_d8

    invoke-static {v10}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v10

    goto :goto_d9

    :cond_d8
    move-object v10, v5

    :goto_d9
    invoke-static {p1}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e5

    move v10, v11

    goto :goto_e6

    :cond_e5
    move v10, v8

    :goto_e6
    if-nez v10, :cond_103

    invoke-static {v9}, Lf5/g;->E(Li5/l;)Z

    move-result v10

    if-nez v10, :cond_103

    sget-object v10, Lh5/s;->a:Lh5/s;

    sget-object v10, Lh5/s;->f:Ljava/util/Set;

    sget-object v12, La6/a0;->a:La6/a0;

    invoke-static {v9, v8, v8, v7}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v0, v7}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    move v8, v11

    :cond_103
    if-eqz v8, :cond_51

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51

    :cond_10a
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v4, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_119
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/d;

    invoke-interface {v4}, Li5/x;->q()Li5/x$a;

    move-result-object v5

    invoke-interface {v5, p1}, Li5/x$a;->g(Li5/l;)Li5/x$a;

    move-object v6, p1

    check-cast v6, Ll5/b;

    invoke-virtual {v6}, Ll5/b;->m()Ly6/s0;

    move-result-object v6

    invoke-interface {v5, v6}, Li5/x$a;->a(Ly6/l0;)Li5/x$a;

    invoke-interface {v5}, Li5/x$a;->k()Li5/x$a;

    invoke-virtual {v2}, Ly6/x1;->g()Ly6/t1;

    move-result-object v6

    invoke-interface {v5, v6}, Li5/x$a;->o(Ly6/t1;)Li5/x$a;

    sget-object v6, Lh5/s;->a:Lh5/s;

    sget-object v6, Lh5/s;->g:Ljava/util/Set;

    sget-object v9, La6/a0;->a:La6/a0;

    invoke-static {v4, v8, v8, v7}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v0, v4}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_164

    iget-object v4, p0, Lh5/l;->g:Lx6/i;

    sget-object v6, Lh5/l;->h:[Lz4/n;

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v4, v6}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj5/h;

    invoke-interface {v5, v4}, Li5/x$a;->p(Lj5/h;)Li5/x$a;

    :cond_164
    invoke-interface {v5}, Li5/x$a;->build()Li5/x;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Li5/d;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_119

    :cond_173
    return-object v1

    :cond_174
    :goto_174
    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public e(Li5/e;)Ljava/util/Collection;
    .registers 3

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object v0

    iget-boolean v0, v0, Lh5/h$b;->b:Z

    if-nez v0, :cond_10

    sget-object p0, Li4/a0;->a:Li4/a0;

    goto :goto_24

    :cond_10
    invoke-virtual {p0, p1}, Lh5/l;->f(Li5/e;)Lv5/f;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lv5/f;->D0()Lv5/h;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lv5/l;->a()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_24

    :cond_22
    sget-object p0, Li4/a0;->a:Li4/a0;

    :cond_24
    :goto_24
    return-object p0
.end method

.method public final f(Li5/e;)Lv5/f;
    .registers 4

    sget-object v0, Lf5/g;->e:Lh6/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    sget-object v1, Lf5/j$a;->b:Lh6/d;

    invoke-static {p1, v1}, Lf5/g;->c(Li5/h;Lh6/d;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    invoke-static {p1}, Lf5/g;->P(Li5/l;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    invoke-static {p1}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object p1

    invoke-virtual {p1}, Lh6/d;->f()Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    sget-object v1, Lh5/c;->a:Lh5/c;

    invoke-virtual {v1, p1}, Lh5/c;->h(Lh6/d;)Lh6/b;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object p1

    if-nez p1, :cond_2f

    goto :goto_42

    :cond_2f
    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object p0

    iget-object p0, p0, Lh5/h$b;->a:Li5/e0;

    sget-object v1, Lq5/d;->d:Lq5/d;

    invoke-static {p0, p1, v1}, Li5/r;->b(Li5/e0;Lh6/c;Lq5/b;)Li5/e;

    move-result-object p0

    instance-of p1, p0, Lv5/f;

    if-eqz p1, :cond_42

    move-object v0, p0

    check-cast v0, Lv5/f;

    :cond_42
    :goto_42
    return-object v0

    :cond_43
    const/16 p0, 0x6c

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v0
.end method

.method public final g()Lh5/h$b;
    .registers 3

    iget-object p0, p0, Lh5/l;->c:Lx6/i;

    sget-object v0, Lh5/l;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh5/h$b;

    return-object p0
.end method

.class public final Lv5/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/c;
.implements Lt5/g;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaAnnotationDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaAnnotationDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n*S KotlinDebug\n*F\n+ 1 LazyJavaAnnotationDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor\n*L\n94#1:125\n94#1:126,3\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lz4/n;
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
.field public final a:Lu5/g;

.field public final b:Ly5/a;

.field public final c:Lx6/j;

.field public final d:Lx6/i;

.field public final e:Lx5/a;

.field public final f:Lx6/i;

.field public final g:Z

.field public final h:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lv5/e;

    const/4 v1, 0x3

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lv5/e;->i:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu5/g;Ly5/a;Z)V
    .registers 6

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5/e;->a:Lu5/g;

    iput-object p2, p0, Lv5/e;->b:Ly5/a;

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/e$b;

    invoke-direct {v1, p0}, Lv5/e$b;-><init>(Lv5/e;)V

    invoke-interface {v0, v1}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object v0

    iput-object v0, p0, Lv5/e;->c:Lx6/j;

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/e$c;

    invoke-direct {v1, p0}, Lv5/e$c;-><init>(Lv5/e;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object v0

    iput-object v0, p0, Lv5/e;->d:Lx6/i;

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->j:Lx5/b;

    invoke-interface {v0, p2}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v0

    iput-object v0, p0, Lv5/e;->e:Lx5/a;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance v0, Lv5/e$a;

    invoke-direct {v0, p0}, Lv5/e$a;-><init>(Lv5/e;)V

    invoke-interface {p1, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/e;->f:Lx6/i;

    invoke-interface {p2}, Ly5/a;->d()Z

    move-result p1

    iput-boolean p1, p0, Lv5/e;->g:Z

    invoke-interface {p2}, Ly5/a;->C()Z

    move-result p1

    if-nez p1, :cond_59

    if-eqz p3, :cond_57

    goto :goto_59

    :cond_57
    const/4 p1, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 p1, 0x1

    :goto_5a
    iput-boolean p1, p0, Lv5/e;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lv5/e;->f:Lx6/i;

    sget-object v0, Lv5/e;->i:[Lz4/n;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final b(Ly5/b;)Lm6/g;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/b;",
            ")",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    instance-of v0, p1, Ly5/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    sget-object p0, Lm6/h;->a:Lm6/h;

    check-cast p1, Ly5/o;

    invoke-interface {p1}, Ly5/o;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lm6/h;->b(Ljava/lang/Object;Li5/e0;)Lm6/g;

    move-result-object v1

    goto/16 :goto_163

    :cond_13
    instance-of v0, p1, Ly5/m;

    if-eqz v0, :cond_2e

    check-cast p1, Ly5/m;

    invoke-interface {p1}, Ly5/m;->d()Lh6/b;

    move-result-object p0

    invoke-interface {p1}, Ly5/m;->e()Lh6/f;

    move-result-object p1

    if-eqz p0, :cond_163

    if-nez p1, :cond_27

    goto/16 :goto_163

    :cond_27
    new-instance v1, Lm6/j;

    invoke-direct {v1, p0, p1}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    goto/16 :goto_163

    :cond_2e
    instance-of v0, p1, Ly5/e;

    const/4 v2, 0x0

    if-eqz v0, :cond_ca

    check-cast p1, Ly5/e;

    invoke-interface {p1}, Ly5/b;->getName()Lh6/f;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-object v0, Lr5/f0;->b:Lh6/f;

    :cond_3d
    const-string v3, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/e;->c()Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lv5/e;->d:Lx6/i;

    sget-object v4, Lv5/e;->i:[Lz4/n;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly6/s0;

    const-string v4, "type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ly0/b;->c(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto/16 :goto_163

    :cond_60
    invoke-static {p0}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ls5/a;->b(Lh6/f;Li5/e;)Li5/e1;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    if-nez v0, :cond_8b

    :cond_73
    iget-object v0, p0, Lv5/e;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->o:Li5/e0;

    invoke-interface {v0}, Li5/e0;->k()Lf5/g;

    move-result-object v0

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    sget-object v3, La7/i;->J0:La7/i;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v3, v2}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf5/g;->h(Ly6/e2;Ly6/l0;)Ly6/s0;

    move-result-object v0

    :cond_8b
    const-string v1, "DescriptorResolverUtils.…GUMENT)\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/b;

    invoke-virtual {p0, v2}, Lv5/e;->b(Ly5/b;)Lm6/g;

    move-result-object v2

    if-nez v2, :cond_b6

    new-instance v2, Lm6/t;

    invoke-direct {v2}, Lm6/t;-><init>()V

    :cond_b6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_ba
    const-string p0, "value"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lm6/w;

    invoke-direct {p0, v1, v0}, Lm6/w;-><init>(Ljava/util/List;Ly6/l0;)V

    :goto_c7
    move-object v1, p0

    goto/16 :goto_163

    :cond_ca
    instance-of v0, p1, Ly5/c;

    if-eqz v0, :cond_e2

    check-cast p1, Ly5/c;

    invoke-interface {p1}, Ly5/c;->a()Ly5/a;

    move-result-object p1

    new-instance v1, Lm6/a;

    new-instance v0, Lv5/e;

    iget-object p0, p0, Lv5/e;->a:Lu5/g;

    invoke-direct {v0, p0, p1, v2}, Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V

    invoke-direct {v1, v0}, Lm6/a;-><init>(Lj5/c;)V

    goto/16 :goto_163

    :cond_e2
    instance-of v0, p1, Ly5/h;

    if-eqz v0, :cond_163

    check-cast p1, Ly5/h;

    invoke-interface {p1}, Ly5/h;->b()Ly5/x;

    move-result-object p1

    iget-object p0, p0, Lv5/e;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->e:Lw5/e;

    sget-object v0, Ly6/z1;->b:Ly6/z1;

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v1, v3}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object p0

    const-string p1, "argumentType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly0/b;->c(Ly6/l0;)Z

    move-result p1

    if-eqz p1, :cond_107

    goto :goto_163

    :cond_107
    move-object p1, p0

    move v0, v2

    :goto_109
    invoke-static {p1}, Lf5/g;->A(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_125

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/q1;

    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p1

    const-string v3, "type.arguments.single().type"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_109

    :cond_125
    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p1

    instance-of v3, p1, Li5/e;

    if-eqz v3, :cond_149

    invoke-static {p1}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object p1

    if-nez p1, :cond_142

    new-instance v1, Lm6/r;

    new-instance p1, Lm6/r$a$a;

    invoke-direct {p1, p0}, Lm6/r$a$a;-><init>(Ly6/l0;)V

    invoke-direct {v1, p1}, Lm6/r;-><init>(Lm6/r$a;)V

    goto :goto_163

    :cond_142
    new-instance p0, Lm6/r;

    invoke-direct {p0, p1, v0}, Lm6/r;-><init>(Lh6/b;I)V

    goto/16 :goto_c7

    :cond_149
    instance-of p0, p1, Li5/a1;

    if-eqz p0, :cond_163

    new-instance p0, Lm6/r;

    sget-object p1, Lf5/j$a;->b:Lh6/d;

    invoke-virtual {p1}, Lh6/d;->i()Lh6/c;

    move-result-object p1

    invoke-static {p1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p1

    const-string v0, "topLevel(StandardNames.FqNames.any.toSafe())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lm6/r;-><init>(Lh6/b;I)V

    goto/16 :goto_c7

    :cond_163
    :goto_163
    return-object v1
.end method

.method public d()Z
    .registers 1

    iget-boolean p0, p0, Lv5/e;->g:Z

    return p0
.end method

.method public e()Lh6/c;
    .registers 3

    iget-object p0, p0, Lv5/e;->c:Lx6/j;

    sget-object v0, Lv5/e;->i:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/c;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, Lv5/e;->e:Lx5/a;

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 3

    iget-object p0, p0, Lv5/e;->d:Lx6/i;

    sget-object v0, Lv5/e;->i:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    sget-object v0, Lj6/c;->a:Lj6/c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lj6/c;->r(Lj6/c;Lj5/c;Lj5/e;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

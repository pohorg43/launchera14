.class public final Lc5/x$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/x;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/x;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ld5/f<",
        "+",
        "Ljava/lang/reflect/Executable;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKFunctionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KFunctionImpl.kt\nkotlin/reflect/jvm/internal/KFunctionImpl$defaultCaller$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1549#2:189\n1620#2,3:190\n1549#2:193\n1620#2,3:194\n*S KotlinDebug\n*F\n+ 1 KFunctionImpl.kt\nkotlin/reflect/jvm/internal/KFunctionImpl$defaultCaller$2\n*L\n101#1:189\n101#1:190,3\n106#1:193\n106#1:194,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/x;


# direct methods
.method public constructor <init>(Lc5/x;)V
    .registers 2

    iput-object p1, p0, Lc5/x$b;->a:Lc5/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 13

    sget-object v3, Ld5/a$a;->a:Ld5/a$a;

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    iget-object v0, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {v0}, Lc5/x;->o()Li5/x;

    move-result-object v0

    invoke-static {v0}, Lc5/t0;->d(Li5/x;)Lc5/g;

    move-result-object v0

    instance-of v1, v0, Lc5/g$e;

    const-string v2, "desc"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    iget-object v6, v1, Lc5/x;->f:Lc5/t;

    check-cast v0, Lc5/g$e;

    iget-object v0, v0, Lc5/g$e;->a:Lg6/d$b;

    iget-object v3, v0, Lg6/d$b;->a:Ljava/lang/String;

    iget-object v0, v0, Lg6/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lc5/x;->e()Ld5/f;

    move-result-object v1

    invoke-interface {v1}, Ld5/f;->b()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<init>"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto/16 :goto_124

    :cond_4c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_5a

    invoke-interface {v6}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    const/4 v2, 0x0

    invoke-virtual {v6, v1, v0, v2}, Lc5/t;->b(Ljava/util/List;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lc5/t;->j()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "$default"

    invoke-static {v3, v8}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {v6, v0}, Lc5/t;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual/range {v6 .. v11}, Lc5/t;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_125

    :cond_7b
    instance-of v1, v0, Lc5/g$d;

    const/16 v6, 0xa

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/i;->j()Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v0, p0, Lc5/x$b;->a:Lc5/x;

    iget-object v0, v0, Lc5/x;->f:Lc5/t;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {p0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m;

    invoke-interface {v0}, Lz4/m;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    :cond_bb
    sget-object v4, Ld5/a$b;->b:Ld5/a$b;

    const/4 v5, 0x0

    const/16 v6, 0x10

    new-instance p0, Ld5/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ld5/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ld5/a$a;Ld5/a$b;Ljava/util/List;I)V

    goto/16 :goto_191

    :cond_c8
    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    iget-object v1, v1, Lc5/x;->f:Lc5/t;

    check-cast v0, Lc5/g$d;

    iget-object v0, v0, Lc5/g$d;->a:Lg6/d$b;

    iget-object v0, v0, Lg6/d$b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v0, v5}, Lc5/t;->b(Ljava/util/List;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lc5/t;->p(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_125

    :cond_e9
    instance-of v1, v0, Lc5/g$a;

    if-eqz v1, :cond_124

    check-cast v0, Lc5/g$a;

    iget-object v5, v0, Lc5/g$a;->a:Ljava/util/List;

    iget-object p0, p0, Lc5/x$b;->a:Lc5/x;

    iget-object p0, p0, Lc5/x;->f:Lc5/t;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_106
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    :cond_11a
    sget-object v4, Ld5/a$b;->a:Ld5/a$b;

    new-instance p0, Ld5/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ld5/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ld5/a$a;Ld5/a$b;Ljava/util/List;)V

    goto/16 :goto_191

    :cond_124
    :goto_124
    move-object v0, v4

    :goto_125
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_136

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lc5/x;->o()Li5/x;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lc5/x;->l(Lc5/x;Ljava/lang/reflect/Constructor;Li5/x;Z)Ld5/g;

    move-result-object v0

    goto :goto_184

    :cond_136
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_183

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/x;->o()Li5/x;

    move-result-object v1

    invoke-interface {v1}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v1

    sget-object v2, Lc5/w0;->a:Lh6/c;

    invoke-interface {v1, v2}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object v1

    if-eqz v1, :cond_17a

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/x;->o()Li5/x;

    move-result-object v1

    invoke-interface {v1}, Li5/x;->b()Li5/l;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li5/e;

    invoke-interface {v1}, Li5/e;->X()Z

    move-result v1

    if-nez v1, :cond_17a

    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Lc5/x;->k()Z

    move-result v1

    if-eqz v1, :cond_173

    new-instance v1, Ld5/g$g$b;

    invoke-direct {v1, v0}, Ld5/g$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_178

    :cond_173
    new-instance v1, Ld5/g$g$e;

    invoke-direct {v1, v0}, Ld5/g$g$e;-><init>(Ljava/lang/reflect/Method;)V

    :goto_178
    move-object v0, v1

    goto :goto_184

    :cond_17a
    iget-object v1, p0, Lc5/x$b;->a:Lc5/x;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v1, v0}, Lc5/x;->m(Lc5/x;Ljava/lang/reflect/Method;)Ld5/g$g;

    move-result-object v0

    goto :goto_184

    :cond_183
    move-object v0, v4

    :goto_184
    if-eqz v0, :cond_190

    iget-object p0, p0, Lc5/x$b;->a:Lc5/x;

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-static {v0, p0, v5}, Ld5/j;->b(Ld5/f;Li5/b;Z)Ld5/f;

    move-result-object v4

    :cond_190
    move-object p0, v4

    :goto_191
    return-object p0
.end method

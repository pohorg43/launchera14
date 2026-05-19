.class public final Lc5/x$a;
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
        "SMAP\nKFunctionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KFunctionImpl.kt\nkotlin/reflect/jvm/internal/KFunctionImpl$caller$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1549#2:189\n1620#2,3:190\n1549#2:193\n1620#2,3:194\n*S KotlinDebug\n*F\n+ 1 KFunctionImpl.kt\nkotlin/reflect/jvm/internal/KFunctionImpl$caller$2\n*L\n66#1:189\n66#1:190,3\n74#1:193\n74#1:194,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/x;


# direct methods
.method public constructor <init>(Lc5/x;)V
    .registers 2

    iput-object p1, p0, Lc5/x$a;->a:Lc5/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 9

    sget-object v3, Ld5/a$a;->b:Ld5/a$a;

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    iget-object v0, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {v0}, Lc5/x;->o()Li5/x;

    move-result-object v0

    invoke-static {v0}, Lc5/t0;->d(Li5/x;)Lc5/g;

    move-result-object v0

    instance-of v1, v0, Lc5/g$d;

    const/16 v2, 0xa

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/i;->j()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lc5/x$a;->a:Lc5/x;

    iget-object v0, v0, Lc5/x;->f:Lc5/t;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {p0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m;

    invoke-interface {v0}, Lz4/m;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4e
    sget-object p0, Ld5/a$b;->b:Ld5/a$b;

    const/4 v5, 0x0

    const/16 v6, 0x10

    new-instance v7, Ld5/a;

    move-object v0, v7

    move-object v2, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Ld5/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ld5/a$a;Ld5/a$b;Ljava/util/List;I)V

    goto/16 :goto_175

    :cond_5d
    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    iget-object v1, v1, Lc5/x;->f:Lc5/t;

    check-cast v0, Lc5/g$d;

    iget-object v0, v0, Lc5/g$d;->a:Lg6/d$b;

    iget-object v0, v0, Lg6/d$b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "desc"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0}, Lc5/t;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lc5/t;->p(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_a2

    :cond_7c
    instance-of v1, v0, Lc5/g$e;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    iget-object v1, v1, Lc5/x;->f:Lc5/t;

    check-cast v0, Lc5/g$e;

    iget-object v0, v0, Lc5/g$e;->a:Lg6/d$b;

    iget-object v2, v0, Lg6/d$b;->a:Ljava/lang/String;

    iget-object v0, v0, Lg6/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lc5/t;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_a2

    :cond_91
    instance-of v1, v0, Lc5/g$c;

    if-eqz v1, :cond_9a

    check-cast v0, Lc5/g$c;

    iget-object v0, v0, Lc5/g$c;->a:Ljava/lang/reflect/Method;

    goto :goto_a2

    :cond_9a
    instance-of v1, v0, Lc5/g$b;

    if-eqz v1, :cond_13b

    check-cast v0, Lc5/g$b;

    iget-object v0, v0, Lc5/g$b;->a:Ljava/lang/reflect/Constructor;

    :goto_a2
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lc5/x;->o()Li5/x;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lc5/x;->l(Lc5/x;Ljava/lang/reflect/Constructor;Li5/x;Z)Ld5/g;

    move-result-object v0

    goto :goto_10a

    :cond_b4
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_115

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/x;->k()Z

    move-result v3

    if-eqz v3, :cond_d7

    new-instance v3, Ld5/g$g$a;

    invoke-virtual {v1}, Lc5/x;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ld5/g$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_10a

    :cond_d7
    new-instance v1, Ld5/g$g$d;

    invoke-direct {v1, v0}, Ld5/g$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_dc
    move-object v0, v1

    goto :goto_10a

    :cond_de
    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/x;->o()Li5/x;

    move-result-object v1

    invoke-interface {v1}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v1

    sget-object v3, Lc5/w0;->a:Lh6/c;

    invoke-interface {v1, v3}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object v1

    if-eqz v1, :cond_104

    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {v1}, Lc5/x;->k()Z

    move-result v1

    if-eqz v1, :cond_fe

    new-instance v1, Ld5/g$g$b;

    invoke-direct {v1, v0}, Ld5/g$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_dc

    :cond_fe
    new-instance v1, Ld5/g$g$e;

    invoke-direct {v1, v0}, Ld5/g$g$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_dc

    :cond_104
    iget-object v1, p0, Lc5/x$a;->a:Lc5/x;

    invoke-static {v1, v0}, Lc5/x;->m(Lc5/x;Ljava/lang/reflect/Method;)Ld5/g$g;

    move-result-object v0

    :goto_10a
    iget-object p0, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-static {v0, p0, v2}, Ld5/j;->b(Ld5/f;Li5/b;Z)Ld5/f;

    move-result-object v7

    goto :goto_175

    :cond_115
    new-instance v1, Lc5/n0;

    const-string v2, "Could not compute caller for function: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lc5/x$a;->a:Lc5/x;

    invoke-virtual {p0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (member = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13b
    instance-of v1, v0, Lc5/g$a;

    if-eqz v1, :cond_176

    check-cast v0, Lc5/g$a;

    iget-object v5, v0, Lc5/g$a;->a:Ljava/util/List;

    iget-object p0, p0, Lc5/x$a;->a:Lc5/x;

    iget-object p0, p0, Lc5/x;->f:Lc5/t;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_158
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158

    :cond_16c
    sget-object v4, Ld5/a$b;->a:Ld5/a$b;

    new-instance v7, Ld5/a;

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ld5/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ld5/a$a;Ld5/a$b;Ljava/util/List;)V

    :goto_175
    return-object v7

    :cond_176
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

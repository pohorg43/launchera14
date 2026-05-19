.class public final Lc5/o$a$q;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lc5/k0;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKClassImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n1620#2,3:334\n1726#2,3:337\n*S KotlinDebug\n*F\n+ 1 KClassImpl.kt\nkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2\n*L\n127#1:334,3\n144#1:337,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final synthetic b:Lc5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o$a;Lc5/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>.a;",
            "Lc5/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$q;->a:Lc5/o$a;

    iput-object p2, p0, Lc5/o$a$q;->b:Lc5/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lc5/o$a$q;->a:Lc5/o$a;

    invoke-virtual {v0}, Lc5/o$a;->a()Li5/e;

    move-result-object v0

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lc5/o$a$q;->a:Lc5/o$a;

    iget-object v3, p0, Lc5/o$a$q;->b:Lc5/o;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    new-instance v5, Lc5/k0;

    const-string v6, "kotlinType"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lc5/p;

    invoke-direct {v6, v4, v2, v3}, Lc5/p;-><init>(Ly6/l0;Lc5/o$a;Lc5/o;)V

    invoke-direct {v5, v4, v6}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_43
    iget-object v0, p0, Lc5/o$a$q;->a:Lc5/o$a;

    invoke-virtual {v0}, Lc5/o$a;->a()Li5/e;

    move-result-object v0

    invoke-static {v0}, Lf5/g;->M(Li5/e;)Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_58

    goto :goto_86

    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/k0;

    iget-object v4, v4, Lc5/k0;->a:Ly6/l0;

    invoke-static {v4}, Lk6/i;->c(Ly6/l0;)Li5/e;

    move-result-object v4

    invoke-interface {v4}, Li5/e;->f()Li5/f;

    move-result-object v4

    const-string v5, "getClassDescriptorForType(it.type).kind"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Li5/f;->b:Li5/f;

    if-eq v4, v5, :cond_82

    sget-object v5, Li5/f;->e:Li5/f;

    if-ne v4, v5, :cond_80

    goto :goto_82

    :cond_80
    move v4, v2

    goto :goto_83

    :cond_82
    :goto_82
    move v4, v3

    :goto_83
    if-nez v4, :cond_5c

    goto :goto_87

    :cond_86
    :goto_86
    move v2, v3

    :goto_87
    if-eqz v2, :cond_a6

    new-instance v0, Lc5/k0;

    iget-object p0, p0, Lc5/o$a$q;->a:Lc5/o$a;

    invoke-virtual {p0}, Lc5/o$a;->a()Li5/e;

    move-result-object p0

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->f()Ly6/s0;

    move-result-object p0

    const-string v2, "descriptor.builtIns.anyType"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lc5/q;->a:Lc5/q;

    invoke-direct {v0, p0, v2}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    invoke-static {v1}, Li7/a;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.class public final Lc5/k0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V
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
        "Lz4/t;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKTypeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KTypeImpl.kt\nkotlin/reflect/jvm/internal/KTypeImpl$arguments$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1559#2:137\n1590#2,4:138\n*S KotlinDebug\n*F\n+ 1 KTypeImpl.kt\nkotlin/reflect/jvm/internal/KTypeImpl$arguments$2\n*L\n81#1:137\n81#1:138,4\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/k0;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/k0;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/k0;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/k0$a;->a:Lc5/k0;

    iput-object p2, p0, Lc5/k0$a;->b:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lc5/k0$a;->a:Lc5/k0;

    iget-object v0, v0, Lc5/k0;->a:Ly6/l0;

    invoke-virtual {v0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Li4/y;->a:Li4/y;

    goto/16 :goto_a7

    :cond_12
    sget-object v1, Lkotlin/a;->b:Lkotlin/a;

    new-instance v2, Lc5/j0;

    iget-object v3, p0, Lc5/k0$a;->a:Lc5/k0;

    invoke-direct {v2, v3}, Lc5/j0;-><init>(Lc5/k0;)V

    invoke-static {v1, v2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iget-object v2, p0, Lc5/k0$a;->b:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lc5/k0$a;->a:Lc5/k0;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    if-ltz v4, :cond_a2

    check-cast v5, Ly6/q1;

    invoke-interface {v5}, Ly6/q1;->b()Z

    move-result v8

    if-eqz v8, :cond_4f

    sget-object v4, Lz4/t;->c:Lz4/t$a;

    sget-object v4, Lz4/t;->d:Lz4/t;

    goto :goto_9d

    :cond_4f
    new-instance v8, Lc5/k0;

    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v9

    const-string v10, "typeProjection.type"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_5d

    goto :goto_62

    :cond_5d
    new-instance v7, Lc5/i0;

    invoke-direct {v7, p0, v4, v1}, Lc5/i0;-><init>(Lc5/k0;ILh4/f;)V

    :goto_62
    invoke-direct {v8, v9, v7}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v5}, Ly6/q1;->c()Ly6/e2;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_97

    const-string v5, "type"

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8a

    const/4 v7, 0x2

    if-ne v4, v7, :cond_84

    sget-object v4, Lz4/t;->c:Lz4/t$a;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lz4/t;

    sget-object v5, Lz4/u;->c:Lz4/u;

    invoke-direct {v4, v5, v8}, Lz4/t;-><init>(Lz4/u;Lz4/r;)V

    goto :goto_9d

    :cond_84
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_8a
    sget-object v4, Lz4/t;->c:Lz4/t$a;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lz4/t;

    sget-object v5, Lz4/u;->b:Lz4/u;

    invoke-direct {v4, v5, v8}, Lz4/t;-><init>(Lz4/u;Lz4/r;)V

    goto :goto_9d

    :cond_97
    sget-object v4, Lz4/t;->c:Lz4/t$a;

    invoke-virtual {v4, v8}, Lz4/t$a;->a(Lz4/r;)Lz4/t;

    move-result-object v4

    :goto_9d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_33

    :cond_a2
    invoke-static {}, Li4/o;->k()V

    throw v7

    :cond_a6
    move-object p0, v3

    :goto_a7
    return-object p0
.end method

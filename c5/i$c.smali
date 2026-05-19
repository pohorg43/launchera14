.class public final Lc5/i$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lz4/m;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKCallableImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1002#2,2:244\n*S KotlinDebug\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1\n*L\n64#1:244,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/i<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/i<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/i$c;->a:Lc5/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lc5/i$c;->a:Lc5/i;

    invoke-virtual {v0}, Lc5/i;->i()Li5/b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lc5/i$c;->a:Lc5/i;

    invoke-virtual {v2}, Lc5/i;->k()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4a

    invoke-static {v0}, Lc5/w0;->g(Li5/a;)Li5/r0;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v5, Lc5/c0;

    iget-object v6, p0, Lc5/i$c;->a:Lc5/i;

    sget-object v7, Lz4/m$a;->a:Lz4/m$a;

    new-instance v8, Lc5/j;

    invoke-direct {v8, v2}, Lc5/j;-><init>(Li5/r0;)V

    invoke-direct {v5, v6, v3, v7, v8}, Lc5/c0;-><init>(Lc5/i;ILz4/m$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    invoke-interface {v0}, Li5/a;->L()Li5/r0;

    move-result-object v5

    if-eqz v5, :cond_4b

    new-instance v6, Lc5/c0;

    iget-object v7, p0, Lc5/i$c;->a:Lc5/i;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lz4/m$a;->b:Lz4/m$a;

    new-instance v10, Lc5/k;

    invoke-direct {v10, v5}, Lc5/k;-><init>(Li5/r0;)V

    invoke-direct {v6, v7, v2, v9, v10}, Lc5/c0;-><init>(Lc5/i;ILz4/m$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_4b

    :cond_4a
    move v2, v3

    :cond_4b
    :goto_4b
    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_53
    if-ge v3, v5, :cond_6c

    new-instance v6, Lc5/c0;

    iget-object v7, p0, Lc5/i$c;->a:Lc5/i;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lz4/m$a;->c:Lz4/m$a;

    new-instance v10, Lc5/l;

    invoke-direct {v10, v0, v3}, Lc5/l;-><init>(Li5/b;I)V

    invoke-direct {v6, v7, v2, v9, v10}, Lc5/c0;-><init>(Lc5/i;ILz4/m$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_53

    :cond_6c
    iget-object p0, p0, Lc5/i$c;->a:Lc5/i;

    invoke-virtual {p0}, Lc5/i;->j()Z

    move-result p0

    if-eqz p0, :cond_86

    instance-of p0, v0, Lt5/a;

    if-eqz p0, :cond_86

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v4, :cond_86

    new-instance p0, Lc5/m;

    invoke-direct {p0}, Lc5/m;-><init>()V

    invoke-static {v1, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_86
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method

.class public final Lc5/i$a;
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
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKCallableImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1855#2,2:244\n*S KotlinDebug\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1\n*L\n122#1:244,2\n*E\n"
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

    iput-object p1, p0, Lc5/i$a;->a:Lc5/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lc5/i$a;->a:Lc5/i;

    invoke-virtual {v0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc5/i$a;->a:Lc5/i;

    invoke-interface {v1}, Lz4/c;->isSuspend()Z

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc5/i$a;->a:Lc5/i;

    invoke-virtual {v0}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x20

    add-int v3, v1, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lc5/i$a;->a:Lc5/i;

    invoke-virtual {v4}, Lc5/i;->getParameters()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lc5/i$a;->a:Lc5/i;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz4/m;

    invoke-interface {v5}, Lz4/m;->c()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v5}, Lz4/m;->getType()Lz4/r;

    move-result-object v7

    sget-object v8, Lc5/w0;->a:Lh6/c;

    const-string v8, "<this>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v7, Lc5/k0;

    if-eqz v8, :cond_57

    check-cast v7, Lc5/k0;

    goto :goto_58

    :cond_57
    const/4 v7, 0x0

    :goto_58
    if-eqz v7, :cond_65

    iget-object v7, v7, Lc5/k0;->a:Ly6/l0;

    if-eqz v7, :cond_65

    invoke-static {v7}, Lk6/k;->c(Ly6/l0;)Z

    move-result v7

    if-ne v7, v2, :cond_65

    move v6, v2

    :cond_65
    if-nez v6, :cond_7a

    invoke-interface {v5}, Lz4/m;->getIndex()I

    move-result v6

    invoke-interface {v5}, Lz4/m;->getType()Lz4/r;

    move-result-object v5

    invoke-static {v5}, Lb5/c;->e(Lz4/r;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5}, Lc5/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v6

    goto :goto_32

    :cond_7a
    invoke-interface {v5}, Lz4/m;->a()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v5}, Lz4/m;->getIndex()I

    move-result v6

    invoke-interface {v5}, Lz4/m;->getType()Lz4/r;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc5/i;->d(Lz4/r;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v6

    goto :goto_32

    :cond_8f
    move p0, v6

    :goto_90
    if-ge p0, v0, :cond_9d

    add-int v2, v1, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_90

    :cond_9d
    return-object v3
.end method

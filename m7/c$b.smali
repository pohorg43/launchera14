.class public final Lm7/c$b;
.super Lm7/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13579#2,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n96#1:128,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:[Lm7/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/c;[Lm7/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/j;-><init>()V

    iput-object p2, p0, Lm7/c$b;->a:[Lm7/c$a;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0}, Lm7/c$b;->h()V

    return-void
.end method

.method public final h()V
    .registers 4

    iget-object p0, p0, Lm7/c$b;->a:[Lm7/c$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    iget-object v2, v2, Lm7/c$a;->f:Lm7/a1;

    if-eqz v2, :cond_d

    goto :goto_13

    :cond_d
    const-string v2, "handle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v2}, Lm7/a1;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lm7/c$b;->h()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DisposeHandlersOnCancel["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lm7/c$b;->a:[Lm7/c$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

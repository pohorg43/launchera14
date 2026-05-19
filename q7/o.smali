.class public final Lq7/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n1#1,112:1\n51#2,2:113\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .registers 2

    iput-object p1, p0, Lq7/o;->a:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lq7/p;

    iget-object p0, p0, Lq7/o;->a:Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lq7/p;-><init>(Lkotlin/jvm/functions/Function3;Lp7/e;Ll4/d;)V

    new-instance p0, Lq7/n;

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lq7/n;-><init>(Ll4/f;Ll4/d;)V

    invoke-static {p0, p0, v0}, Ls7/b;->a(Lr7/b0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_1e

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    if-ne p0, p1, :cond_21

    return-object p0

    :cond_21
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

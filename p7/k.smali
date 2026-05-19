.class public final Lp7/k;
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
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,112:1\n51#2,5:113\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp7/d;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lp7/d;Lkotlin/jvm/functions/Function2;)V
    .registers 3

    iput-object p1, p0, Lp7/k;->a:Lp7/d;

    iput-object p2, p0, Lp7/k;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lp7/k;->a:Lp7/d;

    new-instance v1, Lp7/k$a;

    iget-object p0, p0, Lp7/k;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, p1, p0}, Lp7/k$a;-><init>(Lp7/e;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1, p2}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_12

    return-object p0

    :cond_12
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

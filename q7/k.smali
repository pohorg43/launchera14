.class public final Lq7/k;
.super Lq7/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lq7/i<",
        "TT;TR;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lp7/e<",
            "-TR;>;TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lp7/d;Ll4/f;ILo7/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lp7/e<",
            "-TR;>;-TT;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/d<",
            "+TT;>;",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lq7/i;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    iput-object p1, p0, Lq7/k;->e:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lp7/d;Ll4/f;ILo7/a;I)V
    .registers 8

    and-int/lit8 p3, p6, 0x4

    const/4 p5, 0x0

    if-eqz p3, :cond_8

    sget-object p3, Ll4/h;->a:Ll4/h;

    goto :goto_9

    :cond_8
    move-object p3, p5

    :goto_9
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_e

    const/4 p4, -0x2

    :cond_e
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_14

    sget-object p5, Lo7/a;->a:Lo7/a;

    :cond_14
    invoke-direct {p0, p2, p3, p4, p5}, Lq7/i;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    iput-object p1, p0, Lq7/k;->e:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public c(Ll4/f;ILo7/a;)Lq7/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lq7/f<",
            "TR;>;"
        }
    .end annotation

    new-instance v6, Lq7/k;

    iget-object v1, p0, Lq7/k;->e:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lq7/i;->d:Lp7/d;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lq7/k;-><init>(Lkotlin/jvm/functions/Function3;Lp7/d;Ll4/f;ILo7/a;)V

    return-object v6
.end method

.method public d(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TR;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lq7/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lq7/k$a;-><init>(Lq7/k;Lp7/e;Ll4/d;)V

    invoke-static {v0, p2}, Lm7/k0;->d(Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

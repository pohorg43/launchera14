.class public final Lp7/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/k;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n79#2,2:223\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp7/e;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lp7/e;Lkotlin/jvm/functions/Function2;)V
    .registers 3

    iput-object p1, p0, Lp7/k$a;->a:Lp7/e;

    iput-object p2, p0, Lp7/k$a;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lp7/k$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/k$a$a;

    iget v1, v0, Lp7/k$a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/k$a$a;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/k$a$a;

    invoke-direct {v0, p0, p2}, Lp7/k$a$a;-><init>(Lp7/k$a;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/k$a$a;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/k$a$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_32

    if-ne v2, v3, :cond_2a

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_67

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    iget-object p0, v0, Lp7/k$a$a;->e:Ljava/lang/Object;

    check-cast p0, Lp7/e;

    iget-object p1, v0, Lp7/k$a$a;->d:Ljava/lang/Object;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_59

    :cond_3c
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lp7/k$a;->a:Lp7/e;

    iget-object p0, p0, Lp7/k$a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lp7/k$a$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lp7/k$a$a;->e:Ljava/lang/Object;

    iput v4, v0, Lp7/k$a$a;->b:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x7

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne p0, v1, :cond_58

    return-object v1

    :cond_58
    move-object p0, p2

    :goto_59
    const/4 p2, 0x0

    iput-object p2, v0, Lp7/k$a$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lp7/k$a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lp7/k$a$a;->b:I

    invoke-interface {p0, p1, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_67

    return-object v1

    :cond_67
    :goto_67
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.class public abstract Lq7/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq7/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/q<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ll4/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Lo7/a;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f;ILo7/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/f;->a:Ll4/f;

    iput p2, p0, Lq7/f;->b:I

    iput-object p3, p0, Lq7/f;->c:Lo7/a;

    return-void
.end method


# virtual methods
.method public a(Ll4/f;ILo7/a;)Lp7/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lp7/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lq7/f;->a:Ll4/f;

    invoke-interface {p1, v0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    sget-object v0, Lo7/a;->a:Lo7/a;

    if-eq p3, v0, :cond_b

    goto :goto_25

    :cond_b
    iget p3, p0, Lq7/f;->b:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_11

    goto :goto_23

    :cond_11
    if-ne p2, v0, :cond_15

    :goto_13
    move p2, p3

    goto :goto_23

    :cond_15
    const/4 v0, -0x2

    if-ne p3, v0, :cond_19

    goto :goto_23

    :cond_19
    if-ne p2, v0, :cond_1c

    goto :goto_13

    :cond_1c
    add-int/2addr p3, p2

    if-ltz p3, :cond_20

    goto :goto_13

    :cond_20
    const p2, 0x7fffffff

    :goto_23
    iget-object p3, p0, Lq7/f;->c:Lo7/a;

    :goto_25
    iget-object v0, p0, Lq7/f;->a:Ll4/f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lq7/f;->b:I

    if-ne p2, v0, :cond_36

    iget-object v0, p0, Lq7/f;->c:Lo7/a;

    if-ne p3, v0, :cond_36

    return-object p0

    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Lq7/f;->c(Ll4/f;ILo7/a;)Lq7/f;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lo7/q;Ll4/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract c(Ll4/f;ILo7/a;)Lq7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lq7/f<",
            "TT;>;"
        }
    .end annotation
.end method

.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lq7/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lq7/d;-><init>(Lp7/e;Lq7/f;Ll4/d;)V

    invoke-static {v0, p2}, Lm7/k0;->d(Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_11
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lq7/f;->a:Ll4/f;

    sget-object v2, Ll4/h;->a:Ll4/h;

    if-eq v1, v2, :cond_1e

    const-string v1, "context="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq7/f;->a:Ll4/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget v1, p0, Lq7/f;->b:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_35

    const-string v1, "capacity="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lq7/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v1, p0, Lq7/f;->c:Lo7/a;

    sget-object v2, Lo7/a;->a:Lo7/a;

    if-eq v1, v2, :cond_4d

    const-string v1, "onBufferOverflow="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq7/f;->c:Lo7/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5b

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v1, ", "

    invoke-static/range {v0 .. v7}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-static {v8, p0, v0}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

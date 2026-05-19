.class public final Lt7/b;
.super Lm7/j1;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Lt7/b;

.field public static final b:Lm7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lt7/b;

    invoke-direct {v0}, Lt7/b;-><init>()V

    sput-object v0, Lt7/b;->a:Lt7/b;

    sget-object v0, Lt7/m;->a:Lt7/m;

    sget v1, Lr7/g0;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_11

    move v4, v1

    goto :goto_12

    :cond_11
    move v4, v2

    :goto_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static/range {v3 .. v8}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lt7/m;->limitedParallelism(I)Lm7/f0;

    move-result-object v0

    sput-object v0, Lt7/b;->b:Lm7/f0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/j1;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    sget-object p0, Lt7/b;->b:Lm7/f0;

    invoke-virtual {p0, p1, p2}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    sget-object p0, Lt7/b;->b:Lm7/f0;

    invoke-virtual {p0, p1, p2}, Lm7/f0;->dispatchYield(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    sget-object p0, Ll4/h;->a:Ll4/h;

    sget-object v0, Lt7/b;->b:Lm7/f0;

    invoke-virtual {v0, p0, p1}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 2

    sget-object p0, Lt7/m;->a:Lt7/m;

    invoke-virtual {p0, p1}, Lt7/m;->limitedParallelism(I)Lm7/f0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method

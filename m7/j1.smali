.class public abstract Lm7/j1;
.super Lm7/f0;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lm7/f0;->Key:Lm7/f0$a;

    sget-object v1, Lm7/i1;->a:Lm7/i1;

    const-string v2, "baseKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "safeCast"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ll4/b;

    if-eqz v1, :cond_14

    iget-object v0, v0, Ll4/b;->b:Ll4/f$b;

    :cond_14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

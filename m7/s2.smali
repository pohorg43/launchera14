.class public final Lm7/s2;
.super Lm7/f0;
.source ""


# static fields
.field public static final a:Lm7/s2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/s2;

    invoke-direct {v0}, Lm7/s2;-><init>()V

    sput-object v0, Lm7/s2;->a:Lm7/s2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    sget-object p0, Lm7/w2;->b:Lm7/w2$a;

    invoke-interface {p1, p0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Lm7/w2;

    if-eqz p0, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm7/w2;->a:Z

    return-void

    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDispatchNeeded(Ll4/f;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method

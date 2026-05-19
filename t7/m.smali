.class public final Lt7/m;
.super Lm7/f0;
.source ""


# static fields
.field public static final a:Lt7/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt7/m;

    invoke-direct {v0}, Lt7/m;-><init>()V

    sput-object v0, Lt7/m;->a:Lt7/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 4

    sget-object p0, Lt7/c;->f:Lt7/c;

    sget-object p1, Lt7/l;->h:Lt7/i;

    iget-object p0, p0, Lt7/f;->e:Lt7/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lt7/a;->c(Ljava/lang/Runnable;Lt7/i;Z)V

    return-void
.end method

.method public dispatchYield(Ll4/f;Ljava/lang/Runnable;)V
    .registers 4

    sget-object p0, Lt7/c;->f:Lt7/c;

    sget-object p1, Lt7/l;->h:Lt7/i;

    iget-object p0, p0, Lt7/f;->e:Lt7/a;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lt7/a;->c(Ljava/lang/Runnable;Lt7/i;Z)V

    return-void
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 3

    invoke-static {p1}, Lr7/n;->a(I)V

    sget v0, Lt7/l;->d:I

    if-lt p1, v0, :cond_8

    return-object p0

    :cond_8
    invoke-super {p0, p1}, Lm7/f0;->limitedParallelism(I)Lm7/f0;

    move-result-object p0

    return-object p0
.end method

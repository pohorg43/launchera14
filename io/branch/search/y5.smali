.class public final Lio/branch/search/y5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 2

    const-string p0, "chain"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    move-object p0, p1

    check-cast p0, Li8/f;

    iget-object p0, p0, Li8/f;->f:Le8/x;

    check-cast p1, Li8/f;

    invoke-virtual {p1, p0}, Li8/f;->a(Le8/x;)Le8/z;

    move-result-object p0

    const-string p1, "chain.proceed(chain.request())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception p0

    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_1c

    throw p0

    :cond_1c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

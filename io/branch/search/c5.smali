.class public final Lio/branch/search/c5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lm7/j0;

.field public static final b:Lm7/j1;

.field public static final c:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm7/i0;

    const-string v1, "BNCScope"

    invoke-direct {v0, v1}, Lm7/i0;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm7/y0;->b:Lm7/f0;

    invoke-virtual {v0, v1}, Ll4/a;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lv1/j;->a(Lm7/s1;I)Lm7/v;

    move-result-object v1

    invoke-interface {v0, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    new-instance v1, Lio/branch/search/c5$a;

    sget v2, Lm7/g0;->K:I

    sget-object v2, Lm7/g0$a;->a:Lm7/g0$a;

    invoke-direct {v1, v2}, Lio/branch/search/c5$a;-><init>(Ll4/f$b;)V

    invoke-interface {v0, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/c5;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    sput-object v0, Lio/branch/search/c5;->a:Lm7/j0;

    const/16 v0, 0x8

    const-string v1, "BncSqlite"

    invoke-static {v0, v1}, Lm7/o2;->a(ILjava/lang/String;)Lm7/j1;

    move-result-object v0

    sput-object v0, Lio/branch/search/c5;->b:Lm7/j1;

    sget-object v0, Lio/branch/search/c5$b;->a:Lio/branch/search/c5$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lio/branch/search/c5;->c:Lh4/f;

    return-void
.end method

.method public static final a()Le8/u;
    .registers 1

    sget-object v0, Lio/branch/search/c5;->c:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/u;

    return-object v0
.end method

.method public static final a(Ll4/f;)Lm7/j0;
    .registers 1

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_25

    :cond_18
    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    new-instance v1, Lio/branch/search/c5$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/branch/search/c5$c;-><init>(Lkotlin/jvm/functions/Function0;Ll4/d;)V

    invoke-static {v0, v1}, Lm7/h;->c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_25
    return-void
.end method

.method public static final b()Lm7/j0;
    .registers 1

    sget-object v0, Lio/branch/search/c5;->a:Lm7/j0;

    return-object v0
.end method

.method public static final c()Lm7/j1;
    .registers 1

    sget-object v0, Lio/branch/search/c5;->b:Lm7/j1;

    return-object v0
.end method

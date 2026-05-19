.class public final Lio/branch/search/j5;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lp7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/l<",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lm7/s1;

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/j0;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/j5;->c:Lkotlin/jvm/functions/Function0;

    sget-object p2, Lo7/a;->b:Lo7/a;

    const/4 v0, 0x0

    const/16 v1, 0x64

    new-instance v2, Lp7/p;

    invoke-direct {v2, v0, v1, p2}, Lp7/p;-><init>(IILo7/a;)V

    iput-object v2, p0, Lio/branch/search/j5;->a:Lp7/l;

    new-instance p2, Lio/branch/search/j5$c;

    invoke-direct {p2, p0}, Lio/branch/search/j5$c;-><init>(Lio/branch/search/j5;)V

    new-instance v0, Lp7/h;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v2, v1}, Lp7/h;-><init>(Lkotlin/jvm/functions/Function1;Lp7/d;Ll4/d;)V

    new-instance p2, Lq7/o;

    invoke-direct {p2, v0}, Lq7/o;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lio/branch/search/j5$a;

    invoke-direct {v0, p2}, Lio/branch/search/j5$a;-><init>(Lp7/d;)V

    invoke-static {v0, p1}, Lv1/n;->e(Lp7/d;Lm7/j0;)Lm7/s1;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/j5;->b:Lm7/s1;

    return-void
.end method

.method public synthetic constructor <init>(Lm7/j0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object p1

    :cond_8
    invoke-direct {p0, p1, p2}, Lio/branch/search/j5;-><init>(Lm7/j0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/j5;)Lp7/l;
    .registers 1

    iget-object p0, p0, Lio/branch/search/j5;->a:Lp7/l;

    return-object p0
.end method

.method public static final synthetic b(Lio/branch/search/j5;)Lkotlin/jvm/functions/Function0;
    .registers 1

    iget-object p0, p0, Lio/branch/search/j5;->c:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object p0, p0, Lio/branch/search/j5;->b:Lm7/s1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/j5$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/branch/search/j5$b;-><init>(Lio/branch/search/j5;Lkotlin/jvm/functions/Function0;Ll4/d;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

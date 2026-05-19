.class public final La7/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/e0;


# static fields
.field public static final a:La7/c;

.field public static final b:Lh6/f;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/e0;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lf5/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, La7/c;

    invoke-direct {v0}, La7/c;-><init>()V

    sput-object v0, La7/c;->a:La7/c;

    const-string v0, "<Error module>"

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "special(ErrorEntity.ERROR_MODULE.debugText)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, La7/c;->b:Lh6/f;

    sget-object v0, Li4/y;->a:Li4/y;

    sput-object v0, La7/c;->c:Ljava/util/List;

    sget-object v0, Lf5/d;->f:Lf5/d;

    sget-object v0, Lf5/d;->g:Lf5/d;

    sput-object v0, La7/c;->d:Lf5/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string p0, "visitor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Li5/l;
    .registers 1

    return-object p0
.end method

.method public b()Li5/l;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    sget-object p0, La7/c;->b:Lh6/f;

    return-object p0
.end method

.method public j(Lh6/c;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lh6/c;",
            ">;"
        }
    .end annotation

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public k()Lf5/g;
    .registers 1

    sget-object p0, La7/c;->d:Lf5/g;

    return-object p0
.end method

.method public s(Lh6/c;)Li5/l0;
    .registers 2

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e0;",
            ">;"
        }
    .end annotation

    sget-object p0, La7/c;->c:Ljava/util/List;

    return-object p0
.end method

.method public t(Li5/e0;)Z
    .registers 2

    const-string p0, "targetModule"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public w(Lh/b;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/b;",
            ")TT;"
        }
    .end annotation

    const-string p0, "capability"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

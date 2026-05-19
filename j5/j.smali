.class public final Lj5/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/c;


# instance fields
.field public final a:Lf5/g;

.field public final b:Lh6/c;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lh4/f;


# direct methods
.method public constructor <init>(Lf5/g;Lh6/c;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/g;",
            "Lh6/c;",
            "Ljava/util/Map<",
            "Lh6/f;",
            "+",
            "Lm6/g<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allValueArguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/j;->a:Lf5/g;

    iput-object p2, p0, Lj5/j;->b:Lh6/c;

    iput-object p3, p0, Lj5/j;->c:Ljava/util/Map;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lj5/j$a;

    invoke-direct {p2, p0}, Lj5/j$a;-><init>(Lj5/j;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lj5/j;->d:Lh4/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lj5/j;->c:Ljava/util/Map;

    return-object p0
.end method

.method public e()Lh6/c;
    .registers 1

    iget-object p0, p0, Lj5/j;->b:Lh6/c;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 2

    sget-object p0, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 2

    iget-object p0, p0, Lj5/j;->d:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-type>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/l0;

    return-object p0
.end method

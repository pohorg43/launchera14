.class public final Lf7/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lh6/f;

.field public final b:Lk7/f;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Li5/x;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lf7/f;


# direct methods
.method public varargs constructor <init>(Lh6/f;Lk7/f;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lf7/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lk7/f;",
            "Ljava/util/Collection<",
            "Lh6/f;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/x;",
            "Ljava/lang/String;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lf7/k;->a:Lh6/f;

    iput-object p2, p0, Lf7/k;->b:Lk7/f;

    iput-object p3, p0, Lf7/k;->c:Ljava/util/Collection;

    iput-object p4, p0, Lf7/k;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lf7/k;->e:[Lf7/f;

    return-void
.end method

.method public constructor <init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/x;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lf7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/k;->a:Lh6/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lf7/k;->b:Lk7/f;

    iput-object p1, p0, Lf7/k;->c:Ljava/util/Collection;

    iput-object p3, p0, Lf7/k;->d:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lf7/k;->e:[Lf7/f;

    return-void
.end method

.method public synthetic constructor <init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_7

    sget-object p3, Lf7/h;->a:Lf7/h;

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-direct {p0, p1, p2, p3}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lh6/f;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/x;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lf7/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lf7/k;-><init>(Lh6/f;Lk7/f;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lf7/f;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_7

    sget-object p3, Lf7/j;->a:Lf7/j;

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-direct {p0, p1, p2, p3}, Lf7/k;-><init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

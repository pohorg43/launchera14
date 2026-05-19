.class public abstract Lio/branch/search/u0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/u0$a;,
        Lio/branch/search/u0$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Lio/branch/search/t0$a;)Lio/branch/search/u0;
    .registers 2

    new-instance v0, Lio/branch/search/u0$a;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/branch/search/u0$a;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs b([Lio/branch/search/t0$a;)Lio/branch/search/u0;
    .registers 2

    new-instance v0, Lio/branch/search/u0$b;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/branch/search/u0$b;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/branch/search/t0$a;",
            ">;)V"
        }
    .end annotation
.end method

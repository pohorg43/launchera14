.class public final Lc5/f;
.super Lc5/t;
.source ""


# static fields
.field public static final c:Lc5/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/f;

    invoke-direct {v0}, Lc5/f;-><init>()V

    sput-object v0, Lc5/f;->c:Lc5/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc5/t;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/f;->r()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public g(Lh6/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/f;->r()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getJClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/f;->r()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getMembers()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/f;->r()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public h(I)Li5/o0;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Lh6/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/f;->r()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final r()Ljava/lang/Void;
    .registers 2

    new-instance p0, Lc5/n0;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, v0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

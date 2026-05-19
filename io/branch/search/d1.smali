.class public final Lio/branch/search/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/c1;


# instance fields
.field public final a:Lio/branch/search/m;


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 3

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/d1;->a:Lio/branch/search/m;

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/d1;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public a(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V
    .registers 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    sget-object v2, Lm7/y0;->b:Lm7/f0;

    new-instance v4, Lio/branch/search/d1$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lio/branch/search/d1$a;-><init>(Lio/branch/search/d1;Lio/branch/search/BranchAppStoreRequest;Lf4/c;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

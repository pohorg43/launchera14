.class public final Lio/branch/search/h1$g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lm7/j0;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/p0;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchLocalAppResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/m;


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/h1$g;->a:Lio/branch/search/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/p0;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    const-string v0, "vr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/h1$g;->a:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {p0, p1}, Lio/branch/search/k2;->b(Lio/branch/search/p0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/branch/search/p0;

    invoke-virtual {p0, p1}, Lio/branch/search/h1$g;->a(Lio/branch/search/p0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

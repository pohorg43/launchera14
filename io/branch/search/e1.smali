.class public final Lio/branch/search/e1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/e1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/e1$a;


# instance fields
.field public final a:Lio/branch/search/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/e1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/e1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/e1;->Companion:Lio/branch/search/e1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 4

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/e1;->a:Lio/branch/search/m;

    new-instance p0, Lio/branch/search/j5;

    sget-object p1, Lio/branch/search/e1$d;->a:Lio/branch/search/e1$d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v0}, Lio/branch/search/j5;-><init>(Lm7/j0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/e1;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/e1;->a:Lio/branch/search/m;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .registers 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance p0, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p0}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KCompositeInterface.compositeSearch"

    invoke-virtual {v0, p1, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/e1;->b(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V
    .registers 12

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e1;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    new-instance p0, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p0}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KCompositeInterface.zeroState"

    invoke-virtual {v0, v1, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lf4/e;->onZeroStateComplete(Lf4/f;Lio/branch/search/BranchError;)V

    return-void

    :cond_2f
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v3

    sget-object v4, Lm7/y0;->b:Lm7/f0;

    new-instance v6, Lio/branch/search/e1$c;

    invoke-direct {v6, p0, p1, p2, v2}, Lio/branch/search/e1$c;-><init>(Lio/branch/search/e1;Lio/branch/search/BranchZeroStateRequest;Lf4/e;Ll4/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final b(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .registers 15

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    sget-object v2, Lm7/y0;->b:Lm7/f0;

    new-instance v0, Lio/branch/search/e1$b;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lio/branch/search/e1$b;-><init>(Lio/branch/search/e1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lf4/c;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

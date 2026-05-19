.class public final Lio/branch/search/z$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/branch/search/BranchConfiguration;

.field public final b:Lio/branch/search/internal/interfaces/LocalInterface;

.field public final c:Lio/branch/search/BranchAnalytics;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/BranchAnalytics;)V
    .registers 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/z$a;->a:Lio/branch/search/BranchConfiguration;

    iput-object p2, p0, Lio/branch/search/z$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iput-object p3, p0, Lio/branch/search/z$a;->c:Lio/branch/search/BranchAnalytics;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/z$a;)Lio/branch/search/internal/interfaces/LocalInterface;
    .registers 1

    iget-object p0, p0, Lio/branch/search/z$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    return-object p0
.end method


# virtual methods
.method public a()Lio/branch/search/z3;
    .registers 4

    invoke-static {}, Lio/branch/search/c5;->c()Lm7/j1;

    move-result-object v0

    new-instance v1, Lio/branch/search/z$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/branch/search/z$a$a;-><init>(Lio/branch/search/z$a;Ll4/d;)V

    invoke-static {v0, v1}, Lm7/h;->c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/z3;

    return-object p0
.end method

.method public a(Lio/branch/search/z3;)V
    .registers 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/z$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p0, p1}, Lio/branch/search/v3;->a(Lio/branch/search/z3;)V

    :cond_1c
    return-void
.end method

.method public b(Lio/branch/search/z3;)V
    .registers 7

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/y;->Companion:Lio/branch/search/y$b;

    iget-object v1, p0, Lio/branch/search/z$a;->a:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1}, Lio/branch/search/z3;->b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v2

    const-string v3, "status.toBranchTrackingStatus()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v3, p1, Lio/branch/search/z3;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/search/y$b;->a(Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$BranchTrackingStatus;J)V

    iget-object p0, p0, Lio/branch/search/z$a;->c:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p1}, Lio/branch/search/z3;->b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object p1

    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    if-ne p1, v0, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/Boolean;)V

    return-void
.end method

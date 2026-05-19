.class public final Landroidx/lifecycle/FlowExtKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final flowWithLifecycle(Lp7/d;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Lp7/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp7/d<",
            "+TT;>;",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Lp7/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "minActiveState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1;

    const/4 v0, 0x0

    invoke-direct {v2, p1, p2, p0, v0}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lp7/d;Ll4/d;)V

    new-instance p0, Lp7/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lp7/b;-><init>(Lkotlin/jvm/functions/Function2;Ll4/f;ILo7/a;I)V

    return-object p0
.end method

.method public static synthetic flowWithLifecycle$default(Lp7/d;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)Lp7/d;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    :cond_6
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/FlowExtKt;->flowWithLifecycle(Lp7/d;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Lp7/d;

    move-result-object p0

    return-object p0
.end method

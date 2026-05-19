.class public final Landroidx/lifecycle/PausingDispatcher;
.super Lm7/f0;
.source ""


# instance fields
.field public final dispatchQueue:Landroidx/lifecycle/DispatchQueue;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm7/f0;-><init>()V

    new-instance v0, Landroidx/lifecycle/DispatchQueue;

    invoke-direct {v0}, Landroidx/lifecycle/DispatchQueue;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/DispatchQueue;->dispatchAndEnqueue(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDispatchNeeded(Ll4/f;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v0}, Lm7/b2;->q()Lm7/b2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    return v0

    :cond_15
    iget-object p0, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

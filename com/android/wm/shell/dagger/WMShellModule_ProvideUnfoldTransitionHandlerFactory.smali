.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final animatorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final progressProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shellInitProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field

.field private final unfoldAnimatorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->progressProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->animatorProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->unfoldAnimatorProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->transactionPoolProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->executorProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->shellInitProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;"
        }
    .end annotation

    new-instance v8, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v8
.end method

.method public static provideUnfoldTransitionHandler(Ljava/util/Optional;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;",
            "Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;",
            "Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ")",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/dagger/WMShellModule;->provideUnfoldTransitionHandler(Ljava/util/Optional;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->progressProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->animatorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->unfoldAnimatorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->transactionPoolProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->executorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/wm/shell/sysui/ShellInit;

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ljava/util/Optional;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->get()Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-result-object p0

    return-object p0
.end method

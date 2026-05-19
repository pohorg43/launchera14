.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final keyguardTransitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTouchHandlerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final recentsTransitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
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

.field private final splitScreenOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
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

.field private final unfoldHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;"
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
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->shellInitProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->splitScreenOptionalProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->pipTouchHandlerOptionalProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->recentsTransitionHandlerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->keyguardTransitionHandlerProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->unfoldHandlerProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->transitionsProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;"
        }
    .end annotation

    new-instance v8, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v8
.end method

.method public static provideDefaultMixedHandler(Lcom/android/wm/shell/sysui/ShellInit;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/DefaultMixedHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            ")",
            "Lcom/android/wm/shell/transition/DefaultMixedHandler;"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/dagger/WMShellModule;->provideDefaultMixedHandler(Lcom/android/wm/shell/sysui/ShellInit;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/DefaultMixedHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/transition/DefaultMixedHandler;
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->splitScreenOptionalProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->pipTouchHandlerOptionalProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->recentsTransitionHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->keyguardTransitionHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->unfoldHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/wm/shell/transition/Transitions;

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->provideDefaultMixedHandler(Lcom/android/wm/shell/sysui/ShellInit;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/DefaultMixedHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDefaultMixedHandlerFactory;->get()Lcom/android/wm/shell/transition/DefaultMixedHandler;

    move-result-object p0

    return-object p0
.end method

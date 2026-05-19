.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
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


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->contextProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideExitDesktopTaskTransitionHandler(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/dagger/WMShellModule;->provideExitDesktopTaskTransitionHandler(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->contextProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->provideExitDesktopTaskTransitionHandler(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->get()Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final taskListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionObserverProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->taskListenerProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->transitionHandlerProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->transitionObserverProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideFreeformComponents(Lcom/android/wm/shell/freeform/FreeformTaskListener;Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)Lcom/android/wm/shell/freeform/FreeformComponents;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/dagger/WMShellModule;->provideFreeformComponents(Lcom/android/wm/shell/freeform/FreeformTaskListener;Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)Lcom/android/wm/shell/freeform/FreeformComponents;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/freeform/FreeformComponents;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->taskListenerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->transitionHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->transitionObserverProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->provideFreeformComponents(Lcom/android/wm/shell/freeform/FreeformTaskListener;Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)Lcom/android/wm/shell/freeform/FreeformComponents;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->get()Lcom/android/wm/shell/freeform/FreeformComponents;

    move-result-object p0

    return-object p0
.end method

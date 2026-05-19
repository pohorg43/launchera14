.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;
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

.field private final desktopModeTaskRepositoryProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
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

.field private final shellTaskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final windowDecorViewModelProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->shellTaskOrganizerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->desktopModeTaskRepositoryProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->windowDecorViewModelProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;"
        }
    .end annotation

    new-instance v6, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v6
.end method

.method public static provideFreeformTaskListener(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskListener;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ")",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/dagger/WMShellModule;->provideFreeformTaskListener(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskListener;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/freeform/FreeformTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->desktopModeTaskRepositoryProvider:Lg4/a;

    invoke-interface {v3}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->windowDecorViewModelProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->provideFreeformTaskListener(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->get()Lcom/android/wm/shell/freeform/FreeformTaskListener;

    move-result-object p0

    return-object p0
.end method

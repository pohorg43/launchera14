.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;
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

.field private final mainHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final systemWindowsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private final tvPipBoundsStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->tvPipBoundsStateProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->systemWindowsProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->mainHandlerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/TvPipModule;->providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/tv/TvPipMenuController;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->tvPipBoundsStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->systemWindowsProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->mainHandlerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->get()Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    return-object p0
.end method

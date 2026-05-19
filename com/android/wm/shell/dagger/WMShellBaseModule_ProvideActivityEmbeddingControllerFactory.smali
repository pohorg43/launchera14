.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;
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

.field private final shellInitProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
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
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;)V
    .registers 4
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
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->transitionsProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;
    .registers 4
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
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideActivityEmbeddingController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideActivityEmbeddingController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideActivityEmbeddingControllerFactory;->provideActivityEmbeddingController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

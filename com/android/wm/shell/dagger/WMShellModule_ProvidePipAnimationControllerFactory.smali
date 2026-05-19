.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final pipSurfaceTransactionHelperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static providePipAnimationController(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipAnimationController;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellModule;->providePipAnimationController(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipAnimationController;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;->providePipAnimationController(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipAnimationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;->get()Lcom/android/wm/shell/pip/PipAnimationController;

    move-result-object p0

    return-object p0
.end method

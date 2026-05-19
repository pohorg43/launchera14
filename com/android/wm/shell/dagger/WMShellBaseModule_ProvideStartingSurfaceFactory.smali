.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final startingWindowControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
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
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;->startingWindowControllerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static provideStartingSurface(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideStartingSurface(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;->startingWindowControllerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingSurfaceFactory;->provideStartingSurface(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final backAnimationControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;>;"
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
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;->backAnimationControllerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static provideBackAnimation(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimation;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideBackAnimation(Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;->backAnimationControllerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;->provideBackAnimation(Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

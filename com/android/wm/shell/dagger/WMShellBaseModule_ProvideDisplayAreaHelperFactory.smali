.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final rootDisplayAreaOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
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
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->mainExecutorProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->rootDisplayAreaOrganizerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideDisplayAreaHelper(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/displayareahelper/DisplayAreaHelper;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideDisplayAreaHelper(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/displayareahelper/DisplayAreaHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->rootDisplayAreaOrganizerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    invoke-static {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;->provideDisplayAreaHelper(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

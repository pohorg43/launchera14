.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;
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

.field private final pipDisplayLayoutStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
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
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static providePipSizeSpecHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/dagger/TvPipModule;->providePipSizeSpecHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-static {v0, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->providePipSizeSpecHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSizeSpecHelperFactory;->get()Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;
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

.field private final pipSizeSpecHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
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
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideTvPipBoundsState(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/dagger/TvPipModule;->provideTvPipBoundsState(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->provideTvPipBoundsState(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->get()Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    return-object p0
.end method

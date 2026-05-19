.class public final Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final configProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final foldStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/unfold/UnfoldSharedModule;

.field private final scaleAwareProviderFactoryProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final tracingListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->configProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Lg4/a;

    return-void
.end method

.method public static create(Lcom/android/systemui/unfold/UnfoldSharedModule;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ">;)",
            "Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;-><init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v6
.end method

.method public static unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedModule;",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/unfold/UnfoldSharedModule;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->configProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;

    iget-object v3, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Lg4/a;

    invoke-interface {v3}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/unfold/UnfoldSharedModule_UnfoldTransitionProgressProviderFactory;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/unfold/updates/FoldStateProvider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

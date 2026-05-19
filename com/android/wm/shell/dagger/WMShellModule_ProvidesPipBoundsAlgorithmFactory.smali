.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;
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

.field private final pipBoundsStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipKeepClearAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
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

.field private final pipSnapAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
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
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipBoundsStateProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipKeepClearAlgorithmProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;"
        }
    .end annotation

    new-instance v6, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v6
.end method

.method public static providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/dagger/WMShellModule;->providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipBoundsStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipKeepClearAlgorithmProvider:Lg4/a;

    invoke-interface {v3}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method

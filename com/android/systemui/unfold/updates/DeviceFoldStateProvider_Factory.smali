.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final activityManagerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceStateManagerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final hingeAngleProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final screenStatusProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;",
            "Lg4/a<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;",
            "Lg4/a<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Lg4/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->hingeAngleProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->screenStatusProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->deviceStateManagerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->activityManagerProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->mainExecutorProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->handlerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
            ">;",
            "Lg4/a<",
            "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
            ">;",
            "Lg4/a<",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            ">;",
            "Lg4/a<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Lg4/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;"
        }
    .end annotation

    new-instance v8, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .registers 16

    new-instance v8, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->hingeAngleProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->screenStatusProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->deviceStateManagerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->activityManagerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->handlerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/os/Handler;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;->get()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    move-result-object p0

    return-object p0
.end method

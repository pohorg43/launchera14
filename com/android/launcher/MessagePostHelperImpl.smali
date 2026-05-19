.class public Lcom/android/launcher/MessagePostHelperImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListeners$MessagePostHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Handler;IIILjava/lang/Object;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/MessagePostHelperImpl;->lambda$postWithHighPrio$0(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$postWithHighPrio$0(Landroid/os/Handler;IIILjava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public postWithHighPrio(Landroid/os/Handler;IIILjava/lang/Object;)V
    .registers 13

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/launcher/f0;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/f0;-><init>(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_15
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1c
    return-void
.end method

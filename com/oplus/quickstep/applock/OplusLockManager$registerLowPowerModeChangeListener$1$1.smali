.class public final Lcom/oplus/quickstep/applock/OplusLockManager$registerLowPowerModeChangeListener$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;->registerLowPowerModeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/applock/OplusLockManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager$registerLowPowerModeChangeListener$1$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    sget-object p1, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {p1}, Lcom/android/common/observer/LowPowerObserver;->isOpen()Z

    move-result p1

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "low power mode changed: "

    invoke-static {v1, p1, v0}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager$registerLowPowerModeChangeListener$1$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$updateLowPowerMode(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V

    return-void
.end method

.class public final Lcom/android/launcher3/allapps/branch/BranchManagerInjector$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    const-string/jumbo p0, "onCreate:unlocked completed = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchInitCompleted()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BranchManagerInjector"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchInitCompleted()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMUserUnlockedReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_49

    :cond_44
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->initBranchSdk(Landroid/content/Context;)V

    :cond_49
    :goto_49
    return-void
.end method

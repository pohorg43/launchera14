.class final Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguardservice/FastUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyGuardDismissedServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguardservice/FastUnlockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguardservice/FastUnlockManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "KeyGuardDismissedServiceConnection connected mNeedSendLockMessage: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-static {v0}, Lcom/android/keyguardservice/FastUnlockManager;->access$getMNeedSendLockMessage$p(Lcom/android/keyguardservice/FastUnlockManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FastUnlockManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/keyguardservice/FastUnlockManager;->access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-static {p1}, Lcom/android/keyguardservice/FastUnlockManager;->access$getMNeedSendLockMessage$p(Lcom/android/keyguardservice/FastUnlockManager;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/keyguardservice/FastUnlockManager;->access$setMNeedSendLockMessage$p(Lcom/android/keyguardservice/FastUnlockManager;Z)V

    iget-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-static {p1}, Lcom/android/keyguardservice/FastUnlockManager;->access$skipFastUnlockIfNeeded(Lcom/android/keyguardservice/FastUnlockManager;)V

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-static {p0}, Lcom/android/keyguardservice/FastUnlockManager;->access$notifyKeyGuardDismissedServiceLauncherOnStop(Lcom/android/keyguardservice/FastUnlockManager;)V

    :cond_3a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "FastUnlockManager"

    const-string v0, "KeyGuardDismissedServiceConnection disconnected"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V

    return-void
.end method

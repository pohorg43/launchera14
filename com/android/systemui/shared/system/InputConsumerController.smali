.class public Lcom/android/systemui/shared/system/InputConsumerController;
.super Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;,
        Lcom/android/systemui/shared/system/InputConsumerController$InputListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConsumerController"


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;-><init>()V

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    return-void
.end method

.method public static getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;
    .registers 3

    new-instance v0, Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registered="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isRegistered()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public registerInputConsumer()V
    .registers 6

    sget-object v0, Lcom/android/systemui/shared/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerInputConsumer mInputEventReceiver="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPostHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsPostHandle:Z

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsPostHandle:Z

    if-eqz v0, :cond_5d

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->createInputConsumer()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    :cond_27
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    :try_start_2c
    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v2, Lcom/android/systemui/shared/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    new-instance v1, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_5d

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_5d
    return-void
.end method

.method public setRegistrationListener(Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-interface {p1, p0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_e
    return-void
.end method

.method public unregisterInputConsumer()V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->unregisterInputConsumerAsync()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v1

    sget-object v2, Lcom/android/systemui/shared/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to destroy input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-virtual {v1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_2b

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_2b
    return-void
.end method

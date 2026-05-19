.class public Lcom/oplus/leftscreen/HiAssistantOverlay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/overlay/IOverlayProxy;


# instance fields
.field private final mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oplus/leftscreen/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/leftscreen/ILauncherOverlay;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    return-void
.end method


# virtual methods
.method public closeOverlay(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->closeOverlay(I)V

    :cond_7
    return-void
.end method

.method public endScroll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->endScroll()V

    :cond_7
    return-void
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasOverlayContent()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isVoiceDetectionRunning()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onDestory()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->onPause()V

    :cond_7
    return-void
.end method

.method public onProfileChanged(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    if-eqz p2, :cond_2c

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherClient"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/leftscreen/HiAssistantOverlay;->startScroll()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/leftscreen/HiAssistantOverlay;->onScroll(F)V

    invoke-virtual {p0}, Lcom/oplus/leftscreen/HiAssistantOverlay;->endScroll()V

    :cond_2c
    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->onResume()V

    :cond_7
    return-void
.end method

.method public onScroll(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->onScroll(F)V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public openOverlay(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->openOverlay(I)V

    :cond_7
    return-void
.end method

.method public requestVoiceDetection(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->requestVoiceDetection(Z)V

    :cond_7
    return-void
.end method

.method public setActivityState(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->setActivityState(I)V

    :cond_7
    return-void
.end method

.method public startScroll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->startScroll()V

    :cond_7
    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public unusedMethod()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/leftscreen/ILauncherOverlay;->unusedMethod()V

    :cond_7
    return-void
.end method

.method public windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/android/overlay/OverlayCallbackProxy;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/overlay/OverlayCallbackProxy;->getHiAssistantCallback()Lcom/oplus/leftscreen/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/oplus/leftscreen/ILauncherOverlayCallback;I)V

    :cond_b
    return-void
.end method

.method public windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/overlay/OverlayCallbackProxy;->getHiAssistantCallback()Lcom/oplus/leftscreen/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/oplus/leftscreen/ILauncherOverlayCallback;)V

    :cond_b
    return-void
.end method

.method public windowDetached(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlay;->mOverlay:Lcom/oplus/leftscreen/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/leftscreen/ILauncherOverlay;->windowDetached(Z)V

    :cond_7
    return-void
.end method

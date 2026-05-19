.class public interface abstract Lcom/android/exceptionmonitor/ILauncherExceptionHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/ILauncherExceptionHandler$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract detectMessageType(Z)I
.end method

.method public abstract detectPeriodIntervalTime()J
.end method

.method public abstract detectPeriodMaxCount()I
.end method

.method public abstract enabled(I)Z
.end method

.method public abstract isAvailable(Lcom/android/launcher/Launcher;Z)Z
.end method

.method public abstract isDetectPeriodValid(Z)Z
.end method

.method public abstract resetPeriodCount()V
.end method

.method public abstract startDetect(Lcom/android/launcher/Launcher;)Z
.end method

.method public abstract startDetectIfAvailable(Lcom/android/launcher/Launcher;Z)Z
.end method

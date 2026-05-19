.class public final Lcom/android/exceptionmonitor/ILauncherExceptionHandler$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exceptionmonitor/ILauncherExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic detectMessageType$default(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;ZILjava/lang/Object;)I
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-interface {p0, p1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->detectMessageType(Z)I

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: detectMessageType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static detectPeriodIntervalTime(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static detectPeriodMaxCount(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic isAvailable$default(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;Lcom/android/launcher/Launcher;ZILjava/lang/Object;)Z
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->isAvailable(Lcom/android/launcher/Launcher;Z)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isAvailable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDetectPeriodValid(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;Z)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic isDetectPeriodValid$default(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;ZILjava/lang/Object;)Z
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-interface {p0, p1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->isDetectPeriodValid(Z)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isDetectPeriodValid"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic startDetectIfAvailable$default(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;Lcom/android/launcher/Launcher;ZILjava/lang/Object;)Z
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->startDetectIfAvailable(Lcom/android/launcher/Launcher;Z)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startDetectIfAvailable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

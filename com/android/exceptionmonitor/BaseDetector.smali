.class public abstract Lcom/android/exceptionmonitor/BaseDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/exceptionmonitor/ILauncherExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/BaseDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/exceptionmonitor/BaseDetector$Companion;

.field public static final TAG:Ljava/lang/String; = "LauncherExceptionHandler"


# instance fields
.field private final mDetectMessageType:I

.field private mDetecting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/exceptionmonitor/BaseDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/exceptionmonitor/BaseDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/exceptionmonitor/BaseDetector;->Companion:Lcom/android/exceptionmonitor/BaseDetector$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetectMessageType:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetecting:Z

    return-void
.end method

.method public detectMessageType(Z)I
    .registers 2

    iget p0, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetectMessageType:I

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, 0x64

    :cond_6
    return p0
.end method

.method public detectPeriodCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public detectPeriodIntervalTime()J
    .registers 3

    invoke-static {p0}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler$DefaultImpls;->detectPeriodIntervalTime(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)J

    move-result-wide v0

    return-wide v0
.end method

.method public detectPeriodMaxCount()I
    .registers 1

    invoke-static {p0}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler$DefaultImpls;->detectPeriodMaxCount(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)I

    move-result p0

    return p0
.end method

.method public increasePeriodCount()V
    .registers 1

    return-void
.end method

.method public isAvailable(Lcom/android/launcher/Launcher;Z)Z
    .registers 7

    iget-boolean p1, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetecting:Z

    const/4 v0, 0x0

    const-string v1, "LauncherExceptionHandler"

    if-eqz p1, :cond_e

    const-string/jumbo p0, "startDetect return, mDetecting is true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/exceptionmonitor/BaseDetector;->isDetectPeriodValid(Z)Z

    move-result p1

    if-nez p1, :cond_44

    const-string/jumbo p1, "startDetect return, detect is invalid, isDetectPeriod:"

    const-string v2, ", mDetectCount:"

    invoke-static {p1, p2, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BaseDetector;->detectPeriodCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", detectMaxCount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BaseDetector;->detectPeriodMaxCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", detectPeriodTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BaseDetector;->detectPeriodIntervalTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public isDetectPeriodValid(Z)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler$DefaultImpls;->isDetectPeriodValid(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;Z)Z

    move-result p0

    return p0
.end method

.method public startDetectIfAvailable(Lcom/android/launcher/Launcher;Z)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/exceptionmonitor/BaseDetector;->isAvailable(Lcom/android/launcher/Launcher;Z)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetecting:Z

    invoke-interface {p0, p1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->startDetect(Lcom/android/launcher/Launcher;)Z

    move-result p1

    iput-boolean v0, p0, Lcom/android/exceptionmonitor/BaseDetector;->mDetecting:Z

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BaseDetector;->increasePeriodCount()V

    move v0, p1

    :cond_14
    return v0
.end method

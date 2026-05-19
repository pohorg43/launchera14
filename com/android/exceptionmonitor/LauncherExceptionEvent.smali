.class public final Lcom/android/exceptionmonitor/LauncherExceptionEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private method:I

.field private final pendingOnPause:Z

.field private final pendingOnResume:Z


# direct methods
.method public constructor <init>(IZZ)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->method:I

    iput-boolean p2, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->pendingOnResume:Z

    iput-boolean p3, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->pendingOnPause:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v0

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;-><init>(IZZ)V

    return-void
.end method


# virtual methods
.method public final getMethod()I
    .registers 1

    iget p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->method:I

    return p0
.end method

.method public final getPendingOnPause()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->pendingOnPause:Z

    return p0
.end method

.method public final getPendingOnResume()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->pendingOnResume:Z

    return p0
.end method

.method public final setMethod(I)V
    .registers 2

    iput p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->method:I

    return-void
.end method

.class public Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$ThreadHolder;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "Zoom Animation Control"

.field public static sRemindMode:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "Zoom Animation Control"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$ThreadHolder;->access$100()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindMode()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;->sRemindMode:Z

    return v0
.end method

.method public static setRemindMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;->sRemindMode:Z

    return-void
.end method

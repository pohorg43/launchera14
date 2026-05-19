.class public Lcom/android/quickstep/views/DesktopTaskView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DESKTOP_IS_PROTO1_ENABLED:Z

.field public static final DESKTOP_IS_PROTO2_ENABLED:Z

.field public static final DESKTOP_MODE_SUPPORTED:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.wm.debug.desktop_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO1_ENABLED:Z

    const-string/jumbo v2, "persist.wm.debug.desktop_mode_2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-nez v0, :cond_17

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    sput-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

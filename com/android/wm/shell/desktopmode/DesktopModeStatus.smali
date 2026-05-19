.class public Lcom/android/wm/shell/desktopmode/DesktopModeStatus;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IS_DISPLAY_CHANGE_ENABLED:Z

.field private static final IS_PROTO2_ENABLED:Z

.field private static final IS_SUPPORTED:Z

.field private static final IS_VEILED_RESIZE_ENABLED:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.wm.debug.desktop_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    const-string/jumbo v0, "persist.wm.debug.desktop_mode_2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    const-string/jumbo v0, "persist.wm.debug.desktop_veiled_resizing"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    const-string/jumbo v0, "persist.wm.debug.desktop_change_display"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_DISPLAY_CHANGE_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActive(Landroid/content/Context;)Z
    .registers 6

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "desktop_mode"

    const/4 v3, -0x2

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1f

    if-eqz p0, :cond_1e

    move v1, v2

    :cond_1e
    return v1

    :catch_1f
    move-exception p0

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_35

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x31203ae1

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    return v1
.end method

.method public static isAnyEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isProto1Enabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    return v0
.end method

.method public static isProto2Enabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    return v0
.end method

.method public static isVeiledResizeEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    return v0
.end method

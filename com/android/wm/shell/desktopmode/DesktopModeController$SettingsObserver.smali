.class final Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDesktopModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "desktop_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private desktopModeSettingChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->updateDesktopModeActive(Z)V

    return-void
.end method


# virtual methods
.method public observe()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p2  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->mDesktopModeSetting:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p1, :cond_16

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x37a2c220  # -226551.5f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->desktopModeSettingChanged()V

    :cond_19
    return-void
.end method

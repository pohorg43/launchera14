.class public Lcom/android/wm/shell/protolog/ShellProtoLogCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static TEST_GROUP_enabled:Z

.field public static WM_SHELL_BACK_PREVIEW_enabled:Z

.field public static WM_SHELL_DESKTOP_MODE_enabled:Z

.field public static WM_SHELL_DRAG_AND_DROP_enabled:Z

.field public static WM_SHELL_FLOATING_APPS_enabled:Z

.field public static WM_SHELL_FOLDABLE_enabled:Z

.field public static WM_SHELL_INIT_enabled:Z

.field public static WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

.field public static WM_SHELL_RECENT_TASKS_enabled:Z

.field public static WM_SHELL_SPLIT_SCREEN_enabled:Z

.field public static WM_SHELL_STARTING_WINDOW_enabled:Z

.field public static WM_SHELL_SYSUI_EVENTS_enabled:Z

.field public static WM_SHELL_TASK_ORG_enabled:Z

.field public static WM_SHELL_TRANSITIONS_enabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/wm/shell/protolog/a;->b:Lcom/android/wm/shell/protolog/a;

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->update()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update()V
    .registers 1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FLOATING_APPS_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FOLDABLE_enabled:Z

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->TEST_GROUP_enabled:Z

    return-void
.end method

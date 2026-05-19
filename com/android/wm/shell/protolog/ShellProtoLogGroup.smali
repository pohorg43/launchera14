.class public final enum Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/protolog/ShellProtoLogGroup$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/protolog/ShellProtoLogGroup;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;


# instance fields
.field private final mEnabled:Z

.field private volatile mLogToLogcat:Z

.field private volatile mLogToProto:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    new-instance v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v1, "WM_SHELL_INIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "WindowManagerShell"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "WM_SHELL_TASK_ORG"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "WindowManagerShell"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v16, "WM_SHELL_TRANSITIONS"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string v21, "WindowManagerShell"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "WM_SHELL_RECENTS_TRANSITION"

    const/4 v10, 0x3

    const/4 v13, 0x1

    const-string v14, "ShellRecents"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v16, "WM_SHELL_DRAG_AND_DROP"

    const/16 v17, 0x4

    const-string v21, "WindowManagerShell"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "WM_SHELL_STARTING_WINDOW"

    const/4 v10, 0x5

    const/4 v13, 0x0

    const-string v14, "ShellStartingWindow"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v16, "WM_SHELL_BACK_PREVIEW"

    const/16 v17, 0x6

    const-string v21, "ShellBackPreview"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "WM_SHELL_RECENT_TASKS"

    const/4 v10, 0x7

    const-string v14, "WindowManagerShell"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v16, "WM_SHELL_PICTURE_IN_PICTURE"

    const/16 v17, 0x8

    const-string v21, "WindowManagerShell"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v10, "WM_SHELL_SPLIT_SCREEN"

    const/16 v11, 0x9

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-string v15, "ShellSplitScreen"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "WM_SHELL_SYSUI_EVENTS"

    const/16 v19, 0xa

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-string v23, "WindowManagerShell"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v25, "WM_SHELL_DESKTOP_MODE"

    const/16 v26, 0xb

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const-string v30, "WindowManagerShell"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "WM_SHELL_FLOATING_APPS"

    const/16 v19, 0xc

    const-string v23, "WindowManagerShell"

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v25, "WM_SHELL_FOLDABLE"

    const/16 v26, 0xd

    const-string v30, "WindowManagerShell"

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "TEST_GROUP"

    const/16 v19, 0xe

    const-string v23, "WindowManagerShellProtoLogTest"

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v7, 0x1

    aput-object v0, v14, v7

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v3, v14, v0

    const/4 v0, 0x5

    aput-object v4, v14, v0

    const/4 v0, 0x6

    aput-object v5, v14, v0

    const/4 v0, 0x7

    aput-object v6, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v16, v14, v0

    const/16 v0, 0xa

    aput-object v9, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v11, v14, v0

    const/16 v0, 0xd

    aput-object v12, v14, v0

    const/16 v0, 0xe

    aput-object v13, v14, v0

    sput-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->$VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mEnabled:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    iput-boolean p5, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    iput-object p6, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
    .registers 2

    const-class v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->$VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mEnabled:Z

    return p0
.end method

.method public isLogToAny()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isLogToLogcat()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    return p0
.end method

.method public isLogToProto()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    return p0
.end method

.method public setLogToLogcat(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    return-void
.end method

.method public setLogToProto(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    return-void
.end method

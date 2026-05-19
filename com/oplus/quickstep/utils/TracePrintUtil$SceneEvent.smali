.class public final enum Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/TracePrintUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final Companion:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

.field public static final enum NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_ASSIST_SCREEN_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_BRACKET_SPACE_UX:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_CONNECT_ASSIST_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_DRAG:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_FINISH_CONTROLLER:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_FOLDER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_FOLDER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_GESTURE_WINDOW_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_GET_TASKS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_HIDE_KEYBOARD:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_START_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_START_WALLPAPER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_SUPER_POWER_MODE_EXIT:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_TASKBAR_SUBSCRIBE_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_UPDATE_TOUCH_REGION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SCENE_WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

.field public static final enum SYSTEMUI_SHADE_EXPAND_PENDING:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;


# instance fields
.field private final id:I

.field private final trackName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ASSIST_SCREEN_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_HIDE_KEYBOARD:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_CONNECT_ASSIST_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_BRACKET_SPACE_UX:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_TASKBAR_SUBSCRIBE_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_DRAG:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GESTURE_WINDOW_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_SUPER_POWER_MODE_EXIT:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FINISH_CONTROLLER:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_UPDATE_TOUCH_REGION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_WALLPAPER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GET_TASKS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SYSTEMUI_SHADE_EXPAND_PENDING:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_ASSIST_SCREEN_SCROLL"

    const/4 v2, 0x1

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ASSIST_SCREEN_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_START_APP"

    const/4 v2, 0x2

    const/16 v3, 0x7d2

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_HIDE_KEYBOARD"

    const/4 v2, 0x3

    const/16 v3, 0x7d3

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_HIDE_KEYBOARD:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_CONNECT_ASSIST_SCREEN"

    const/4 v2, 0x4

    const/16 v3, 0x7d4

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_CONNECT_ASSIST_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_BRACKET_SPACE_UX"

    const/4 v2, 0x5

    const/16 v3, 0x7d5

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_BRACKET_SPACE_UX:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_FOLDER_ANIMATION"

    const/4 v2, 0x6

    const/16 v3, 0x7d6

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_RECENTS"

    const/4 v2, 0x7

    const/16 v3, 0x7d7

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_TASKBAR_SUBSCRIBE_PRESS"

    const/16 v2, 0x8

    const/16 v3, 0x7d8

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_TASKBAR_SUBSCRIBE_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_DRAG"

    const/16 v2, 0x9

    const/16 v3, 0x7d9

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_DRAG:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_FOLDER_ICON_FALLEN"

    const/16 v2, 0xa

    const/16 v3, 0x7da

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_GESTURE_WINDOW_ANIMATION"

    const/16 v2, 0xb

    const/16 v3, 0x7db

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GESTURE_WINDOW_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_SUPER_POWER_MODE_EXIT"

    const/16 v2, 0xc

    const/16 v3, 0x7dc

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_SUPER_POWER_MODE_EXIT:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_ICON_PRESS"

    const/16 v2, 0xd

    const/16 v3, 0x7dd

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v2, "SCENE_FINISH_CONTROLLER"

    const/16 v3, 0xe

    const/16 v4, 0x7de

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FINISH_CONTROLLER:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_WORKSPACE_SCROLL"

    const/16 v2, 0xf

    const/16 v3, 0x7df

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_UPDATE_TOUCH_REGION"

    const/16 v2, 0x10

    const/16 v3, 0x7e2

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_UPDATE_TOUCH_REGION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_START_WALLPAPER_ANIMATION"

    const/16 v2, 0x11

    const/16 v3, 0x7e3

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_WALLPAPER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SCENE_GET_TASKS"

    const/16 v2, 0x12

    const/16 v3, 0x7e4

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GET_TASKS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    const-string v1, "SYSTEMUI_SHADE_EXPAND_PENDING"

    const/16 v2, 0x13

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SYSTEMUI_SHADE_EXPAND_PENDING:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-static {}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->$values()[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->$VALUES:[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->Companion:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->id:I

    iput-object p4, p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->trackName:Ljava/lang/String;

    return-void
.end method

.method public static final getSceneWithEventID(I)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->Companion:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;->getSceneWithEventID(I)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->$VALUES:[Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->id:I

    return p0
.end method

.method public final getTrackName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->trackName:Ljava/lang/String;

    return-object p0
.end method

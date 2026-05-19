.class public final Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSceneWithEventID(I)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ASSIST_SCREEN_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_9

    return-object p0

    :cond_9
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_12

    return-object p0

    :cond_12
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_HIDE_KEYBOARD:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1b

    return-object p0

    :cond_1b
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_CONNECT_ASSIST_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_24

    return-object p0

    :cond_24
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_BRACKET_SPACE_UX:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2d

    return-object p0

    :cond_2d
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_36

    return-object p0

    :cond_36
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3f

    return-object p0

    :cond_3f
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_TASKBAR_SUBSCRIBE_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_48

    return-object p0

    :cond_48
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_DRAG:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_51

    return-object p0

    :cond_51
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FOLDER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5a

    return-object p0

    :cond_5a
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GESTURE_WINDOW_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_63

    return-object p0

    :cond_63
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_SUPER_POWER_MODE_EXIT:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_6c

    return-object p0

    :cond_6c
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_75

    return-object p0

    :cond_75
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_FINISH_CONTROLLER:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7e

    return-object p0

    :cond_7e
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_87

    return-object p0

    :cond_87
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_UPDATE_TOUCH_REGION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_90

    return-object p0

    :cond_90
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_START_WALLPAPER_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_99

    return-object p0

    :cond_99
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SCENE_GET_TASKS:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_a2

    return-object p0

    :cond_a2
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->SYSTEMUI_SHADE_EXPAND_PENDING:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getId()I

    move-result v0

    if-ne p1, v0, :cond_ab

    return-object p0

    :cond_ab
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    return-object p0
.end method

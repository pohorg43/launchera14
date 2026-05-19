.class public final Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CAN_EDIT_TASKBAR_FOLDER_NAME:Z = false

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;

.field public static final MULTI_POINT_EVENT_DISABLE:Z = true

.field public static final TASKBAR_ALL_APPS_CAN_RESPONSE_IN_LAUNCHER:Z = false

.field public static final TASKBAR_ALL_APPS_DO_NOT_DESTROY_WHEN_CLOSE_WINDOW:Z = true

.field public static final TASKBAR_ALL_APPS_HIDE_IMMEDIATELY_WHEN_START_APP_IN_LAUNCHER:Z = false

.field public static final TASKBAR_ALL_APPS_HIDE_IMMEDIATELY_WHEN_TO_LAUNCHER_FROM_APP_GESTURE:Z = true

.field public static final TASKBAR_ALL_APPS_HIDE_IMMEDIATELY_WHEN_TO_LAUNCHER_FROM_APP_NAV:Z = true

.field public static final TASKBAR_ALL_APPS_HIDE_PREDICTED_APPS:Z = true

.field public static final TASKBAR_ALL_APPS_HIDE_WORK_PROFILE_TABS:Z = false

.field private static final TASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$delegate:Lh4/f;

.field private static final TASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$delegate:Lh4/f;

.field public static final TASKBAR_BACKGROUND_USE_TRANSPARENT_COLOR:Z = true

.field public static final TASKBAR_DESTROY_WHEN_USER_SWITCH:Z = true

.field private static final TASKBAR_FLOAT_ABILITY$delegate:Lh4/f;

.field public static final TASKBAR_SUBSCRIBE_GLOBAL_SEARCH_ENTRY_ENABLE:Z = false

.field public static final TASKBAR_USE_CACHED_DEVICE_PROFILE:Z = true

.field public static final TASKBAR_USE_FIXED_DENSITY:Z = true

.field public static final TASKBAR_WINDOW_INVISIBLE_IN_SMALL_SCREEN:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_FLOAT_ABILITY$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_FLOAT_ABILITY$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_FLOAT_ABILITY$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarFunctionConfig$TASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$delegate:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getTASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$delegate:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic getTASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getTASKBAR_FLOAT_ABILITY()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->TASKBAR_FLOAT_ABILITY$delegate:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic getTASKBAR_FLOAT_ABILITY$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

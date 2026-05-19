.class public final Lcom/android/common/util/LauncherBooster;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/LauncherBooster$CpuBoost;,
        Lcom/android/common/util/LauncherBooster$GpuBoost;,
        Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;,
        Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;
    }
.end annotation


# static fields
.field private static final ANIMATION_END:Ljava/lang/String; = "0"

.field private static final CPU_TYPE_LAUNCH:Ljava/lang/String; = "OSENSE_ACTION_LAUNCH"

.field public static final DESKTOP_SLIDE_DES:Ljava/lang/String; = "DESKTOP_SLIDE"

.field private static final ENTER_SCROLL_SCENE_ANIMATE:I = 0x90

.field private static final EXIT_ANIMATION_START:Ljava/lang/String; = "2"

.field private static final EXIT_SCROLL_SCENE_ANIMATE:I = 0x10

.field public static final GPU_OSENSE_TIME_OUT_CLEAN_TASK:I = 0x1388

.field public static final GPU_OSENSE_TIME_OUT_TIME:I = 0x190

.field public static final GPU_TYPE_CLEAN_RECENT:Ljava/lang/String; = "OSENSE_ACTION_CLEAN_RECENT"

.field public static final GPU_TYPE_CLOSE_APP:Ljava/lang/String; = "OSENSE_ACTION_LAUNCHER_CLOSE_APP_ANIMATION"

.field public static final GPU_TYPE_GESTURE:Ljava/lang/String; = "OSENSE_ACTION_GESTURE_ANIMATION"

.field public static final GPU_TYPE_OPEN_APP:Ljava/lang/String; = "OSENSE_ACTION_LAUNCHER_OPEN_APP_ANIMATION"

.field private static final IM_FLAG_LAUNCHER:I = 0x8

.field public static final INSTANCE:Lcom/android/common/util/LauncherBooster;

.field public static final INVALID_VALUE:J = -0x1L

.field private static final IS_UAF_ENABLE:Ljava/lang/String; = "ro.oplus.osense.uaf_enable"

.field public static final JANK_DESCRIBE_DRAG_ALL_APPS_PANEL:Ljava/lang/String; = "DRAG_ALL_APPS_PANEL"

.field public static final JANK_DESCRIBE_FOLDER_OPEN:Ljava/lang/String; = "FOLDER_OPEN"

.field public static final JANK_DESKTOP_SLIDE:I = 0x8

.field public static final JANK_DRAG_ALL_APPS_PANEL:I = 0xa

.field public static final JANK_ENTER_RECENTS_FROM_APP:I = 0x4

.field public static final JANK_ENTER_RECENTS_FROM_WORKSPACE:I = 0x3

.field public static final JANK_EXIT_RECENTS:I = 0x5

.field public static final JANK_FOLDER_OPEN:I = 0x9

.field public static final JANK_GO_HOME:I = 0x2

.field public static final JANK_LAUNCH_APP:I = 0x1

.field public static final JANK_LAUNCH_APP_FROM_RECENTS:I = 0x6

.field public static final JANK_RECENTS_SLIDE:I = 0x7

.field public static final JANK_SCENE_THRESHOLD:J = 0x64L

.field public static final JANK_SCENE_VSYNC:I = 0x4

.field public static final LAUNCHER_ASSIST_SCREEN_SCROLL:I = 0x7d1

.field public static final LAUNCHER_BRACKET_SPACE_UX:I = 0x7d5

.field public static final LAUNCHER_CONNECT_ASSIST_SCREEN:I = 0x7d4

.field public static final LAUNCHER_DRAG:I = 0x7d9

.field public static final LAUNCHER_FINISH_CONTROLLER:I = 0x7de

.field public static final LAUNCHER_FOLDER_ANIMATION:I = 0x7d6

.field public static final LAUNCHER_FOLDER_ICON_FALLEN:I = 0x7da

.field public static final LAUNCHER_GESTURE_WINDOW_ANIMATION:I = 0x7db

.field public static final LAUNCHER_GET_TASKS:I = 0x7e4

.field public static final LAUNCHER_HIDE_KEYBOARD:I = 0x7d3

.field public static final LAUNCHER_ICON_PRESS:I = 0x7dd

.field public static final LAUNCHER_RECENTS:I = 0x7d7

.field private static final LAUNCHER_SCENE_SI:I = 0x4

.field private static final LAUNCHER_SI_START:Ljava/lang/String; = "4"

.field public static final LAUNCHER_START_APP:I = 0x7d2

.field public static final LAUNCHER_START_WALLPAPER_ANIMATION:I = 0x7e3

.field public static final LAUNCHER_STATIC_LAUNCHER_ANIM:I = 0x7e0

.field public static final LAUNCHER_STATIC_ONLINE_UX:I = 0x7e1

.field public static final LAUNCHER_SUPER_POWER_MODE_EXIT:I = 0x7dc

.field public static final LAUNCHER_TASKBAR_SUBSCRIBE_PRESS:I = 0x7d8

.field public static final LAUNCHER_UPDATE_TOUCH_REGION:I = 0x7e2

.field public static final LAUNCHER_WORKSPACE_SCROLL:I = 0x7df

.field private static final LAUNCH_DURATION:I = 0x2d0

.field private static final NOTIFY_ANIMATING:I = 0x521c

.field public static final NOTIFY_ANIMATING_AMBER:I = 0x7530

.field private static final OPEN_ANIMATION_START:Ljava/lang/String; = "1"

.field public static final RECENTS_SLIDE_DES:Ljava/lang/String; = "RECENTS_SLIDE"

.field private static final SET_UX_SCENE:I = 0x6

.field private static final SF_LONG_DURATION:I = 0x5dc

.field public static final SF_SHORT_DURATION:I = 0x1f4

.field private static final START_EXIT_SCENE_SI:I = 0x5

.field public static final SYSTEMUI_SHADE_EXPAND_PENDING:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "LauncherBooster"

.field private static final UIFIRST_ASYNC_ANIM:I = 0xa000000

.field private static final UIFIRST_OPT_SET:I = 0x80

.field private static final UIFIRST_OPT_SET_PRIORITY:I = 0x200

.field private static final UIFIRST_SCENE_LAUNCH:I = 0x1

.field private static final UIFIRST_TYPE_ANIMATOR_TASK:I = 0x4

.field private static final cpu$delegate:Lh4/f;

.field private static final gpu$delegate:Lh4/f;

.field private static final isSupportUaf:Z

.field private static final sf$delegate:Lh4/f;

.field private static final sfEx$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/LauncherBooster;

    invoke-direct {v0}, Lcom/android/common/util/LauncherBooster;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    sget-object v0, Lcom/android/common/util/LauncherBooster$cpu$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$cpu$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->cpu$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherBooster$gpu$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$gpu$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->gpu$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherBooster$sf$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$sf$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->sf$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherBooster$sfEx$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$sfEx$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->sfEx$delegate:Lh4/f;

    const-string/jumbo v0, "ro.oplus.osense.uaf_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/util/LauncherBooster;->isSupportUaf:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSupportUaf$p()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/LauncherBooster;->isSupportUaf:Z

    return v0
.end method


# virtual methods
.method public final getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->cpu$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$CpuBoost;

    return-object p0
.end method

.method public final getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->gpu$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$GpuBoost;

    return-object p0
.end method

.method public final getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->sf$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    return-object p0
.end method

.method public final getSfEx()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->sfEx$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    return-object p0
.end method

.class public final Lcom/android/launcher3/taskbar/TaskbarDebugUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/TaskbarDebugUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDebugUtil;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarDebugUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarDebugUtil;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarDebugUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDiffForConfigsRequiringRecreate(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "ActivityInfo.CONFIG_ASSETS_PATHS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_18

    const-string v1, "ActivityInfo.CONFIG_LAYOUT_DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_21

    const-string v1, "ActivityInfo.CONFIG_UI_MODE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_2a

    const-string p0, "ActivityInfo.CONFIG_SCREEN_SIZE"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

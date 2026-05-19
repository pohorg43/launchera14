.class public Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLEXIBLE_TASK_CHANGED:Ljava/lang/String; = "flexible_task_changed"

.field private static final FLEXIBLE_TASK_CORNER_RADIUS:Ljava/lang/String; = "flexible_task_corner_radius"

.field public static final FLEXIBLE_TASK_DEFAULTANIMATION:Ljava/lang/String; = "flexible_task_animation"

.field public static final FLEXIBLE_TASK_EMBEDDED_BOUNDS:Ljava/lang/String; = "flexible_task_embedded_bounds"

.field public static final FLEXIBLE_TASK_MAXIMIAED:Ljava/lang/String; = "flexible_task_maximized"

.field public static final FLEXIBLE_TASK_SCALE:Ljava/lang/String; = "flexible_task_scale"

.field public static final FLEXIBLE_TASK_SCENARIO:Ljava/lang/String; = "flexible_task_scenario"

.field private static final TAG:Ljava/lang/String; = "FlexibleTaskTransitionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mFlexibleTaskBundle"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    const-string v1, "getFlexibleTaskBundleFromChange e:"

    const-string v2, "FlexibleTaskTransitionUtils"

    invoke-static {v1, p0, v2}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFlexibleTaskCornerRadius(Landroid/os/Bundle;)F
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "flexible_task_corner_radius"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_b

    :cond_9
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_b
    return p0
.end method

.method public static getFlexibleTaskEmbeddedBounds(Landroid/os/Bundle;)Landroid/graphics/Rect;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-class v0, Landroid/graphics/Rect;

    const-string v1, "flexible_task_embedded_bounds"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getFlexibleTaskScale(Landroid/os/Bundle;)F
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "flexible_task_scale"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_b

    :cond_9
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_b
    return p0
.end method

.method public static isFlexibleTask(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const-string v1, "flexible_task_scenario"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_b

    :cond_a
    move p0, v0

    :goto_b
    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isFlexibleTaskChanging(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "flexible_task_changed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isFlexibleTaskHasDefaultAnimation(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "flexible_task_animation"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isFlexibleTaskMaximized(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "flexible_task_maximized"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

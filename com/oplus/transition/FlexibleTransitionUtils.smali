.class public Lcom/oplus/transition/FlexibleTransitionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_FLEXIBLE_TASK_SCALE:Ljava/lang/String; = "flexible_scale"

.field public static final KEY_FLEXIBLE_TASK_SCENARIO:Ljava/lang/String; = "flexible_scenario"

.field public static final LAUNCH_SCENARIO_SUB_DISPLAY:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlexibleScale(Landroid/os/Bundle;)F
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const-string v1, "flexible_scale"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    invoke-static {p0}, Lcom/oplus/transition/FlexibleTransitionUtils;->getFlexibleScenario(Landroid/os/Bundle;)I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_13

    return v1

    :cond_13
    return v0
.end method

.method public static getFlexibleScenario(Landroid/os/Bundle;)I
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "flexible_scenario"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public static isFlexibleActivity(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "isFlexibleActivity"

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

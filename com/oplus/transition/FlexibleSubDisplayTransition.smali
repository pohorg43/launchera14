.class public Lcom/oplus/transition/FlexibleSubDisplayTransition;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FlexibleSubDisplayTransition"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/transition/FlexibleSubDisplayTransition;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSubScenarioBundle"

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

    const-string v1, "getSubScenarioBundleFromChange e:"

    const-string v2, "FlexibleSubDisplayTransition"

    invoke-static {v1, p0, v2}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAnimExtraBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFlexibleScale(Landroid/window/TransitionInfo$Change;)F
    .registers 2

    invoke-static {p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "flexible_scale"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_f

    :cond_d
    const/high16 p0, -0x40800000  # -1.0f

    :goto_f
    return p0
.end method

.method public getFlexibleScenario(Landroid/window/TransitionInfo$Change;)I
    .registers 2

    invoke-static {p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "flexible_scenario"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method public getTaskAnimExtraBundle(Landroid/window/TransitionInfo;)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found task change:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlexibleSubDisplayTransition"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_9

    :cond_33
    invoke-virtual {p0, v0}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getAnimExtraBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

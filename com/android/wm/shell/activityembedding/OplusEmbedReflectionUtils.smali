.class public Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_TASK_PKG_NAME:Ljava/lang/String; = "task_pkg_name"

.field private static final KEY_TASK_WINDOW_CONFIG:Ljava/lang/String; = "task_win_config"

.field private static final KEY_TASK_WINDOW_MODE:Ljava/lang/String; = "task_win_mode"

.field private static final KEY_TF_COMPONENT_NAME:Ljava/lang/String; = "tf_component_name"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TransitionInfo_Change_PriBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mPriBundle"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    return-object v0
.end method

.method public static getPkgNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->TransitionInfo_Change_PriBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string/jumbo v0, "task_pkg_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public static getTfComponentNameFromChange(Landroid/window/TransitionInfo$Change;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->TransitionInfo_Change_PriBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string/jumbo v0, "tf_component_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public static getWinConfigFromChange(Landroid/window/TransitionInfo$Change;)Landroid/app/WindowConfiguration;
    .registers 3

    invoke-static {p0}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->TransitionInfo_Change_PriBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_12

    const-class v0, Landroid/app/WindowConfiguration;

    const-string/jumbo v1, "task_win_config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WindowConfiguration;

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public static getWindowModeFromChange(Landroid/window/TransitionInfo$Change;)I
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->TransitionInfo_Change_PriBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string/jumbo v0, "task_win_mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_f

    :cond_e
    const/4 p0, -0x1

    :goto_f
    return p0
.end method

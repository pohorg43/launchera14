.class public final Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLauncherContentAnim(Lcom/android/launcher3/Launcher;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnimType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    new-instance p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/WorkspaceContentAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object p0

    :cond_17
    new-instance p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object p0
.end method

.method public final getLauncherContentAnimType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isIconAlignmentAnimating()Z

    move-result p0

    if-ne p0, v0, :cond_1c

    move p0, v0

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashedInApp()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_2c
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashedInAppManually()Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :cond_34
    :goto_34
    const-string p0, "getLauncherContentAnimType,useTaskbarLauncherStateAnimator:"

    const-string v1, ",isAppTransitionByLightAnim:"

    invoke-static {p0, v0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AbsLauncherContentAnim"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_59

    invoke-virtual {v1}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p0

    if-nez p0, :cond_59

    const-class p0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    return-object p0

    :cond_59
    const-class p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim$Companion;

    return-object p0
.end method

.method public final getMCurrentContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->access$getMCurrentContentAnimParam$cp()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p0

    return-object p0
.end method

.method public final isWorkspaceContentAnim()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnimType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/oplus/quickstep/anim/WorkspaceContentAnim$Companion;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

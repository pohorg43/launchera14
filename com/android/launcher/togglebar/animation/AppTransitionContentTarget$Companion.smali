.class public final Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppTransitionContentTarget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppTransitionContentTarget.kt\ncom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSCALE_ALPHA_TARGET()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->access$getSCALE_ALPHA_TARGET$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public final isBlockAlphaUpdate(Landroid/view/View;)Z
    .registers 6

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    check-cast p0, Lcom/android/launcher/Launcher;

    const-string p1, "AppTransitionContentTarget"

    const-string v0, "QuickStep"

    const/4 v1, 0x0

    if-nez p0, :cond_2d

    const-string p0, "isBlockAlphaUpdate, activity is null"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v2, :cond_3b

    const-string p0, "isBlockAlphaUpdate, recentView is null"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3b
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    return v3

    :cond_43
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    if-nez p0, :cond_4f

    const-string p0, "isBlockAlphaUpdate, stateManager is null"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    :cond_67
    move v1, v3

    :cond_68
    return v1
.end method

.method public final resetContentView(Lcom/android/launcher/Launcher;Z)V
    .registers 7

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    return-void

    :cond_30
    if-eqz p2, :cond_3d

    const-string p1, "dragLayer"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;->isBlockAlphaUpdate(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_40

    :cond_3d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :cond_40
    invoke-virtual {v2, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setAlpha(F)V

    return-void
.end method

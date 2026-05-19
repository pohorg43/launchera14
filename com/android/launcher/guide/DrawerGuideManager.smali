.class public final Lcom/android/launcher/guide/DrawerGuideManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDrawerGuideManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,379:1\n42#2:380\n94#2,14:381\n31#2:395\n94#2,14:396\n42#2:410\n94#2,14:411\n31#2:425\n94#2,14:426\n*S KotlinDebug\n*F\n+ 1 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n*L\n155#1:380\n155#1:381,14\n164#1:395\n164#1:396,14\n207#1:410\n207#1:411,14\n214#1:425\n214#1:426,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIM_DELAY:J = 0x32L

.field private static final ANIM_DURATION_150:J = 0x96L

.field private static final ANIM_DURATION_250:J = 0xfaL

.field private static final ANIM_DURATION_350:J = 0x15eL

.field private static final ANIM_DURATION_700:J = 0x2bcL

.field private static final ANIM_DURATION_900:J = 0x384L

.field public static final DG_SHOW_COUNT:Ljava/lang/String; = "max_drawer_guide_show_count"

.field public static final DG_SHOW_COUNT_DEFAULT:I = -0x1

.field public static final INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

.field private static final MAX_DG_SHOW_COUNT:I = 0x3

.field private static final POPUP_LINE_FACE_NAME:Ljava/lang/String; = "OPlus Sans SC 3.5"

.field private static final TAG:Ljava/lang/String; = "DrawerGuideManager"

.field public static final USED_DRAWER_MODE:Ljava/lang/String; = "used_drawer_mode"

.field private static mContentAnimListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

.field private static mDrawerGuide:Landroid/widget/TextView;

.field private static mFadeAnimIsRunning:Z

.field private static mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

.field private static mIsShowGuide:Z

.field private static mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

.field private static mSwitchDrawer:Z

.field private static mUsedDrawerLauncherMode:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-direct {v0}, Lcom/android/launcher/guide/DrawerGuideManager;-><init>()V

    sput-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/guide/DrawerGuideManager;->getContentAnimListener$lambda$17(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$addDrawerGuideCount(Lcom/android/launcher/guide/DrawerGuideManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/DrawerGuideManager;->addDrawerGuideCount(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMShowDrawerGuideAnim$p()Landroid/animation/AnimatorSet;
    .registers 1

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public static final synthetic access$resetStates(Lcom/android/launcher/guide/DrawerGuideManager;Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/DrawerGuideManager;->resetStates(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setMFadeAnimIsRunning$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeAnimIsRunning:Z

    return-void
.end method

.method public static final synthetic access$setMFadeDrawerGuideAnim$p(Landroid/animation/AnimatorSet;)V
    .registers 1

    sput-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setMIsShowGuide$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mIsShowGuide:Z

    return-void
.end method

.method private final addDrawerGuideCount(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string/jumbo p1, "max_drawer_guide_show_count"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    return-void
.end method

.method private static final getContentAnimListener$lambda$17(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string p1, "$launcher"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    cmpg-float p1, p1, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p1, :cond_27

    move p1, p3

    goto :goto_28

    :cond_27
    move p1, p4

    :goto_28
    if-eqz p1, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    cmpg-float p1, p1, p2

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    move p3, p4

    :goto_38
    if-eqz p3, :cond_47

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_47
    return-void
.end method

.method private final isGuideLimit(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string/jumbo p1, "max_drawer_guide_show_count"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_19

    const-string p0, "DrawerGuideManager"

    const-string/jumbo p1, "showDrawerGuide: count >= 3"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private final resetStates(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherState;

    goto :goto_f

    :cond_e
    move-object p0, p1

    :goto_f
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p0, :cond_1e

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_21
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mIsShowGuide:Z

    sget-object p2, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_34

    :cond_33
    move-object p2, p1

    :goto_34
    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_51

    sget-object p2, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_42

    :cond_41
    move-object p2, p1

    :goto_42
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_49

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_4a

    :cond_49
    move-object p2, p1

    :goto_4a
    if-eqz p2, :cond_51

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_51
    sput-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    sput-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mSwitchDrawer:Z

    return-void
.end method


# virtual methods
.method public final cancelAllAnim()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "cancelAllAnim, caller = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x5

    const-string v1, "DrawerGuideManager"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_2b

    move p0, v0

    goto :goto_2c

    :cond_2b
    move p0, v1

    :goto_2c
    if-eqz p0, :cond_35

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_35
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    if-eqz v0, :cond_4a

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4a
    return-void
.end method

.method public final clearDrawerGuide()V
    .registers 4

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-nez p0, :cond_20

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_1d

    move p0, v0

    goto :goto_1e

    :cond_1d
    move p0, v1

    :goto_1e
    if-eqz p0, :cond_27

    :cond_20
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_27
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_33

    move p0, v0

    goto :goto_34

    :cond_33
    move p0, v1

    :goto_34
    if-nez p0, :cond_44

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    if-eqz v0, :cond_4b

    :cond_44
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4b
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_56

    :cond_55
    move-object p0, v0

    :goto_56
    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_73

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_64

    :cond_63
    move-object p0, v0

    :goto_64
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6b

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_6c

    :cond_6b
    move-object p0, v0

    :goto_6c
    if-eqz p0, :cond_73

    sget-object v2, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_73
    sput-boolean v1, Lcom/android/launcher/guide/DrawerGuideManager;->mIsShowGuide:Z

    sput-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    sput-boolean v1, Lcom/android/launcher/guide/DrawerGuideManager;->mSwitchDrawer:Z

    return-void
.end method

.method public final fadeDrawerGuide(Lcom/android/launcher3/Launcher;)V
    .registers 14

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    const-string v0, "DrawerGuideManager"

    if-eqz p0, :cond_105

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_14

    move p0, v1

    goto :goto_15

    :cond_14
    move p0, v2

    :goto_15
    if-nez p0, :cond_105

    sget-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeAnimIsRunning:Z

    if-nez p0, :cond_105

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v1, :cond_27

    move p0, v1

    goto :goto_28

    :cond_27
    move p0, v2

    :goto_28
    if-nez p0, :cond_105

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v1, :cond_36

    move p0, v1

    goto :goto_37

    :cond_36
    move p0, v2

    :goto_37
    if-eqz p0, :cond_3b

    goto/16 :goto_105

    :cond_3b
    if-eqz p1, :cond_104

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_104

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_104

    sget-object v3, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-ne v3, v1, :cond_57

    move v3, v1

    goto :goto_58

    :cond_57
    move v3, v2

    :goto_58
    if-eqz v3, :cond_66

    const-string v3, "fadeDrawerGuide: mShowDrawerGuideAnim isRunning, cancel it!!!"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_66
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_76

    const-string v3, "fadeDrawerGuide: caller = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v5, v4, [F

    sget-object v6, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v6, :cond_88

    invoke-virtual {v6}, Landroid/widget/TextView;->getAlpha()F

    move-result v6

    goto :goto_89

    :cond_88
    move v6, v7

    :goto_89
    aput v6, v5, v2

    const/4 v6, 0x0

    aput v6, v5, v1

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v6, v4, [F

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v6, v2

    aput v7, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0xfa

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v6, "ofFloat<View>(pageIndica…lator()\n                }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v4, [F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v11

    aput v11, v10, v2

    aput v7, v10, v1

    invoke-static {p0, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v7}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v2

    aput-object v5, v7, v1

    aput-object v0, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    sput-object v6, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    :cond_104
    return-void

    :cond_105
    :goto_105
    const-string p0, "fadeDrawerGuide: return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getContentAnimListener(Lcom/android/launcher3/Launcher;)Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mContentAnimListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.quickstep.util.animation.DynamicAnimation.OnAnimationEndListener"

    if-eqz p0, :cond_10

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_10
    new-instance p0, Lcom/android/launcher/guide/b;

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/b;-><init>(Lcom/android/launcher3/Launcher;)V

    sput-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mContentAnimListener:Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMDrawerGuide()Landroid/widget/TextView;
    .registers 1

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMSwitchDrawer()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mSwitchDrawer:Z

    return p0
.end method

.method public final isPaused()Z
    .registers 3

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-nez p0, :cond_22

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_1d

    move p0, v0

    goto :goto_1e

    :cond_1d
    move p0, v1

    :goto_1e
    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    return v0
.end method

.method public final isShowGuide()Z
    .registers 3

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-eqz p0, :cond_20

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    if-eqz v0, :cond_20

    return v1

    :cond_20
    sget-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mIsShowGuide:Z

    return p0
.end method

.method public final isUsedDrawerMode(Landroid/content/Context;)Z
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const/4 p1, 0x0

    const-string/jumbo v0, "used_drawer_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/launcher/guide/DrawerGuideManager;->mUsedDrawerLauncherMode:Z

    return p0
.end method

.method public final pauseAllAnim()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_19

    move p0, v0

    goto :goto_1a

    :cond_19
    move p0, v1

    :goto_1a
    if-eqz p0, :cond_23

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_23
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    if-eqz v0, :cond_38

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_38
    return-void
.end method

.method public final resumeAllAnim()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_19

    move p0, v0

    goto :goto_1a

    :cond_19
    move p0, v1

    :goto_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_40

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    move-object p0, v3

    :goto_2c
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_39

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_39
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_40
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-ne p0, v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    if-eqz v0, :cond_6e

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_5a
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-eqz p0, :cond_67

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_67
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_6e
    return-void
.end method

.method public final setDrawerGuideCount(Landroid/content/Context;I)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string/jumbo p1, "max_drawer_guide_show_count"

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    return-void
.end method

.method public final setMDrawerGuide(Landroid/widget/TextView;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    return-void
.end method

.method public final setMSwitchDrawer(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher/guide/DrawerGuideManager;->mSwitchDrawer:Z

    return-void
.end method

.method public final setUsedDrawerMode(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string/jumbo p1, "used_drawer_mode"

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public final showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 16

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DrawerGuideManager"

    const/4 v1, 0x0

    if-eqz p2, :cond_23a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-eqz v2, :cond_23a

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_23a

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/DrawerGuideManager;->isGuideLimit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23a

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_23a

    sget-object v2, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_34

    move v2, v3

    goto :goto_35

    :cond_34
    move v2, v4

    :goto_35
    if-nez v2, :cond_23a

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_23a

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->isHandingIconFallenState()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto/16 :goto_23a

    :cond_4b
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mFadeDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v3, :cond_57

    move p0, v3

    goto :goto_58

    :cond_57
    move p0, v4

    :goto_58
    if-eqz p0, :cond_61

    const-string/jumbo p0, "showDrawerGuide: mFadeDrawerGuideAnim isRunning, return!!!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_61
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string/jumbo p0, "showDrawerGuide: caller = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x7

    invoke-static {v2, p0, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_72
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120243

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "OPlus Sans SC 3.5"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f071020

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v5, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v5}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060492

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    const v6, 0x7f080659

    if-eqz v5, :cond_cf

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v1, v1, v5, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_101

    :cond_cf
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_101

    :cond_d7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060876

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    const v6, 0x7f08065a

    if-eqz v5, :cond_fa

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v1, v1, v5, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_101

    :cond_fa
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_101
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_147

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    if-eqz v1, :cond_147

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 v5, -0x2

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDrawerGuide gravity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bmargin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v5, v1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_147
    sput-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_290

    invoke-static {p2, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x15e

    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f666666  # 0.9f

    const v8, 0x3f333333  # 0.7f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v1, v7, v2, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v1, "ofFloat<View>(fadeView, …, 0f, 0.7f, 1f)\n        }"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-array v7, v0, [F

    fill-array-data v7, :array_298

    invoke-static {p2, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v8}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v8, "ofFloat<View>(fadeView, …eInterpolator()\n        }"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    new-array v9, v0, [F

    fill-array-data v9, :array_2a0

    invoke-static {v8, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    neg-float v8, v8

    const/high16 v9, 0x40800000  # 4.0f

    div-float/2addr v8, v9

    sget-object v9, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    sget-object v10, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v11, v0, [F

    aput v2, v11, v4

    aput v8, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v11, 0x2bc

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v11}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v5, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    new-array v6, v0, [F

    aput v8, v6, v4

    aput v2, v6, v3

    invoke-static {v5, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v11, 0x384

    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x2ee

    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v6, Lcom/android/launcher/guide/DrawerGuideManager;->mDrawerGuide:Landroid/widget/TextView;

    new-array v11, v0, [F

    aput v2, v11, v4

    aput v8, v11, v3

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v10, 0x384

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x672

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object p0, v8, v4

    aput-object v7, v8, v3

    aput-object v1, v8, v0

    const/4 p0, 0x3

    aput-object v9, v8, p0

    const/4 p0, 0x4

    aput-object v5, v8, p0

    const/4 p0, 0x5

    aput-object v2, v8, p0

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;-><init>(Landroid/view/View;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnEnd$1;

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-object v6, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_23a
    :goto_23a
    const-string/jumbo p2, "showDrawerGuide: guideLimit = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/DrawerGuideManager;->isGuideLimit(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isResumed = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isRunning = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->mShowDrawerGuideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_265

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_265
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentStableState = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isHandingIconFallenState = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isHandingIconFallenState()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_290
    .array-data 4
        0x3f800000  # 1.0f
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_298
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_2a0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final startGuideCount(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string/jumbo p1, "max_drawer_guide_show_count"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    :cond_17
    return-void
.end method

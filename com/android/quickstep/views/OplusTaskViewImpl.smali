.class public Lcom/android/quickstep/views/OplusTaskViewImpl;
.super Lcom/android/quickstep/views/TaskView;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskViewImpl.kt\ncom/android/quickstep/views/OplusTaskViewImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1160:1\n1#2:1161\n1747#3,3:1162\n1855#3,2:1165\n*S KotlinDebug\n*F\n+ 1 OplusTaskViewImpl.kt\ncom/android/quickstep/views/OplusTaskViewImpl\n*L\n857#1:1162,3\n1105#1:1165,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_APP_ICON_MIN:F = 0.5f

.field private static final ALPHA_MENU_MAX:F = 1.0f

.field private static final ALPHA_MENU_MIN:F = 0.0f

.field private static final CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.99f

.field public static final CORNER_RADIUS_IN_TABLET:F = 1.1f

.field private static final CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

.field private static final EDGE_SCALE_DOWN_FACTOR:F = 0.03f

.field private static final FOLD_SCREEN_CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.8f

.field private static final MAX_SCALE_VALUE:F = 0.985f

.field private static final ONE_DECIMAL_PLACE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OplusTaskView"

.field private static final TASK_VIEW_CORNER_TABLET:F = 26.0f

.field private static final TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static mNeedScaleAnimate:Z


# instance fields
.field private dispatchDrawVisible:Z

.field private headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

.field private ignoreResetScale:Z

.field private isDragEnd:Z

.field private isEnterAnimationRunning:Z

.field private isEnterStateAnimRunningCache:Z

.field private isGridTaskDragAnimatorRunning:Z

.field private isTaskLaunchAnimationRunning:Z

.field private lockStableAlpha:Z

.field private mActivePointerId:I

.field private mAdjacentTranslationValid:Z

.field private mChangeTranslationX:F

.field private mCurveScale:F

.field private mHadAdjacentTransXReset:Z

.field private mHeaderShowAnimator:Landroid/animation/Animator;

.field private mIsTaskViewDragging:Z

.field private mLastMotion:F

.field private mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

.field private final mLockManager$delegate:Lh4/f;

.field private final mLogTag:Ljava/lang/String;

.field private mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

.field private mTouchSlop:I

.field private mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private maxDismissScale:F

.field private menuView:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

.field private minDismissScale:F

.field private scaleAnimatorForGridRecentView:Lcom/android/launcher3/anim/PendingAnimation;

.field private thumbnailTopMargin:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mNeedScaleAnimate:Z

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$ADJACENT_TRANSLATE_X$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$ADJACENT_TRANSLATE_X$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_Y$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_Y$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_X$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_X$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v0, Lcom/android/quickstep/views/l;->a:Lcom/android/quickstep/views/l;

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLogTag:Ljava/lang/String;

    sget-object p2, Lkotlin/a;->c:Lkotlin/a;

    sget-object p3, Lcom/android/quickstep/views/OplusTaskViewImpl$mLockManager$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskViewImpl$mLockManager$2;

    invoke-static {p2, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockManager$delegate:Lh4/f;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    new-instance p2, Lcom/android/launcher3/allapps/a;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/allapps/a;-><init>(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;

    invoke-direct {p2}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance p2, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;

    invoke-direct {p2, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    new-instance p1, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    new-instance p1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_62

    :cond_58
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_62
    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTouchSlop:I

    new-instance p1, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    return-void
.end method

.method private static final CURVE_INTERPOLATOR$lambda$31(F)F
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method private static final _init_$lambda$0(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 10

    const-string p2, "$context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string/jumbo p2, "onClick, task="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-nez p2, :cond_41

    return-void

    :cond_41
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result p2

    if-eqz p2, :cond_48

    return-void

    :cond_48
    iget-object p2, p1, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_91

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result p2

    if-nez p2, :cond_91

    if-eq p0, v3, :cond_68

    const/4 p2, 0x3

    if-ne p0, p2, :cond_91

    :cond_68
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-nez p0, :cond_91

    sget-object p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->isDynamicTaskView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_91

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p2, :cond_81

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_82

    :cond_81
    move-object p0, v2

    :goto_82
    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRotateAnimationEnd()Z

    move-result p0

    if-nez p0, :cond_8c

    move p0, v3

    goto :goto_8d

    :cond_8c
    move p0, v4

    :goto_8d
    if-eqz p0, :cond_91

    move p0, v3

    goto :goto_92

    :cond_91
    move p0, v4

    :goto_92
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p2

    if-eqz p2, :cond_e2

    const-string p2, "isMultiWindowMode:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v5, p1, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isRecentsActivityRotationAllowed:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isRotateAnimationEnd="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    instance-of v6, v5, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v6, :cond_cd

    check-cast v5, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_ce

    :cond_cd
    move-object v5, v2

    :goto_ce
    if-eqz v5, :cond_d8

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRotateAnimationEnd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_d8
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    if-eqz p0, :cond_f9

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result p0

    if-eqz p0, :cond_f9

    const-string/jumbo p0, "onClick(), landscape and !canRecentsActivityRotate, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f9
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result p2

    if-eqz p2, :cond_108

    const-string/jumbo p0, "onClick, all task dismiss anim is running, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_108
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_115

    const-string/jumbo p0, "onClick, task dismiss anim is running, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_115
    iget-object p0, p1, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p2, p0, Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_129

    const-string p2, "mActivity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_129

    goto :goto_12a

    :cond_129
    move v3, v4

    :goto_12a
    if-eqz v3, :cond_135

    new-instance p0, Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    goto :goto_138

    :cond_135
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync()V

    :goto_138
    return-void
.end method

.method public static final synthetic access$getADJACENT_TRANSLATE_X$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getCURVE_INTERPOLATOR$cp()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getTRANSLATION_X$cp()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-object v0
.end method

.method public static final synthetic access$getTRANSLATION_Y$cp()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-object v0
.end method

.method private final getCurveAlphaForCurveInterpolation(FF)F
    .registers 5

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0, p2, p1, p0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    const/16 p1, 0xa

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method

.method private final getMLockManager()Lcom/oplus/quickstep/applock/OplusLockManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/OplusLockManager;

    return-object p0
.end method

.method private static final launchTask$lambda$18(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "OplusTaskView"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private static final launchTaskAnimatedAsync$lambda$16(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "OplusTaskView"

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    goto :goto_3b

    :cond_23
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearTaskRecorderIfNeeded(I)V

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6f

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskLaunchWindowAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_63

    move v1, v0

    :cond_63
    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    if-nez p0, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private static final launchTaskAnimatedAsync$lambda$17(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/launcher3/util/ActivityOptionsWrapper;Ljava/util/function/Consumer;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$opts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string v2, "launchTaskAnimatedAsync: run callback delay."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate$lambda$8(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/launcher3/util/ActivityOptionsWrapper;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync$lambda$17(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/launcher3/util/ActivityOptionsWrapper;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate$lambda$7$lambda$6(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method private static final onFinishInflate$lambda$7(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/FastClickUtil;->isFastClick()Z

    move-result p1

    const-string v0, "OplusTaskView"

    if-eqz p1, :cond_15

    const-string/jumbo p0, "onClick(), isFastClick, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo p1, "menuBtn onClick: isScrolling="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result p1

    if-ne p1, v0, :cond_51

    goto :goto_52

    :cond_51
    move v0, v1

    :goto_52
    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<@[FlexibleNullability] com.android.launcher3.statemanager.StatefulActivity<@[FlexibleNullability] com.android.launcher3.statemanager.BaseState<*>?>?, *>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    new-instance v0, Lcom/android/quickstep/views/e0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/e0;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setShowTaskMenuRunner(Ljava/lang/Runnable;)V

    goto :goto_76

    :cond_71
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    :goto_76
    return-void
.end method

.method private static final onFinishInflate$lambda$7$lambda$6(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    return-void
.end method

.method private static final onFinishInflate$lambda$8(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$12(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$13(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onTaskListVisibilityChanged$lambda$12(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTask$lambda$18(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate$lambda$7(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->_init_$lambda$0(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V

    return-void
.end method

.method private final setCurveScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleY(F)V

    return-void
.end method

.method public static final simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync$lambda$16(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onTaskListVisibilityChanged$lambda$13(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private final updateCurveInterpolation(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleTextColor(F)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result p0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIconAlpha(F)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setHintPointAlpha(F)V

    return-void
.end method

.method private final updateTitle()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic v(F)F
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR$lambda$31(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final animateToNormalIfNeed()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressScaleForGridRecentView()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    :cond_13
    return-void
.end method

.method public applyScale()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getPersistentScale()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleY(F)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateSnapshotRadius()V

    return-void
.end method

.method public final canShowLockUpgradeHint()Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/touch/OplusBasePortraitPagedViewHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getAllTaskKeysIncluded()Ljava/util/List;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    move p0, v2

    goto :goto_47

    :cond_20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    sget-object v3, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppExperiencedLockUpgradeSuperLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move p0, v1

    :goto_47
    if-eqz p0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    return v1
.end method

.method public final cancelAllAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    :cond_7
    return-void
.end method

.method public final cancelLightningAnimation()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    :cond_f
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAllTaskKeysIncluded()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v2, "key"

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_1d

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_36
    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_44

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_44

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-object v0
.end method

.method public final getCurveScale()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    return p0
.end method

.method public final getDismissScale()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    return p0
.end method

.method public final getDispatchDrawVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    return p0
.end method

.method public final getFullscreenParams()Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    const-string v0, "mCurrentFullscreenParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getGridTrans(F)F
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_12

    :cond_e
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result p0

    :goto_12
    return p0
.end method

.method public final getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    const-string v0, "mHeader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIgnoreResetScale()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    return p0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_36

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_30
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLockStableAlpha()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    return p0
.end method

.method public final getMLogTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxDismissScale()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->maxDismissScale:F

    return p0
.end method

.method public final getMenuView()Lcom/android/quickstep/views/OplusTaskMenuViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->menuView:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    return-object p0
.end method

.method public final getMinDismissScale()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->minDismissScale:F

    return p0
.end method

.method public final getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getPersistentScale()F
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_15

    :cond_11
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result p0

    :goto_15
    return p0
.end method

.method public final getScaleAnimatorForGridRecentView()Lcom/android/launcher3/anim/PendingAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->scaleAnimatorForGridRecentView:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0
.end method

.method public final getThumbnailTopMargin()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    return p0
.end method

.method public interceptOnLayout()Z
    .registers 4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->interceptOnLayout()Z

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isDragEnd()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isDragEnd:Z

    return p0
.end method

.method public final isEnterAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning:Z

    return p0
.end method

.method public final isEnterStateAnimRunningCache()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    return p0
.end method

.method public isGridTask()Z
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result p0

    return p0
.end method

.method public final isGridTaskDragAnimatorRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isGridTaskDragAnimatorRunning:Z

    return p0
.end method

.method public final isLocked()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMLockManager()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppsExistLocking(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    return p0
.end method

.method public isRunningTask()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isSupportQuickStartup()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0
.end method

.method public final isTaskLaunchAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    return p0
.end method

.method public final isTaskViewDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    return p0
.end method

.method public final isViewPressed()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final launchTask(ZZ)Lcom/android/launcher3/util/RunnableList;
    .registers 5

    new-instance v0, Lcom/android/quickstep/views/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/views/m;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTask(ZZLjava/util/function/Consumer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public final launchTask(ZZLjava/util/function/Consumer;)Lcom/android/launcher3/util/RunnableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/launcher3/util/RunnableList;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_c

    invoke-virtual {p0, p3, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTask(Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTask#callback#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .registers 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const-string v1, "launchTaskAnimated"

    invoke-static {v0, p0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->interceptAnimLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    return-object v2

    :cond_31
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public launchTaskAnimatedAsync()V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_16

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_16
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const-string v2, "launchTaskAnimatedAsync"

    invoke-static {v0, p0, v2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->interceptAnimLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_33

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_33
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_38
    return-void

    :cond_39
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_55

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_55

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_55
    move-object v2, v1

    :goto_56
    invoke-virtual {v0, v2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    const-string v2, "mActivity.getActivityLaunchOptions(this, null)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_6e

    const/4 v3, 0x0

    goto :goto_76

    :cond_6e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    :goto_76
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result v3

    if-eqz v3, :cond_9d

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_8b

    check-cast v3, Lcom/android/launcher/Launcher;

    goto :goto_8c

    :cond_8b
    move-object v3, v1

    :goto_8c
    if-eqz v3, :cond_93

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v3

    goto :goto_94

    :cond_93
    move-object v3, v1

    :goto_94
    instance-of v4, v3, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v4, :cond_9d

    check-cast v3, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v3}, Lcom/android/launcher/LauncherCallbacksImp;->closeAlphaOverlay()V

    :cond_9d
    new-instance v3, Lcom/android/quickstep/views/m;

    invoke-direct {v3, p0, v2}, Lcom/android/quickstep/views/m;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_b6

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_b6

    iget-object v2, v2, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_b6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_b7

    :cond_b6
    move-object v5, v1

    :goto_b7
    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string/jumbo v2, "mTask!!.key"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const-string/jumbo v2, "opts.options"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v9

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->startActivityFromRecents(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)Z

    move-result v2

    if-nez v2, :cond_100

    sget-object v2, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/quickstep/f1;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/quickstep/f1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/launcher3/util/ActivityOptionsWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v4, v1, v1, v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_100

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    :cond_100
    return-void
.end method

.method public final makeTaskHeaderHidden()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string/jumbo v2, "makeTaskHeaderHidden()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->animateToHide()V

    :cond_17
    return-void
.end method

.method public final makeTaskHeaderHideWithoutAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string/jumbo v2, "makeTaskHeaderHideWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->hideHeaderWithoutAnimation()Z

    :cond_17
    return-void
.end method

.method public final makeTaskHeaderShown()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string/jumbo v2, "makeTaskHeaderShown()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->animateToShow()V

    :cond_17
    return-void
.end method

.method public final makeTaskHeaderShownWithoutAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string/jumbo v2, "makeTaskHeaderShownWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-eqz p0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->setForceNotShowHeader(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->showHeaderWithoutAnimation()Z

    :cond_1b
    return-void
.end method

.method public final mappingDismissScaleWhenDragToDown(F)F
    .registers 4

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->maxDismissScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v1, v0, v1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->minDismissScale:F

    sub-float p0, v0, p0

    div-float/2addr v1, p0

    invoke-static {v0, p1, v1, v0}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onFinishInflate()V

    const v0, 0x7f0a0449

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/guide/g;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_36
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/b1;

    invoke-direct {v1, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertDpToPixel(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_8a

    :cond_7a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070302

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_8a
    iput v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v1

    :goto_2b
    if-ne v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    if-eqz v1, :cond_32

    return-void

    :cond_32
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V
    .registers 6

    const-string/jumbo p2, "scrollState"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_58

    iget-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez p2, :cond_12

    goto :goto_58

    :cond_12
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->animateToNormalIfNeed()V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_1c

    return-void

    :cond_1c
    sget-object p2, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getLinearInterpolation()F

    move-result p1

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sget-object p2, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-static {p2, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->access$getCurveScaleForCurveInterpolation(Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;F)F

    move-result p2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isNormalStarted()Z

    move-result v0

    if-ne v0, v1, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    if-eqz v1, :cond_4e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setNormalScale(F)V

    goto :goto_55

    :cond_4e
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    if-nez v0, :cond_55

    invoke-direct {p0, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setCurveScale(F)V

    :cond_55
    :goto_55
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateCurveInterpolation(F)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideCOUIToolTips()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "onTaskListVisibilityChanged: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", update["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], visible="

    const-string v4, ", draw="

    invoke-static {v2, p2, v3, p1, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTaskView"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    const/4 v2, 0x0

    if-eqz p1, :cond_a5

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v5}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateLockIconVisibility(ZZZ)V

    sget-object v3, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v3

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Lcom/android/common/util/n;

    invoke-direct {v5, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v4, v0, v5}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_95
    if-eqz p2, :cond_bb

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/common/util/m;

    invoke-direct {v0, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v3, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_bb

    :cond_a5
    const/4 v3, 0x0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, v3, v3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_b4
    if-eqz p2, :cond_bb

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p2, v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_bb
    :goto_bb
    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz p1, :cond_d0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result p0

    if-eqz p0, :cond_d0

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result p0

    if-nez p0, :cond_d0

    goto :goto_d1

    :cond_d0
    move v1, v2

    :goto_d1
    invoke-virtual {p2, v1, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateHintPointVisibility(ZZ)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ev"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return v0

    :cond_11
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result v1

    const-string v2, "OplusTaskView"

    if-eqz v1, :cond_33

    const-string/jumbo p0, "onTouch, intercept by isTaskLaunchAnimRunning ="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    invoke-static {p1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, 0x7

    const-string v4, "context"

    if-nez p1, :cond_b1

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "RECENTS_SLIDE"

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneBegin(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLastMotion:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setNormalScale(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    const p2, 0x3f7c28f6  # 0.985f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_75

    goto :goto_76

    :cond_75
    move v1, v0

    :goto_76
    sput-boolean v1, Lcom/android/quickstep/views/OplusTaskViewImpl;->mNeedScaleAnimate:Z

    const-string/jumbo p1, "mNeedScaleAnimate:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean p2, Lcom/android/quickstep/views/OplusTaskViewImpl;->mNeedScaleAnimate:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ,scaleX:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/quickstep/views/OplusTaskViewImpl;->mNeedScaleAnimate:Z

    if-nez p1, :cond_a7

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-nez p1, :cond_a7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_143

    :cond_a7
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToPressed()V

    goto/16 :goto_143

    :cond_b1
    const/4 v2, 0x2

    const/4 v5, -0x1

    if-ne p1, v2, :cond_fc

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_fc

    iget p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-eq p1, v5, :cond_143

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result p1

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLastMotion:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTouchSlop:I

    if-le p1, p2, :cond_143

    const-string/jumbo p2, "onTouch to normal, diff = "

    const-string v1, ", mTouchSlop = "

    invoke-static {p2, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTouchSlop:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNAPSHOT_SCALE"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    goto :goto_143

    :cond_fc
    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_143

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    if-nez v2, :cond_143

    if-eq p1, v1, :cond_113

    const/4 v1, 0x3

    if-eq p1, v1, :cond_113

    const/4 v1, 0x5

    if-ne p1, v1, :cond_143

    :cond_113
    iget p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-eq p1, v5, :cond_133

    sget-boolean p1, Lcom/android/quickstep/views/OplusTaskViewImpl;->mNeedScaleAnimate:Z

    if-nez p1, :cond_12b

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-nez p1, :cond_12b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_133

    :cond_12b
    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    :cond_133
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->gfxSceneEnd(Landroid/content/Context;I)V

    :cond_143
    :goto_143
    return v0
.end method

.method public final resetPressedScaleIfNeed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelAllAnimation()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setScaleY(F)V

    return-void
.end method

.method public resetViewTransforms()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->showHeaderWithoutAnimation()Z

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->reset()V

    :cond_18
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    return-void
.end method

.method public final setAdjacentTranslationX(F)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "setAdjacentTranslationX(), changeTransX="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", curTransX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isEnterStateCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHadAdjacentReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adjacentTransValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    if-eqz v0, :cond_57

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void

    :cond_57
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez v0, :cond_67

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    :cond_67
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    if-nez v0, :cond_6c

    return-void

    :cond_6c
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_77

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_84

    :cond_77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_82

    move v1, v2

    :cond_82
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    :goto_84
    return-void
.end method

.method public setAlpha(F)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpg-float v1, v0, p1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_4a

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->isKeyAlphaValue(F)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->isKeyAlphaValue(F)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_19
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setAlpha old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", new: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setDispatchDrawVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    return-void
.end method

.method public final setDragEnd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isDragEnd:Z

    return-void
.end method

.method public final setEnterAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning:Z

    return-void
.end method

.method public final setEnterStateAnimRunningCache(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    return-void
.end method

.method public setFullscreenProgress(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    cmpg-float v1, p1, v1

    if-gez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    const/4 v1, 0x4

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenProgress(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateSnapshotRadius()V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->updateParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public final setGridProgressLight(F)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setGridProgress(F)V

    return-void
.end method

.method public final setGridTaskDragAnimatorRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isGridTaskDragAnimatorRunning:Z

    return-void
.end method

.method public setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_25

    const-string/jumbo p1, "setIcon(), task="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-nez p1, :cond_31

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p1

    if-eqz p1, :cond_45

    :cond_31
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_4a

    :cond_45
    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_4a
    return-void
.end method

.method public final setIgnoreResetScale(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    return-void
.end method

.method public final setLockStableAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    return-void
.end method

.method public final setMaxDismissScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->maxDismissScale:F

    return-void
.end method

.method public final setMinDismissScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->minDismissScale:F

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 10

    const-string/jumbo v0, "orientationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    invoke-interface {p1, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    div-int/lit8 v1, v3, 0x2

    iget v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_6e

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    if-eqz v0, :cond_78

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onRotationChanged(I)V

    :cond_78
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_86

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setPrimaryTranslate(Landroid/view/View;FI)V

    :cond_86
    return-void
.end method

.method public final setScaleAnimatorForGridRecentView(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->scaleAnimatorForGridRecentView:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method public setScaleX(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_13

    return-void

    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setScaleY(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_13

    return-void

    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setStableAlpha(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    return-void
.end method

.method public final setTaskLaunchAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    return-void
.end method

.method public final setTaskViewIsDragging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_2d

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-nez p1, :cond_27

    const-string p1, ""

    goto :goto_2d

    :cond_27
    const-string/jumbo v0, "mTask?.titleDescription ?: \"\""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateTitle()V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_17

    const/4 p2, 0x1

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-eqz p2, :cond_2d

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-nez p1, :cond_27

    const-string p1, ""

    goto :goto_2d

    :cond_27
    const-string/jumbo p2, "mTask?.titleDescription ?: \"\""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateTitle()V

    return-void
.end method

.method public setTranslationZ(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ignoreResetScale:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_17

    return-void

    :cond_17
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_57

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p1, :cond_37

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " setVisible: false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_37
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " setVisible: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    :goto_57
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showHeader(ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeaderShowAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez p1, :cond_13

    if-eqz p2, :cond_f

    move v0, v1

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setAlpha(F)V

    return-void

    :cond_13
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p2, :cond_1f

    move v5, v0

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    aput v5, v3, v4

    const/4 v4, 0x1

    if-eqz p2, :cond_26

    move v0, v1

    :cond_26
    aput v0, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeaderShowAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final showLightningAnimation()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->showLightningAnimation()V

    :cond_f
    return-void
.end method

.method public final showLockUpgradeHint()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showLockUpgradeHint()V

    return-void
.end method

.method public final showQuickStartupExitToastIfNeed()V
    .registers 4

    const-string/jumbo v0, "showQuickStartupExitToastIfNeed(), task="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportQuickStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1c

    iget-boolean v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-boolean v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    if-eqz v0, :cond_3a

    return-void

    :cond_3a
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f12041d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showTaskMenu(Lcom/android/quickstep/views/IconView;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statEventClickTaskMenuView()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z

    move-result p0

    return p0
.end method

.method public showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    if-ne p1, p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    aget-object p0, v0, p0

    sget-object p1, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;

    const-string/jumbo v0, "menuContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+{task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dispatchDrawVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSnapshotRadius()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setFullscreenProgress(F)V

    :cond_14
    return-void
.end method

.method public updateTaskSize()V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const-string v2, "mActivity.deviceProfile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_21

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_21

    :cond_1c
    const/high16 v1, 0x3f800000  # 1.0f

    move v5, v3

    move v2, v4

    goto :goto_5a

    :cond_21
    :goto_21
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_3c

    move v5, v2

    move v6, v3

    goto :goto_4c

    :cond_3c
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getLastComputedGridTaskSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    :goto_4c
    add-int/2addr v5, v1

    int-to-float v3, v3

    int-to-float v7, v6

    div-float/2addr v3, v7

    sub-int v1, v5, v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    move v2, v1

    move v1, v3

    move v3, v6

    :goto_5a
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setNonGridScale(F)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_65

    :cond_64
    move v2, v4

    :goto_65
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/TaskView;->setBoxTranslationY(F)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-direct {p0, v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateCurveInterpolation(F)V

    :cond_71
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v3, :cond_79

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v5, :cond_80

    :cond_79
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_80
    return-void
.end method

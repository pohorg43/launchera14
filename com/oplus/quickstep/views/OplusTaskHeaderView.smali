.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskHeaderView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskHeaderView.kt\ncom/oplus/quickstep/views/OplusTaskHeaderView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,732:1\n1#2:733\n252#3:734\n252#3:735\n252#3:736\n252#3:765\n94#4,14:737\n94#4,14:751\n94#4,14:766\n*S KotlinDebug\n*F\n+ 1 OplusTaskHeaderView.kt\ncom/oplus/quickstep/views/OplusTaskHeaderView\n*L\n498#1:734\n525#1:735\n605#1:736\n701#1:765\n619#1:737,14\n628#1:751,14\n704#1:766,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

.field public static final HEADER_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final HINT_POINT_HIDE_ANIM_DURATION:J = 0x14dL

.field private static final INIT_END_SCALE_X_Y_VALUE:F = 0.8f

.field private static final LOCK_ICON_SHOW_HIDE_ANIM_DURATION:J = 0x14dL

.field public static final MINI_WINDOW_DEFAULT_PKG:Ljava/lang/String; = "Default"

.field private static final TAG:Ljava/lang/String; = "OplusTaskHeaderView"

.field private static final TOOL_TIPS_DISABLE:Ljava/lang/String; = "tool_tips_show_key"

.field public static final WINDOWING_MODE_BRACKET:I = 0x73

.field private static allowResizeableInSetting:Z

.field private static canMiniMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static canSplitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static compatibleModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static miniWindowName:Ljava/lang/String;

.field private static miniWindowTaskId:I

.field private static parallelVersionMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static toolTipsDisable:Z


# instance fields
.field public hintPoint:Landroid/view/View;

.field private hintPointHideAnim:Landroid/animation/Animator;

.field public lockIcon:Lcom/android/quickstep/views/OplusIconView;

.field private lockIconHideAnim:Landroid/animation/Animator;

.field private lockIconMargin:I

.field private lockIconShowAnim:Landroid/animation/Animator;

.field private mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field public menuBtn:Landroid/widget/ImageButton;

.field public miniWindowBtn:Landroid/widget/ImageButton;

.field public scaleToBigBtn:Landroid/widget/ImageButton;

.field public scaleToSmallBtn:Landroid/widget/ImageButton;

.field public splitWindowBtn:Landroid/widget/ImageButton;

.field public taskIcon:Lcom/android/quickstep/views/OplusIconView;

.field private textMargin:I

.field public titleTv:Landroid/widget/TextView;

.field private final tmpBuilder:Ljava/lang/StringBuilder;

.field private totalWidthWithoutText:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    const-string v0, "Default"

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070878

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0702f9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string p1, "tool_tips_show_key"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showLockUpgradeHint$lambda$23$lambda$22()V

    return-void
.end method

.method public static final synthetic access$getAllowResizeableInSetting$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    return v0
.end method

.method public static final synthetic access$getCanMiniMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getCanSplitMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getCompatibleModeMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getMiniWindowName$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMiniWindowTaskId$cp()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    return v0
.end method

.method public static final synthetic access$getParallelVersionMode$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getToolTipsDisable$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    return v0
.end method

.method public static final synthetic access$setAllowResizeableInSetting$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    return-void
.end method

.method public static final synthetic access$setCanMiniMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCanSplitMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCompatibleModeMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setHintPointHideAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setLockIconHideAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setLockIconShowAnim$p(Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setMiniWindowName$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMiniWindowTaskId$cp(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    return-void
.end method

.method public static final synthetic access$setParallelVersionMode$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setToolTipsDisable$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    return-void
.end method

.method private final createLockIconHideAnim(FFF)Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$18$$inlined$addListener$default$1;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconHideAnim$lambda$18$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private final createLockIconShowAnim(FFF)Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$16$$inlined$addListener$default$1;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$createLockIconShowAnim$lambda$16$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private final createLockIconShowHideAnim(ZFFF)Landroid/animation/Animator;
    .registers 15

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    const p2, 0x3f4ccccd  # 0.8f

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz p1, :cond_2a

    move v8, v7

    goto :goto_2b

    :cond_2a
    move v8, p2

    :goto_2b
    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput p3, v5, v6

    if-eqz p1, :cond_41

    move p2, v7

    :cond_41
    aput p2, v5, v9

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v9

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    sget-object p2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array p3, v4, [F

    aput p4, p3, v6

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    const/4 v7, 0x0

    :goto_57
    aput v7, p3, v9

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method private final hideWindowIcon(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_15
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    iget-boolean p0, p3, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    iget-object v1, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v2, "task.key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;->isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    if-nez p0, :cond_2d

    :cond_14
    invoke-static {p3}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-eqz p0, :cond_2e

    sget-object p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p2

    aget-object p2, p2, v0

    const-string p3, "taskView.taskIdAttributeContainers[0]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;->support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    :cond_2e
    return v0
.end method

.method private final showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p1

    if-nez p1, :cond_94

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-nez p1, :cond_94

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-static {p1, p2}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    if-nez p3, :cond_94

    if-nez p1, :cond_94

    const-string p1, "taskPackageName: "

    const-string p3, "  "

    invoke-static {p1, p2, p3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-static {p3, p2}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OplusTaskHeaderView"

    invoke-static {p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-static {p3, p2}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;->showScaleChangeBtn(I)Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    sget-object p2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_SMALL:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p2, p4, p5}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_94

    :cond_7f
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    sget-object p2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_BIG:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p2, p4, p5}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_94
    :goto_94
    return-void
.end method

.method private final showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_5d

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5d

    :cond_d
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;

    invoke-direct {p1, p3, p4}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_5d

    :cond_30
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    goto :goto_5d

    :cond_38
    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p1, p3, p4}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    if-eqz p1, :cond_4f

    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_5d

    :cond_4f
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private static final showLockUpgradeHint$lambda$23$lambda$22()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->setIsAlreadyHintLockUpgrade(Z)V

    sget-object v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->setLockUpgradeHintShowing(Z)V

    return-void
.end method

.method private final showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 10

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    iget-boolean v2, p2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    if-eqz v2, :cond_17

    invoke-static {p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_c3

    :cond_17
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isTabletHeaderEnable()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_c3

    :cond_2b
    if-eqz p4, :cond_3a

    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-static {p1, p3}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_73

    if-nez p4, :cond_73

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result p2

    if-eqz p2, :cond_66

    new-instance p2, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;

    invoke-direct {p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;-><init>()V

    invoke-virtual {p2, p5, p6}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    goto :goto_6f

    :cond_66
    new-instance p2, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;

    invoke-direct {p2}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;-><init>()V

    invoke-virtual {p2, p5, p6}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p2

    :goto_6f
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_b4

    :cond_73
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    goto :goto_b4

    :cond_7b
    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->MULTI_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {v2, p5, p6}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p5, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_8d

    if-eqz p6, :cond_8d

    goto :goto_8e

    :cond_8d
    move v0, v1

    :goto_8e
    iput-boolean v0, p2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->canSplitWindow:Z

    if-eqz v0, :cond_a6

    if-nez p4, :cond_a6

    if-nez p6, :cond_97

    return-void

    :cond_97
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_b4

    :cond_a6
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :goto_b4
    if-eqz p4, :cond_c3

    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c3

    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    :goto_c3
    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final fixEllipsizeForTV()V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_8
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_8a

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_57
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "titleTv.text="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ellipsizePreStr="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ellipsizeStr="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskHeaderView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    return-void

    :cond_8a
    move-object v0, v1

    goto/16 :goto_8
.end method

.method public final getHintPoint()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPoint:Landroid/view/View;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "hintPoint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLockIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "lockIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public final getMenuBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "menuBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMenuBtnImageBottom()I
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_1f

    check-cast v2, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result p0

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p0

    :goto_2f
    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMiniWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "miniWindowBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToBigBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "scaleToBigBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToSmallBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "scaleToSmallBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSplitWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "splitWindowBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "taskIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitleTv()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "titleTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideCOUIToolTips()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_10

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    if-eqz v0, :cond_17

    :cond_10
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_17
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 14

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/TextView;

    const-string v1, "OplusTaskHeaderView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_3a

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v4, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    sub-int v4, v3, v4

    invoke-static {v4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "measureChildWithMargins: widthSize = "

    const-string v6, ", widthMode = "

    const-string v7, ", totalWidth = "

    invoke-static {v5, v3, v6, p2, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    move p2, v4

    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v4, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr p3, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v4

    add-int/2addr p3, p5

    iget p5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    if-nez v0, :cond_97

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p2

    if-eqz p2, :cond_97

    const-string p2, "measureChildWithMargins: sw = "

    const-string p3, ", totalWidthWithoutText = "

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_app_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V

    const v0, 0x7f0a0450

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_title_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleTv(Landroid/widget/TextView;)V

    const v0, 0x7f0a044c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_lock_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_48

    const v2, 0x7f0808c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a044f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_split_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setSplitWindowBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a044b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_float_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMiniWindowBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a0451

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_to_big_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToBigBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a0452

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_…k_header_to_small_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToSmallBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a044d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_menu_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMenuBtn(Landroid/widget/ImageButton;)V

    new-instance v0, Lcom/android/quickstep/OplusKeyButtonRipple;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f0702f8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/OplusKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setType(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a044e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_…k_header_menu_hint_point)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setHintPoint(Landroid/view/View;)V

    sget-object v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->INSTANCE:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSameSizeEnable()Z

    move-result v0

    if-eqz v0, :cond_e9

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->INSTANCE:Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f070c0f

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V

    :cond_e9
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportMinimumMemory()Z

    move-result v0

    if-eqz v0, :cond_f5

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    if-nez v0, :cond_11a

    :cond_f5
    :try_start_f5
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_103

    goto :goto_108

    :catchall_103
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_108
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_10f

    goto :goto_11a

    :cond_10f
    const-string v0, "COUIToolTips(context) : e"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OplusTaskHeaderView"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_11a
    :goto_11a
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 14

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_10b

    const-string p1, "onLayout: rtl = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\ntv = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nlock = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\ntaskIcon = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nmenu = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBottom()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p3, "OplusTaskHeaderView"

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p1

    if-eqz p1, :cond_115

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->onLayoutItem(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    return-void

    :cond_115
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p3, p2, Landroid/graphics/drawable/VectorDrawable;

    const/4 p4, 0x0

    if-eqz p3, :cond_12d

    check-cast p2, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_12e

    :cond_12d
    move-object p2, p4

    :goto_12e
    if-eqz p2, :cond_135

    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result p2

    goto :goto_13d

    :cond_135
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    :goto_13d
    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p5, p3, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p5, :cond_157

    check-cast p3, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_158

    :cond_157
    move-object p3, p4

    :goto_158
    if-eqz p3, :cond_15f

    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result p3

    goto :goto_167

    :cond_15f
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p3

    :goto_167
    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p3

    const p5, 0x7f070fac

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2d3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    add-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v2, p3, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget p3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p3, v2

    :cond_1e6
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1f9

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p3, v2

    :cond_1f9
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getBottom()I

    move-result v7

    invoke-virtual {v4, p3, v5, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getBottom()I

    move-result v7

    invoke-virtual {v4, p3, v5, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBottom()I

    move-result v6

    invoke-virtual {v4, v2, v5, p3, v6}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_277

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    sub-int v3, p3, v2

    goto :goto_278

    :cond_277
    move p3, v2

    :goto_278
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, p3, v5}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_29a

    goto :goto_29b

    :cond_29a
    move v0, v1

    :goto_29b
    if-eqz v0, :cond_29e

    move-object p4, p3

    :cond_29e
    if-eqz p4, :cond_418

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getRight()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTop()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p3, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_418

    :cond_2d3
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, p3, v5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getLeft()I

    move-result p3

    iget v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, p3, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getRight()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_346

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p3, v2

    :cond_346
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_359

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p3, v2

    :cond_359
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, p3, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, p3, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBottom()I

    move-result v6

    invoke-virtual {v4, p3, v5, v2, v6}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBottom()I

    move-result v5

    invoke-virtual {p3, v2, v4, v3, v5}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3e2

    goto :goto_3e3

    :cond_3e2
    move v0, v1

    :goto_3e3
    if-eqz v0, :cond_3e6

    move-object p4, p3

    :cond_3e6
    if-eqz p4, :cond_418

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getLeft()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTop()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p4, p3, p2, p1, p0}, Landroid/view/View;->layout(IIII)V

    :cond_418
    :goto_418
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    const-wide/16 v0, 0x8

    const-string v2, "OplusTaskHeaderView#onMeasure"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v2, v4, :cond_19

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v4, :cond_17

    goto :goto_19

    :cond_17
    move v2, v3

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v2, 0x1

    :goto_1a
    iput v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "onMeasure: title = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nmeasureMatchParentChildren = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\ntaskIcon = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nlockIcon = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ntitleTv = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmenuBtn = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusTaskHeaderView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final reset()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final setHintPoint(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPoint:Landroid/view/View;

    return-void
.end method

.method public final setHintPointAlpha(F)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public final setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    return-void
.end method

.method public final setLockIconAlpha(F)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_21

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setMToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final setMenuBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setMiniWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setScaleToBigBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setScaleToSmallBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setShortCutAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public final setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 15

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_186

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_186

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v0

    if-eqz v0, :cond_186

    :cond_19
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_26
    const-string v1, ""

    if-nez v0, :cond_2b

    move-object v0, v1

    :cond_2b
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    goto :goto_33

    :cond_32
    move-object v1, v2

    :goto_33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, v4

    :goto_3e
    if-nez v2, :cond_186

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_48

    move v2, v3

    goto :goto_49

    :cond_48
    move v2, v4

    :goto_49
    if-nez v2, :cond_186

    instance-of v2, p2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v2, :cond_51

    goto/16 :goto_186

    :cond_51
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    sget-object v5, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    sget-object v5, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    :cond_6b
    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_77

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_77

    move v5, v3

    goto :goto_78

    :cond_77
    move v5, v4

    :goto_78
    if-eqz v5, :cond_7c

    move v9, v3

    goto :goto_7d

    :cond_7c
    move v9, v4

    :goto_7d
    instance-of v5, v2, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_85

    move-object v5, v2

    check-cast v5, Lcom/android/launcher/Launcher;

    goto :goto_86

    :cond_85
    const/4 v5, 0x0

    :goto_86
    if-eqz v5, :cond_8d

    invoke-virtual {v5}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v5

    goto :goto_8e

    :cond_8d
    move v5, v4

    :goto_8e
    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_9b

    iget v7, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz v7, :cond_99

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9b

    :cond_99
    move v7, v3

    goto :goto_9c

    :cond_9b
    move v7, v4

    :goto_9c
    if-eqz v6, :cond_a5

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v8, 0x73

    if-ne v6, v8, :cond_a5

    goto :goto_a6

    :cond_a5
    move v3, v4

    :goto_a6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v10, "OplusTaskHeaderView"

    if-eqz v6, :cond_e4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setShortCutIcon(), task="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", inMini="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", miniName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", inSplit="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", pkg="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", basePkg="

    const-string v11, ", bracket="

    invoke-static {v6, v0, v8, v1, v11}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v3, v10}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_e4
    if-nez v5, :cond_16a

    if-nez v3, :cond_16a

    if-nez v7, :cond_ec

    goto/16 :goto_16a

    :cond_ec
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v3

    aget-object v11, v3, v4

    const-string v3, "activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "taskIdAttributeContainer"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, v1

    move v6, v9

    move-object v7, v2

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-direct {p0, p2, v1, v2, v11}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    move-object v5, p1

    move-object v6, v1

    move v7, v9

    move-object v8, v2

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p1

    if-eqz p1, :cond_11d

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V

    :cond_11d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_186

    const-string p0, "taskPackageName: "

    const-string p1, ", parallelVersionMode="

    invoke-static {p0, v0, p1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", canSplitMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", canMiniMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", miniWindowName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", toolTipsDisable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", compatibleModeMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_186

    :cond_16a
    :goto_16a
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :cond_186
    :goto_186
    return-void
.end method

.method public final setSplitWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    return-void
.end method

.method public final setTaskIconAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-ne v2, v0, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_24

    :cond_11
    if-eqz p1, :cond_22

    sget-object v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_24

    :cond_22
    const-string p1, ""

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lk7/k;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, "mContext"

    const-string v1, ""

    if-eqz p1, :cond_18

    sget-object v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    :cond_18
    move-object p1, v1

    :cond_19
    iget-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_33

    sget-object v2, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_32

    goto :goto_33

    :cond_32
    move-object v1, p2

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_3d

    move p1, p2

    goto :goto_3e

    :cond_3d
    move p1, v0

    :goto_3e
    if-eqz p1, :cond_65

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_47

    goto :goto_48

    :cond_47
    move p2, v0

    :goto_48
    if-eqz p2, :cond_65

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-static {v2}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusRTLFormatUtils;->isolateSentence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    return-void

    :cond_83
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final setTitleTextColor(F)V
    .registers 4

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/16 p1, 0xff

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTitleTv(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public final showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V
    .registers 14

    const-string v0, "imageButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-nez v0, :cond_107

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_23

    goto/16 :goto_107

    :cond_23
    :try_start_23
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_3b

    move v2, v1

    goto :goto_3c

    :cond_3b
    move v2, v4

    :goto_3c
    if-eqz v2, :cond_a8

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4c

    move v2, v1

    goto :goto_4d

    :cond_4c
    move v2, v4

    :goto_4d
    if-eqz v2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getClearAllButtonAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_59

    move v2, v1

    goto :goto_5a

    :cond_59
    move v2, v4

    :goto_5a
    if-eqz v2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result p2

    if-nez p2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result p2

    if-nez p2, :cond_a8

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_a8

    sget-boolean p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez p2, :cond_a8

    move p2, v1

    goto :goto_a9

    :cond_a8
    move p2, v4

    :goto_a9
    if-eqz p2, :cond_f2

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p2, :cond_b2

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    :cond_b2
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p2, :cond_c4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120245

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    :cond_c4
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p2, :cond_c9

    goto :goto_cc

    :cond_c9
    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :goto_cc
    iget-object v5, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v5, :cond_e3

    const/16 v7, 0x80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getHeight()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 v10, p2, 0x3

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    :cond_e3
    sput-boolean v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string p1, "tool_tips_show_key"

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    :cond_f2
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_f4
    .catchall {:try_start_23 .. :try_end_f4} :catchall_f5

    goto :goto_fa

    :catchall_f5
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_fa
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_107

    const-string p0, "OplusTaskHeaderView"

    const-string p1, "showCOUIToolTips error : parameters exception "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    return-void
.end method

.method public final showLockUpgradeHint()V
    .registers 10

    const-string v0, "OplusTaskHeaderView"

    const-string v1, "showLockUpgradeHint"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/quickstep/views/OplusToolTips;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/oplus/quickstep/views/OplusToolTips;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/oplus/quickstep/views/a;->a:Lcom/oplus/quickstep/views/a;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v6, v1

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v4, v7

    add-float/2addr v4, v6

    sget-object v6, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v1

    div-int/2addr v6, v5

    int-to-float v5, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_5a

    const/4 v0, -0x1

    :cond_5a
    int-to-float v0, v0

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    float-to-int v6, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_70

    const v0, 0x7f070ed3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v1, p0

    :cond_70
    neg-int v7, v1

    const/16 v4, 0x80

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/views/OplusToolTips;->showWithDirection(Landroid/view/View;IZII)V

    return-void
.end method

.method public final updateHintPointVisibility(ZZ)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_65

    if-nez p2, :cond_7

    goto :goto_65

    :cond_7
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    const/4 p2, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-ne p1, p2, :cond_14

    move p1, p2

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    if-eqz p1, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    move p1, p2

    goto :goto_25

    :cond_24
    move p1, v1

    :goto_25
    if-nez p1, :cond_28

    return-void

    :cond_28
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v1

    aput v0, v3, p2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "updateHintPointVisibility$lambda$21"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$updateHintPointVisibility$lambda$21$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x14d

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    return-void

    :cond_65
    :goto_65
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_6c
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hintPointHideAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_77

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_77
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_81

    goto :goto_83

    :cond_81
    const/16 v1, 0x8

    :goto_83
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateLockIconVisibility(ZZZ)V
    .registers 10

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    if-eqz p3, :cond_11

    const p3, 0x7f0808d5

    goto :goto_14

    :cond_11
    const p3, 0x7f0808c9

    :goto_14
    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_26

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    goto :goto_27

    :cond_26
    move-object p3, v2

    :goto_27
    invoke-virtual {v0, p3}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_38

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result p3

    if-ne p3, v0, :cond_38

    move p3, v0

    goto :goto_39

    :cond_38
    move p3, v1

    :goto_39
    iget-object v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-ne v3, v0, :cond_45

    move v3, v0

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    const/4 v4, 0x0

    const v5, 0x3f4ccccd  # 0.8f

    if-eqz p3, :cond_4e

    if-nez v3, :cond_50

    :cond_4e
    if-nez p2, :cond_85

    :cond_50
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_57
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_60

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_60
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_6c

    move p3, p2

    goto :goto_6d

    :cond_6c
    move p3, v5

    :goto_6d
    invoke-virtual {p0, p3}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_73

    move v5, p2

    :cond_73
    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleY(F)V

    if-eqz p1, :cond_79

    move v4, p2

    :cond_79
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_7f

    goto :goto_81

    :cond_7f
    const/16 v1, 0x8

    :goto_81
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_85
    if-eqz p3, :cond_89

    if-nez p1, :cond_8d

    :cond_89
    if-eqz v3, :cond_8e

    if-nez p1, :cond_8e

    :cond_8d
    return-void

    :cond_8e
    if-eqz p3, :cond_c3

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_97

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_97
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconHideAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    goto/16 :goto_13a

    :cond_c3
    if-eqz v3, :cond_f7

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_cc

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_cc
    iput-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    goto :goto_13a

    :cond_f7
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_102

    goto :goto_103

    :cond_102
    move v0, v1

    :goto_103
    if-ne v0, p1, :cond_106

    return-void

    :cond_106
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_119

    invoke-direct {p0, v5, v5, v4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconShowAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconShowAnim:Landroid/animation/Animator;

    goto :goto_13a

    :cond_119
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->createLockIconHideAnim(FFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconHideAnim:Landroid/animation/Animator;

    :goto_13a
    return-void
.end method

.class public Lcom/android/keyguardservice/KeyGuardDismissedUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIM_DURATION:I = 0x104

.field private static final DELAY_TOLERANCE:I = 0x14

.field private static final DISMISS_ANIMATION_DURATION_1:I = 0x352

.field private static final DISMISS_ANIMATION_DURATION_2:I = 0x352

.field private static final DISMISS_ANIMATION_DURATION_3:I = 0x352

.field private static final DISMISS_ANIMATION_DURATION_4:I = 0x352

.field private static final DISMISS_ANIMATION_DURATION_5:I = 0x352

.field private static final DISSMISS_ALPHA_DURATION:J = 0xc8L

.field private static final DISSMISS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISSMISS_DRAGLAYER_SCALE:F = 0.95f

.field private static final DISSMISS_FIFTH_ROW:I = 0x5

.field private static final DISSMISS_FIFTH_ROW_ICONS_ANIMATION_TRANSLATE:F = 12.0f

.field private static final DISSMISS_FIRST_ROW:I = 0x1

.field private static final DISSMISS_FIRST_ROW_ICONS_ANIMATION_DELAY:I = 0x0

.field private static final DISSMISS_FORTH_ROW:I = 0x4

.field private static final DISSMISS_HOTSEAT_ANIMATION_TRANSLATE:F = 100.0f

.field private static final DISSMISS_SCALE_DURATION:J = 0x247L

.field private static final DISSMISS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISSMISS_SECOND_ROW:I = 0x2

.field private static final DISSMISS_SIXTH_ROW_ICONS_ANIMATION_TRANSLATE:F = 15.0f

.field private static final DISSMISS_THIRD_ROW:I = 0x3

.field private static final DISSMISS_ZERO_ROW:I = 0x0

.field private static final DRAG_LAYER_DURATION:I = 0xc8

.field private static final ENABLE_CLICK_PERCENT:F = 0.8f

.field public static final FLOAT_2:F = 2.0f

.field private static final HALF:F = 0.5f

.field private static final HOTSEAT_ANIMATION_DURATION:I = 0x352

.field private static final HOTSEAT_DAMPING_RATIO:F = 0.89f

.field private static final HOTSEAT_DELAY:I = 0xc8

.field private static final HOTSEAT_STIFFNESS:J = 0xaaL

.field private static final ICON_DAMPING:F = 0.54f

.field private static final ICON_STIFFNESS:F = 99.0f

.field private static final INT_0:I = 0x0

.field private static final INT_1:I = 0x1

.field private static final INT_2:I = 0x2

.field private static final INT_3:I = 0x3

.field private static final INT_4:I = 0x4

.field private static final INT_5:I = 0x5

.field private static final KEYGUARD_SCALE_MAX:F = 6.0f

.field private static final LAYER_DAMPING_RATIO:F = 0.89f

.field private static final LAYER_DELAY_1:I = 0x0

.field private static final LAYER_DELAY_2:I = 0x21

.field private static final LAYER_DELAY_3:I = 0x32

.field private static final LAYER_DELAY_4:I = 0x3a

.field private static final LAYER_DELAY_5:I = 0x42

.field private static final LAYER_STIFFNESS_1:F = 120.0f

.field private static final LAYER_STIFFNESS_2:F = 120.0f

.field private static final LAYER_STIFFNESS_3:F = 120.0f

.field private static final LAYER_STIFFNESS_4:F = 120.0f

.field private static final LAYER_STIFFNESS_5:F = 120.0f

.field private static final LAYER_VELOCITY:F = 12000.0f

.field private static final LINE_POSITION_ANIM_COUNT:F = 4.0f

.field private static final POSITION_ANIM_START_INPUT:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "KeyGuardDismissedUtils"

.field private static final TEXT_ALPHA_DELAY:I = 0xc8

.field private static final TEXT_ALPHA_DURATION:I = 0x15e

.field private static final TEXT_ALPHA_STIFFNESS:F = 150.0f

.field private static final TRANSLATE_TOLERANCE:I = 0xa

.field private static sCardLayerTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableClick:Z

.field private static sDissmissHotseatTranslateY:F

.field private static sIsUnlockAnimActiveEnd:Z

.field private static sKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a  # 0.3f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput v1, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sCardLayerTypes:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sIsUnlockAnimActiveEnd:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->lambda$addHotSeatAnim$0(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->overshoot(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->updateHotSeatAndIndicatorAlpha(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Ljava/util/ArrayList;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->onAnimationEnd(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    return p0
.end method

.method public static addAnimByLine(Ljava/util/ArrayList;Landroid/view/ViewGroup;IFZII)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;",
            "Landroid/view/ViewGroup;",
            "IFZII)V"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    :goto_b
    if-ge v9, v8, :cond_5e

    move-object v10, p1

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_5a

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    move v11, p2

    if-ne v11, v3, :cond_5b

    const/high16 v0, 0x40000000  # 2.0f

    if-eqz p4, :cond_48

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v3

    invoke-static {v3, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->invertCellX(III)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v4, v4, -0x1

    int-to-float v3, v4

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000  # 4.0f

    move-object v0, v7

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V

    goto :goto_5b

    :cond_48
    int-to-float v2, v2

    add-int/lit8 v4, v4, -0x1

    int-to-float v3, v4

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000  # 4.0f

    move-object v0, v7

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V

    goto :goto_5b

    :cond_5a
    move v11, p2

    :cond_5b
    :goto_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_5e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object v1, p0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    return-void
.end method

.method private static addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "FFFII)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput p4, v4, v7

    const-string v8, "alpha"

    invoke-static {v0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x82

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v8, p5

    invoke-static {v1, v2, v8}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->computeTranslation(FFI)F

    move-result v8

    instance-of v9, v0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v9, :cond_39

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v9}, Lcom/android/launcher3/card/IAreaWidget;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v9

    if-eqz v9, :cond_39

    iget v9, v9, Landroid/graphics/PointF;->x:F

    goto :goto_3a

    :cond_39
    move v9, v6

    :goto_3a
    new-array v10, v3, [F

    aput v8, v10, v5

    aput v9, v10, v7

    const-string/jumbo v8, "translationX"

    invoke-static {v0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x104

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/keyguardservice/KeyGuardDismissedUtils$1;

    invoke-direct {v11}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$1;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v11, p6

    int-to-float v11, v11

    const/high16 v12, 0x40800000  # 4.0f

    div-float/2addr v11, v12

    instance-of v12, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v12, :cond_67

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v13, v13, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    if-eqz v13, :cond_67

    iget v6, v13, Landroid/graphics/PointF;->y:F

    :cond_67
    new-array v13, v3, [F

    aput v11, v13, v5

    aput v6, v13, v7

    const-string/jumbo v6, "translationY"

    invoke-static {v0, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/keyguardservice/KeyGuardDismissedUtils$2;

    invoke-direct {v11}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$2;-><init>()V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v12, :cond_8b

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v12

    goto :goto_8c

    :cond_8b
    move v12, v11

    :goto_8c
    const v13, 0x3f4ccccd  # 0.8f

    mul-float/2addr v13, v12

    mul-float/2addr v12, v11

    new-array v14, v3, [F

    aput v13, v14, v5

    aput v12, v14, v7

    const-string/jumbo v15, "scaleX"

    invoke-static {v0, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v15, v3, [F

    aput v13, v15, v5

    aput v12, v15, v7

    const-string/jumbo v12, "scaleY"

    invoke-static {v0, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v4, v10, v5

    aput-object v8, v10, v7

    aput-object v6, v10, v3

    const/4 v3, 0x3

    aput-object v14, v10, v3

    const/4 v3, 0x4

    aput-object v0, v10, v3

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit16 v1, v0, 0x104

    div-int/lit8 v1, v1, 0xf

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addDragLayerAnim(Ljava/util/List;Lcom/android/launcher3/dragndrop/DragLayer;Z)V
    .registers 8
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/android/launcher3/dragndrop/DragLayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher3/dragndrop/DragLayer;",
            "Z)V"
        }
    .end annotation

    const-wide/16 v0, 0xc8

    if-eqz p2, :cond_1e

    const/16 p2, 0xb

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2, v2, v3, v4}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->create(Landroid/view/View;IFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;

    invoke-direct {v0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_1e
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3e

    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$4;

    invoke-direct {v0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$4;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3d
    return-void

    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static addHotSeatAnim(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/CellLayout;Landroid/view/View;Z)V
    .registers 26
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/CellLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher3/CellLayout;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p2 .. p3}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->getDismissHotSeatTranslationY(Lcom/android/launcher3/CellLayout;Landroid/view/View;)F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_16
    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    instance-of v7, v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v7, :cond_28

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_28
    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x352

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-eqz p4, :cond_69

    const-wide v13, 0x4065400000000000L  # 170.0

    const-wide v15, 0x3fec7ae140000000L  # 0.8899999856948853

    const-wide/16 v17, 0x0

    const/high16 v19, 0x3f800000  # 1.0f

    invoke-static/range {v13 .. v19}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->createOSpringInterpolator(DDDF)Landroid/animation/TimeInterpolator;

    move-result-object v6

    invoke-static {v2, v12, v4, v5, v6}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->create(Landroid/view/View;IFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v13

    new-instance v14, Lcom/android/keyguardservice/KeyGuardDismissedUtils$5;

    invoke-direct {v14, v0, v2, v3}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$5;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_a5

    invoke-static {v3, v12, v4, v5, v6}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->create(Landroid/view/View;IFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_69
    new-instance v7, Lcom/android/launcher3/anim/OSpringInterpolator;

    const-wide v14, 0x4065400000000000L  # 170.0

    const-wide v16, 0x3fec7ae140000000L  # 0.8899999856948853

    const-wide/16 v18, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    move-object v13, v7

    invoke-direct/range {v13 .. v20}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    const/4 v13, 0x2

    new-array v13, v13, [F

    aput v4, v13, v6

    aput v5, v13, v12

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/android/keyguardservice/c;

    invoke-direct {v5, v2, v3}, Lcom/android/keyguardservice/c;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;

    invoke-direct {v5, v0, v2, v3}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    :goto_a5
    return-void
.end method

.method private static addLayerViewRenderAnim(Ljava/util/List;Landroid/view/View;Landroid/animation/TimeInterpolator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1, p2}, Lcom/oplus/view/OplusRenderNodeAnimator;->createInterpolatorAnimator(IFLandroid/animation/TimeInterpolator;)Lcom/oplus/view/OplusRenderNodeAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/view/OplusRenderNodeAnimator;->setTarget(Landroid/view/View;)V

    const/high16 v2, 0x40c00000  # 6.0f

    invoke-virtual {v0, v2}, Lcom/oplus/view/OplusRenderNodeAnimator;->setStartValue(F)V

    const/4 v3, 0x4

    invoke-static {v3, v1, p2}, Lcom/oplus/view/OplusRenderNodeAnimator;->createInterpolatorAnimator(IFLandroid/animation/TimeInterpolator;)Lcom/oplus/view/OplusRenderNodeAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/view/OplusRenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Lcom/oplus/view/OplusRenderNodeAnimator;->setStartValue(F)V

    invoke-virtual {v0}, Lcom/oplus/view/OplusRenderNodeAnimator;->getRenderNodeAnimator()Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/oplus/view/OplusRenderNodeAnimator;->getRenderNodeAnimator()Landroid/animation/Animator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addUnLockAnim(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static/range {p0 .. p4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addUnLockAnimV1(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V

    return-void

    :cond_14
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static/range {p0 .. p4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addUnLockAnimV1(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V

    return-void

    :cond_20
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    invoke-static {}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->isEnabledByRusConfig()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_32

    invoke-static {}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_32

    move v9, v4

    goto :goto_33

    :cond_32
    move v9, v8

    :goto_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addUnLockAnim useRenderNodeAnim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyGuardDismissedUtils"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    if-eqz v3, :cond_59

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    if-eqz v5, :cond_59

    invoke-static {v14, v5, v9}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addDragLayerAnim(Ljava/util/List;Lcom/android/launcher3/dragndrop/DragLayer;Z)V

    :cond_59
    if-eqz v1, :cond_60

    if-eqz v2, :cond_60

    invoke-static {v3, v14, v1, v2, v9}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addHotSeatAnim(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/CellLayout;Landroid/view/View;Z)V

    :cond_60
    if-eqz v3, :cond_67

    invoke-static/range {p3 .. p3}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v2

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    :goto_94
    if-ge v1, v3, :cond_182

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_16e

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v2, :cond_b3

    iget-object v4, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v17, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_ef

    goto :goto_b5

    :cond_b3
    move/from16 v17, v3

    :goto_b5
    instance-of v3, v10, Lcom/android/launcher3/BubbleTextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_c1

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_ef

    :cond_c1
    instance-of v3, v10, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_d6

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v3}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v18

    if-eqz v18, :cond_ef

    invoke-interface {v3}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_ef

    :cond_d6
    instance-of v3, v10, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_ef

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    instance-of v3, v10, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v3, :cond_ef

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_ef
    :goto_ef
    if-eqz v8, :cond_170

    instance-of v3, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_170

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    const/high16 v3, 0x40c00000  # 6.0f

    invoke-virtual {v10, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v5, v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    div-int/2addr v3, v4

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float v22, v3, v4

    const/high16 v23, 0x40000000  # 2.0f

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    int-to-float v4, v3

    move/from16 v18, v5

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v19, v14

    int-to-float v14, v5

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    move/from16 v24, v4

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v5

    invoke-static/range {v22 .. v27}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->calculateShortestDistance(FFFFFF)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_14c

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_174

    :cond_14c
    const/high16 v4, 0x40000000  # 2.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_156

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_156
    const/high16 v5, 0x40400000  # 3.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_160

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_160
    const/high16 v5, 0x40800000  # 4.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_16a

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_16a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_16e
    move/from16 v17, v3

    :cond_170
    move/from16 v18, v5

    move-object/from16 v19, v14

    :goto_174
    const/high16 v4, 0x40000000  # 2.0f

    :goto_176
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v14, v19

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_94

    :cond_182
    move-object/from16 v19, v14

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_1a4

    iget-object v1, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a2

    goto :goto_1a5

    :cond_1a2
    const/4 v8, 0x0

    goto :goto_1a6

    :cond_1a4
    const/4 v2, 0x1

    :goto_1a5
    move v8, v2

    :goto_1a6
    new-instance v5, Lcom/android/launcher3/anim/OSpringInterpolator;

    const-wide v23, 0x4062c00000000000L  # 150.0

    const-wide/high16 v25, 0x3ff0000000000000L  # 1.0

    const-wide/16 v27, 0x0

    const/high16 v29, 0x3f800000  # 1.0f

    move-object/from16 v22, v5

    invoke-direct/range {v22 .. v29}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    const-wide/16 v1, 0x15e

    const-wide/16 v3, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v22, v6

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildBubbleTextViewAnimation(Landroid/view/ViewGroup;JJLcom/android/launcher3/anim/OSpringInterpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v9, :cond_1fb

    const-wide/16 v0, 0x352

    const-wide/16 v2, 0x0

    const-wide/high16 v16, 0x405e000000000000L  # 120.0

    move-object/from16 v10, v19

    move-object v4, v11

    move-object v11, v15

    move-object v5, v12

    move-object v6, v13

    move-wide v12, v0

    move-object/from16 v0, v19

    move-wide v14, v2

    invoke-static/range {v10 .. v17}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V

    const-wide/16 v12, 0x352

    const-wide/16 v14, 0x21

    move-object v10, v0

    move-object v11, v5

    invoke-static/range {v10 .. v17}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V

    const-wide/16 v14, 0x32

    move-object v11, v6

    invoke-static/range {v10 .. v17}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V

    const-wide/16 v14, 0x3a

    move-object v11, v4

    invoke-static/range {v10 .. v17}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V

    const-wide/16 v14, 0x42

    move-object/from16 v11, v22

    invoke-static/range {v10 .. v17}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V

    goto/16 :goto_27e

    :cond_1fb
    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v0, v19

    new-instance v20, Lcom/android/launcher3/anim/OSpringInterpolator;

    const-wide/high16 v24, 0x405e000000000000L  # 120.0

    const-wide v26, 0x3fec7ae140000000L  # 0.8899999856948853

    const-wide v28, 0x40c7700000000000L  # 12000.0

    const/high16 v30, 0x3f800000  # 1.0f

    move-object/from16 v23, v20

    invoke-direct/range {v23 .. v30}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    new-instance v21, Lcom/android/launcher3/anim/OSpringInterpolator;

    const-wide/high16 v32, 0x405e000000000000L  # 120.0

    const-wide v34, 0x3fec7ae140000000L  # 0.8899999856948853

    const-wide v36, 0x40c7700000000000L  # 12000.0

    const/high16 v38, 0x3f800000  # 1.0f

    move-object/from16 v31, v21

    invoke-direct/range {v31 .. v38}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    new-instance v1, Lcom/android/launcher3/anim/OSpringInterpolator;

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v30}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    new-instance v2, Lcom/android/launcher3/anim/OSpringInterpolator;

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v38}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    new-instance v3, Lcom/android/launcher3/anim/OSpringInterpolator;

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v30}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    const-wide/16 v16, 0x352

    const-wide/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v17, 0x352

    const-wide/16 v19, 0x21

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v21}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v19, 0x32

    move-object/from16 v16, v6

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v21}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v19, 0x3a

    move-object/from16 v16, v4

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v19, 0x42

    move-object/from16 v16, v22

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_27e
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sIsUnlockAnimActiveEnd:Z

    return-void
.end method

.method public static addUnLockAnimV1(Landroid/view/ViewGroup;Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher/Launcher;Landroid/animation/AnimatorSet;)V
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_55

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/2addr v5, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    fill-array-data v5, :array_134

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x247

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    fill-array-data v5, :array_13c

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->DISSMISS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_55
    const v3, 0x3f0a3d71  # 0.54f

    const/high16 v4, 0x42c60000  # 99.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000  # 100.0f

    if-eqz p1, :cond_83

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    new-instance v7, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-direct {v7, p3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-virtual {v7, p1, v8}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_83
    if-eqz p1, :cond_ad

    instance-of p1, p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_ad

    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-direct {p1, p3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p1

    sget-object v6, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-virtual {p1, p2, v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_ad
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v6, v0

    move v1, v5

    :goto_b5
    if-ge v0, p1, :cond_133

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_130

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_130

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v9, v8

    const/4 v8, 0x1

    sub-int/2addr v9, v8

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v10

    sub-int/2addr v10, v8

    sub-int/2addr v10, v9

    if-nez v10, :cond_da

    const/high16 v1, 0x42780000  # 62.0f

    move v6, p2

    goto :goto_ff

    :cond_da
    if-ne v10, v8, :cond_e1

    const/high16 v1, 0x42500000  # 52.0f

    const/16 v6, 0x14

    goto :goto_ff

    :cond_e1
    if-ne v10, v2, :cond_e8

    const/high16 v1, 0x42280000  # 42.0f

    const/16 v6, 0x28

    goto :goto_ff

    :cond_e8
    const/4 v8, 0x3

    if-ne v10, v8, :cond_f0

    const/high16 v1, 0x42000000  # 32.0f

    const/16 v6, 0x3c

    goto :goto_ff

    :cond_f0
    const/4 v8, 0x4

    if-ne v10, v8, :cond_f8

    const/high16 v1, 0x41b00000  # 22.0f

    const/16 v6, 0x50

    goto :goto_ff

    :cond_f8
    const/4 v8, 0x5

    if-ne v10, v8, :cond_ff

    const/high16 v1, 0x41700000  # 15.0f

    const/16 v6, 0x64

    :cond_ff
    :goto_ff
    instance-of v8, v7, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v8, :cond_10b

    new-instance v8, Lcom/android/keyguardservice/KeyGuardDismissedUtils$10;

    invoke-direct {v8, v7}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$10;-><init>(Landroid/view/View;)V

    invoke-virtual {p4, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_10b
    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v8, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-direct {v8, p3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_130
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_133
    return-void

    :array_134
    .array-data 4
        0x3f733333  # 0.95f
        0x3f800000  # 1.0f
    .end array-data

    :array_13c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic b(ZLandroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->lambda$buildBubbleTextViewAnimation$2(ZLandroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static buildBubbleTextViewAnimation(Landroid/view/ViewGroup;JJLcom/android/launcher3/anim/OSpringInterpolator;Z)Landroid/animation/ValueAnimator;
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Lcom/android/keyguardservice/d;

    invoke-direct {p1, p6, p0}, Lcom/android/keyguardservice/d;-><init>(ZLandroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;

    invoke-direct {p1, p6, p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;-><init>(ZLandroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static buildForLayer(Ljava/util/ArrayList;JJLcom/android/launcher3/anim/OSpringInterpolator;)Landroid/animation/ValueAnimator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;JJ",
            "Lcom/android/launcher3/anim/OSpringInterpolator;",
            ")",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Lcom/android/keyguardservice/b;

    invoke-direct {p1, p0}, Lcom/android/keyguardservice/b;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/keyguardservice/KeyGuardDismissedUtils$7;

    invoke-direct {p1, p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$7;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x40c00000  # 6.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V
    .registers 16
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;JJD)V"
        }
    .end annotation

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_58

    :cond_9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-wide v3, 0x3fec7ae140000000L  # 0.8899999856948853

    const-wide v5, 0x40c7700000000000L  # 12000.0

    const/high16 v7, 0x3f800000  # 1.0f

    move-wide v1, p6

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->createOSpringInterpolator(DDDF)Landroid/animation/TimeInterpolator;

    move-result-object p6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_23
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addLayerViewRenderAnim(Ljava/util/List;Landroid/view/View;Landroid/animation/TimeInterpolator;)V

    goto :goto_23

    :cond_33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_58

    new-instance p6, Lcom/android/keyguardservice/e;

    invoke-direct {p6, p2, p3, p4, p5}, Lcom/android/keyguardservice/e;-><init>(JJ)V

    invoke-interface {v0, p6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    new-instance p3, Lcom/android/keyguardservice/KeyGuardDismissedUtils$9;

    invoke-direct {p3, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils$9;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public static synthetic c(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->lambda$buildForLayer$1(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static calculateShortestDistance(FFFFFF)F
    .registers 10

    cmpl-float v0, p0, p2

    if-ltz v0, :cond_12

    cmpg-float v1, p0, p3

    if-gtz v1, :cond_12

    cmpl-float v1, p1, p4

    if-ltz v1, :cond_12

    cmpg-float v1, p1, p5

    if-gtz v1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    sub-float p2, p0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float v1, p0, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v2, p1, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-ltz v0, :cond_35

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_35

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_35
    cmpl-float p0, p1, p4

    if-ltz p0, :cond_42

    cmpg-float p0, p1, p5

    if-gtz p0, :cond_42

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_42
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p1, p0

    return p1
.end method

.method public static clearCardLayerTypes()V
    .registers 1

    sget-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sCardLayerTypes:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_7
    return-void
.end method

.method private static computeTranslation(FFI)F
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    add-float/2addr p0, v0

    sub-float/2addr p1, p0

    int-to-float p0, p2

    const/high16 p2, 0x41000000  # 8.0f

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public static synthetic d(JJLandroid/animation/Animator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->lambda$buildRenderNodeAnimForLayer$3(JJLandroid/animation/Animator;)V

    return-void
.end method

.method public static getDisableClick()Z
    .registers 1

    sget-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    return v0
.end method

.method private static getDismissHotSeatTranslationY(Lcom/android/launcher3/CellLayout;Landroid/view/View;)F
    .registers 7
    .param p0  # Lcom/android/launcher3/CellLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    sput v2, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    const-string v3, "KeyGuardDismissedUtils"

    if-eqz v1, :cond_36

    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_36

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    sput p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    sput p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string/jumbo p0, "pointViewParams.bottomMargin: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p0, p1, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_6f

    :cond_36
    if-eqz v0, :cond_6f

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_6f

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v1, v2

    sput v1, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr v1, p0

    sput v1, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string p0, "hotSeatParams.bottomMargin: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hotSeatParams.topMargin: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0, p1, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6f
    :goto_6f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_81

    const-string/jumbo p0, "sDissmissHotseatTranslateY: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    invoke-static {p0, p1, v3}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_81
    sget p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDissmissHotseatTranslateY:F

    return p0
.end method

.method public static getHotseatAnimationDuration()I
    .registers 1

    const/16 v0, 0x352

    return v0
.end method

.method public static getHotseatDelay()I
    .registers 1

    const/16 v0, 0xc8

    return v0
.end method

.method public static invertCellX(III)I
    .registers 3

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    return p0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    sput-object p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    :cond_12
    sget-object p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private static synthetic lambda$addHotSeatAnim$0(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    instance-of p0, p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_18

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {v0, p1, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_18
    return-void
.end method

.method private static synthetic lambda$buildBubbleTextViewAnimation$2(ZLandroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .registers 6

    sget-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x3f4ccccd  # 0.8f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    sput-boolean v1, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sDisableClick:Z

    :cond_18
    if-nez p0, :cond_1b

    return-void

    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v1, p0, :cond_91

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_39

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_8e

    :cond_39
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_57

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_8e

    :cond_57
    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_8e

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_7f

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8e

    :cond_6f
    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    goto :goto_8e

    :cond_7f
    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_91
    return-void
.end method

.method private static synthetic lambda$buildForLayer$1(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_2b
    return-void
.end method

.method private static synthetic lambda$buildRenderNodeAnimForLayer$3(JJLandroid/animation/Animator;)V
    .registers 5

    invoke-virtual {p4, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    return-void
.end method

.method private static onAnimationEnd(Ljava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method private static overshoot(FF)F
    .registers 4

    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v1, v0

    return v1
.end method

.method private static recursionAllChild(Landroid/view/ViewGroup;Z)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_40

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_21

    sget-object v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sCardLayerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_34

    :cond_21
    sget-object v4, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sCardLayerTypes:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_34
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3d

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->recursionAllChild(Landroid/view/ViewGroup;Z)V

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_40
    return-void
.end method

.method public static setHardwareLayer(Landroid/view/ViewGroup;Z)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_10

    const/4 v3, 0x2

    goto :goto_11

    :cond_10
    move v3, v0

    :goto_11
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_1e

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->recursionAllChild(Landroid/view/ViewGroup;Z)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return-void
.end method

.method public static setIsUnlockAnimActiveEnd(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->sIsUnlockAnimActiveEnd:Z

    return-void
.end method

.method public static setMultiNodeEnable(Landroid/view/ViewGroup;Z)V
    .registers 6

    if-eqz p0, :cond_35

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_35

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_32

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, p1, v0, v0, v0}, Lcom/android/launcher3/BubbleTextView;->setMultiNodeEnable(ZZZZ)V

    if-eqz p1, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_32

    :cond_2d
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_35
    :goto_35
    return-void
.end method

.method private static updateHotSeatAndIndicatorAlpha(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 4
    .param p1  # Lcom/android/launcher3/CellLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_26

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    instance-of p1, p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_26

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_26
    return-void
.end method

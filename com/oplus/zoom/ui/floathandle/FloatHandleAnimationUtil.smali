.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_END:F = 1.0f

.field private static final ALPHA_ICON_DISAPPEAR_END:F = 0.0f

.field private static final ALPHA_ICON_DISAPPEAR_START:F = 1.0f

.field private static final ALPHA_ICON_ENTER_END:F = 1.0f

.field private static final ALPHA_ICON_ENTER_START:F = 0.0f

.field public static final ALPHA_START:F = 0.0f

.field public static final FRAME_END:I = 0x3b

.field public static final FRAME_FROM_ARROW_TO_LINE_END:I = 0x1b

.field public static final FRAME_FROM_ARROW_TO_LINE_START:I = 0x0

.field public static final FRAME_FROM_LINE_TO_ARROW_END:I = 0x3b

.field public static final FRAME_FROM_LINE_TO_ARROW_START:I = 0x1b

.field public static final FRAME_START:I = 0x0

.field public static final OFFSET_TIME_ENTER:I = 0xa7

.field public static final SCALE_END:F = 1.0f

.field private static final SCALE_ICON_DISAPPEAR_END:F = 0.5f

.field private static final SCALE_ICON_DISAPPEAR_START:F = 1.0f

.field private static final SCALE_ICON_ENTER_END:F = 1.0f

.field private static final SCALE_ICON_ENTER_START:F = 0.5f

.field public static final SCALE_START:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "FloatHandle"

.field private static final TIME_DURATION_ICON_DISAPPEAR:I = 0xfa

.field private static final TIME_DURATION_ICON_ENTER:I = 0xfa

.field public static final TIME_FORM_ARROW_TO_LINE:I = 0x1c2

.field public static final TIME_FORM_LINE_TO_ARROW:I = 0x226

.field public static final TIME_PAN_DEFAULT:I = 0x64

.field public static final TIME_PAN_FULL_TO_HALF_HIDDEN:I = 0x1c2

.field public static final TIME_PAN_FULL_TO_NONE:I = 0x1c2

.field public static final TIME_PAN_HALF_HIDDEN_TO_FULL:I = 0x226

.field public static final TIME_PAN_HALF_HIDDEN_TO_NONE:I = 0x78

.field public static final TIME_PAN_NONE_TO_FULL:I = 0x226

.field public static final TIME_PAN_NONE_TO_HIDE_HIDDEN:I = 0x78


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeAnimationTimeToPan(II)I
    .registers 8

    const/16 v0, 0x78

    const/16 v1, 0x1c2

    const/16 v2, 0x226

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1d

    if-eq p0, v4, :cond_16

    if-eq p0, v3, :cond_10

    goto :goto_24

    :cond_10
    if-ne p1, v4, :cond_13

    goto :goto_1f

    :cond_13
    if-ne p1, v5, :cond_24

    goto :goto_26

    :cond_16
    if-ne p1, v3, :cond_1a

    :goto_18
    move v0, v1

    goto :goto_26

    :cond_1a
    if-ne p1, v5, :cond_24

    goto :goto_18

    :cond_1d
    if-ne p1, v4, :cond_21

    :goto_1f
    move v0, v2

    goto :goto_26

    :cond_21
    if-ne p1, v3, :cond_24

    goto :goto_26

    :cond_24
    :goto_24
    const/16 v0, 0x64

    :goto_26
    return v0
.end method

.method public static computeMaxDistanceToScreen(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIZ)I
    .registers 4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_26

    const/4 p1, 0x2

    if-eq p2, p1, :cond_17

    const/4 p1, 0x4

    if-eq p2, p1, :cond_b

    const/4 p0, 0x0

    goto :goto_2a

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInHalfHidden()I

    move-result p1

    if-eqz p3, :cond_24

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2a

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p1

    if-eqz p3, :cond_24

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p0

    sub-int p0, p1, p0

    goto :goto_2a

    :cond_24
    move p0, p1

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p0

    :goto_2a
    return p0
.end method

.method public static getNewIconEnterAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_46

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_4e

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_56

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_46
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_4e
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static getOriginIconDisappearAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_46

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_4e

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_56

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_46
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data

    :array_56
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data
.end method

.method public static getPanAnimation(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIIIZ)Landroid/animation/ValueAnimator;
    .registers 10

    invoke-static {p3, p4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->computeAnimationTimeToPan(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1a

    invoke-static {p0, p3, p4, p5}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->computeMaxDistanceToScreen(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIZ)I

    move-result p0

    add-int/2addr p0, p1

    new-array p2, v2, [I

    aput p1, p2, v1

    sub-int/2addr p1, p0

    aput p1, p2, v3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_34

    :cond_1a
    invoke-static {p0, p3, p4, p5}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->computeMaxDistanceToScreen(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p3, p0

    sub-int/2addr p2, p3

    new-array p0, v2, [I

    aput p1, p0, v1

    add-int/2addr p1, p2

    aput p1, p0, v3

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    :goto_34
    int-to-long p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const p1, 0x3e99999a  # 0.3f

    const/4 p2, 0x0

    const p3, 0x3dcccccd  # 0.1f

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/launcher/download/m;->a(FFFFLandroid/animation/ValueAnimator;)V

    return-object p0
.end method

.method public static getReboundAnimation(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIIIZ)Landroid/animation/ValueAnimator;
    .registers 9

    if-eqz p5, :cond_5

    const/16 p1, 0x226

    goto :goto_7

    :cond_5
    const/16 p1, 0x1c2

    :goto_7
    if-eqz p5, :cond_e

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p5

    goto :goto_13

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p5

    neg-int p5, p5

    :goto_13
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2b

    invoke-static {p0, p3, p4, v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->computeMaxDistanceToScreen(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIZ)I

    move-result p0

    neg-int p0, p0

    add-int/2addr p5, p0

    new-array p2, v1, [F

    int-to-float p0, p0

    aput p0, p2, v0

    int-to-float p0, p5

    aput p0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_50

    :cond_2b
    invoke-static {p0, p3, p4, v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->computeMaxDistanceToScreen(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p0

    sub-int/2addr p0, p2

    sub-int/2addr p4, p0

    sub-int/2addr p4, p5

    new-array p0, v1, [F

    int-to-float p2, p3

    aput p2, p0, v0

    int-to-float p2, p4

    aput p2, p0, v2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    :goto_50
    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const p1, 0x3e99999a  # 0.3f

    const/4 p2, 0x0

    const p3, 0x3dcccccd  # 0.1f

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/launcher/download/m;->a(FFFFLandroid/animation/ValueAnimator;)V

    return-object p0
.end method

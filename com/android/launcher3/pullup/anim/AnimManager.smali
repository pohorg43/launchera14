.class public Lcom/android/launcher3/pullup/anim/AnimManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AUTO_ALPHA_GREY_VIEW_DURATION:J = 0x12cL

.field private static final AUTO_ALPHA_VIEW_DURATION:J = 0x96L

.field private static final AUTO_ANIM_DURATION:J = 0x2cdL

.field private static final AUTO_ANIM_DURATION_2:J = 0x320L

.field private static final AUTO_SCALE_ANIM_BUFFER:J = 0x3cL

.field private static final AUTO_SCALE_ANIM_DURATION:J = 0x107L

.field private static final AUTO_WIDTH_ANIM_DURATION:J = 0x19eL

.field public static final COMMON_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final GOOGLE_GREY_TRANS_Y:Landroid/view/animation/PathInterpolator;

.field private static final GOOGLE_GREY_WIDTH_INTER:Landroid/view/animation/PathInterpolator;

.field public static final IS_EXP_USE_DOMESTIC_TOUCH:Z = true

.field private static final LOGE_FADE_ALPHA_OUT:Landroid/view/animation/PathInterpolator;

.field private static final OVAL_WHITE_SCALE_XY:Landroid/view/animation/PathInterpolator;

.field private static final OVAL_WHITE_TRANS_Y:Landroid/view/animation/PathInterpolator;

.field private static final SCRIM_ALPHA:Landroid/view/animation/PathInterpolator;

.field public static final WIDTH_PROPERTY:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_SCALE_RATE:F = 0.92f


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/launcher3/pullup/anim/AnimManager$1;

    const-string/jumbo v1, "width"

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/AnimManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->WIDTH_PROPERTY:Landroid/util/IntProperty;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->COMMON_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->GOOGLE_GREY_WIDTH_INTER:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->OVAL_WHITE_TRANS_Y:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3df5c28f  # 0.12f

    invoke-direct {v0, v6, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->GOOGLE_GREY_TRANS_Y:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->OVAL_WHITE_SCALE_XY:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000  # 0.25f

    invoke-direct {v0, v1, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->SCRIM_ALPHA:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->LOGE_FADE_ALPHA_OUT:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaScrim(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .registers 6

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x2cd

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/pullup/anim/AnimManager;->SCRIM_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static alphaView(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 5

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->LOGE_FADE_ALPHA_OUT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static googleGeryTransY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p1, p1

    sub-float p1, v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x2cd

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/pullup/anim/AnimManager;->GOOGLE_GREY_TRANS_Y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static googleGreyAlpha(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_18

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->COMMON_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    nop

    :array_18
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static googleGreyWidth(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    sget-object p1, Lcom/android/launcher3/pullup/anim/AnimManager;->WIDTH_PROPERTY:Landroid/util/IntProperty;

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x19e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/pullup/anim/AnimManager;->GOOGLE_GREY_WIDTH_INTER:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static ovalWhiteTransY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p1, p1

    sub-float p1, v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/pullup/anim/AnimManager;->OVAL_WHITE_TRANS_Y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static scaleOvalViewX(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 6

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x40e00000  # 7.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->OVAL_WHITE_SCALE_XY:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_1f

    const-wide/16 v0, 0x3c

    goto :goto_21

    :cond_1f
    const-wide/16 v0, 0x0

    :goto_21
    const-wide/16 v2, 0x107

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static scaleOvalViewY(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 6

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x40e00000  # 7.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/pullup/anim/AnimManager;->OVAL_WHITE_SCALE_XY:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_1f

    const-wide/16 v0, 0x3c

    goto :goto_21

    :cond_1f
    const-wide/16 v0, 0x0

    :goto_21
    const-wide/16 v2, 0x107

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.class public Lcom/android/wm/shell/animation/Interpolators;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final EMPHASIZED:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f4ccccd  # 0.8f

    invoke-direct {v0, v2, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {}, Lcom/android/wm/shell/animation/Interpolators;->createEmphasizedInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const v5, 0x3e19999a  # 0.15f

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d4ccccd  # 0.05f

    const v5, 0x3f333333  # 0.7f

    const v6, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v4, v5, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f000000  # 0.5f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v3, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f  # 0.23f

    const v2, 0x3f5eb852  # 0.87f

    const v3, 0x3f051eb8  # 0.52f

    const v4, -0x421eb852  # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/animation/Interpolators;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmphasizedInterpolator()Landroid/view/animation/PathInterpolator;
    .registers 8

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3d4ccccd  # 0.05f

    const/4 v2, 0x0

    const v3, 0x3e088872

    const v4, 0x3d75c28f  # 0.06f

    const v5, 0x3e2aaa7e

    const v6, 0x3ecccccd  # 0.4f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v1, 0x3e55553f  # 0.208333f

    const v2, 0x3f51eb85  # 0.82f

    const/high16 v3, 0x3e800000  # 0.25f

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.class public Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnDismissAnimationEndListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$OnShowAnimationEndListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;
    }
.end annotation


# static fields
.field public static final C0:Landroid/view/animation/Interpolator;

.field public static final D0:Landroid/view/animation/Interpolator;

.field public static final E0:Landroid/view/animation/Interpolator;

.field public static final F0:Landroid/view/animation/Interpolator;

.field public static final G0:Landroid/view/animation/Interpolator;

.field public static final H0:Landroid/view/animation/Interpolator;


# instance fields
.field public A:I

.field public A0:Landroid/content/ComponentCallbacks;

.field public B:Z

.field public B0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public C:Z

.field public D:Landroid/view/inputmethod/InputMethodManager;

.field public E:Landroid/animation/AnimatorSet;

.field public F:F

.field public G:F

.field public H:Z

.field public N:Landroid/view/View$OnApplyWindowInsetsListener;

.field public O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

.field public P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

.field public Q:Landroid/view/WindowInsets;

.field public R:Z

.field public S:I

.field public T:Z

.field public U:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public V:Z

.field public W:Z

.field public X:F

.field public Y:Z

.field public Z:I

.field public a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

.field public a0:I

.field public b:Landroid/view/View;

.field public b0:Z

.field public c:Landroid/view/View;

.field public c0:Landroid/content/res/Configuration;

.field public d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

.field public d0:Z

.field public e:Landroid/view/View;

.field public e0:Z

.field public f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field public f0:F

.field public g:Landroid/view/ViewGroup;

.field public g0:Lcom/coui/appcompat/panel/COUIPanelBarView;

.field public h:Landroid/graphics/drawable/Drawable;

.field public h0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

.field public i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public i0:Z

.field public j:Landroid/graphics/drawable/Drawable;

.field public j0:Z

.field public k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k0:Z

.field public l:Z

.field public l0:F

.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public m0:F

.field public n:Z

.field public n0:Landroid/view/View;

.field public o:Landroid/view/View$OnTouchListener;

.field public o0:I

.field public p:Z

.field public p0:I

.field public q:Z

.field public q0:F

.field public r:Z

.field public r0:F

.field public s:I

.field public s0:Z

.field public t:I

.field public t0:Landroidx/dynamicanimation/animation/SpringForce;

.field public u:I

.field public u0:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public v:I

.field public v0:Z

.field public w:Landroid/view/View;

.field public w0:I

.field public x:La2/d;

.field public x0:I

.field public y:La2/d;

.field public y0:I

.field public z:Landroid/view/View;

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G0:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    move v0, p2

    goto :goto_19

    :cond_9
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/support/panel/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_19
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:Z

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A:I

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:F

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Landroid/view/View$OnApplyWindowInsetsListener;

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    const v3, 0x7fffffff

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Y:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    const v3, 0x43a68000  # 333.0f

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:F

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:Z

    const/4 v3, 0x1

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:F

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Z

    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A0:Landroid/content/ComponentCallbacks;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    sget v4, Lcom/support/panel/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v2, Lcom/support/panel/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p0, p2, v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v2, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p0, p2, v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    sget v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_couiHandleViewHasPressAnim:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d7

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_d7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/panel/R$dimen;->coui_panel_pull_up_max_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/panel/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:F

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_128

    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Ljava/lang/ref/WeakReference;

    :cond_128
    return-void
.end method

.method public static a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_11

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIBottomSheetDialog"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public static b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    if-lez p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_21

    :cond_13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :goto_21
    return-void
.end method

.method public static c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-object v0
.end method

.method public static d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V
    .registers 12

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez v0, :cond_12

    goto/16 :goto_19a

    :cond_12
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l()I

    move-result v2

    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C:Z

    if-eqz v3, :cond_1d

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A:I

    goto :goto_1e

    :cond_1d
    add-int/2addr v2, p1

    :goto_1e
    const/high16 v3, 0x43040000  # 132.0f

    add-int/lit8 v4, v2, 0x0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v0, v0

    const/high16 v5, 0x43960000  # 300.0f

    invoke-static {v3, v0, v5}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v3

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C0:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_44

    const/high16 v3, 0x43160000  # 150.0f

    mul-float/2addr v4, v3

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v3, v0, v5

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E0:Landroid/view/animation/Interpolator;

    :cond_44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_68
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v0, v5, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_19a

    :cond_85
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    const/high16 v7, 0x43270000  # 167.0f

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v7, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C:Z

    if-eqz v0, :cond_a4

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A:I

    int-to-float p1, p1

    goto :goto_aa

    :cond_a4
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    :goto_aa
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    :cond_b9
    iput-boolean v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_19a

    :cond_cc
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w()Z

    move-result p1

    const v0, 0x3f4ccccd  # 0.8f

    const/4 v8, 0x2

    if-eqz p1, :cond_131

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_f1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_f1
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r()Z

    move-result p1

    if-eqz p1, :cond_10c

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v0, v5, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_126

    :cond_10c
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v0, v8, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v7, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v5, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_126
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_19a

    :cond_131
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()Z

    move-result p1

    if-eqz p1, :cond_177

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_152

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_152

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_152
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v0, v8, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v7, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v5, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_19a

    :cond_177
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v0, v8, [Landroid/animation/Animator;

    check-cast v6, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v2, v1, v3, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_19a
    return-void
.end method

.method public static e(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    return-void
.end method


# virtual methods
.method public final A()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    :cond_14
    return-void
.end method

.method public final B(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    return-void
.end method

.method public final C()V
    .registers 6

    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    iput v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreScreenWidth : PreferWidth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,OriginWidth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p0, :cond_52

    iput v2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    const-string p0, "COUIPanelPercentFrameLayout"

    const-string v1, "delPreferWidth"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4c} :catch_4d

    goto :goto_52

    :catch_4d
    const-string p0, "restoreScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public D(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:Z

    if-eq v0, p1, :cond_26

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:Z

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:Z

    if-eqz p1, :cond_18

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_26
    return-void
.end method

.method public E(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewPressAnim(Z)V

    :cond_19
    const/4 v0, 0x0

    if-eqz p2, :cond_a0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez p1, :cond_22

    goto/16 :goto_ad

    :cond_22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    const/4 v1, 0x0

    sget v2, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    sget p2, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_82

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_82
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ad

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n:Z

    if-eqz p2, :cond_93

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    :cond_93
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_ad

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_ad

    :cond_a0
    if-eqz p1, :cond_ad

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t()V

    return-void
.end method

.method public final F()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_navigationbar_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_39
    return-void
.end method

.method public G(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-nez v0, :cond_c

    sget v0, Lcom/support/panel/R$id;->panel_outside:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    :cond_c
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Landroid/view/View$OnTouchListener;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_15
    return-void
.end method

.method public final H()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Z:I

    if-eqz v1, :cond_e

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/WindowInsets;)V

    :cond_1a
    return-void
.end method

.method public I(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    const-string p1, "setPreferWidth =："

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    const-string v0, "COUIBottomSheetDialog"

    invoke-static {p1, p0, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final J()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_12
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Z

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1f
    return-void
.end method

.method public final K()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_15

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    const/4 v2, 0x0

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v0, :cond_44

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_44
    return-void
.end method

.method public L(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    goto :goto_4e

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceChangeScreenWidth : OriginWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,PreferWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v1, :cond_4e

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setPreferWidth(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    const-string v1, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c0:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->d()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_7d

    :cond_7b
    const/high16 v1, 0x40000000  # 2.0f

    :goto_7d
    iput v1, v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->m:F

    :cond_7f
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    if-eqz v0, :cond_97

    if-eqz p1, :cond_97

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_97
    return-void
.end method

.method public dismiss()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:La2/d;

    if-eqz v0, :cond_14

    iget-object v1, v0, La2/d;->c:La2/d$b;

    iget-wide v1, v1, La2/d$b;->b:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_14

    invoke-virtual {v0}, La2/d;->c()La2/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:La2/d;

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_63

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_63

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b:Z

    if-eqz v2, :cond_63

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b:Z

    sget v3, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->c:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    iget-object v4, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->c:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2a
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->a:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v2

    const/4 v5, 0x0

    aput v5, v4, v1

    const-string v5, "bgAlpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/core/view/h;

    invoke-direct {v2, v0, v3}, Landroidx/core/view/h;-><init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_63
    :goto_63
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public final g(I)Landroid/animation/ValueAnimator;
    .registers 8
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_30

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v4, v3, v5, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_30
    if-eq v2, p1, :cond_59

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :cond_59
    return-object v1
.end method

.method public final h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .registers 8

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    if-eqz p1, :cond_7

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    float-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public final i(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    float-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public j(Z)V
    .registers 14

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b3

    if-eqz p1, :cond_1b3

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    if-nez p1, :cond_1b3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x43480000  # 200.0f

    const/4 v5, 0x0

    if-ne p1, v0, :cond_69

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->T:Z

    if-eqz p1, :cond_2a

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->U:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g(I)Landroid/animation/ValueAnimator;

    move-result-object v3

    :cond_2a
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0xc8

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v3, :cond_53

    new-array v0, v2, [Landroid/animation/Animator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v4, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_64

    :cond_53
    new-array v0, v1, [Landroid/animation/Animator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v4, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v0, v5

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_64
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1c1

    :cond_69
    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_7b

    :cond_7a
    move v0, v5

    :goto_7b
    if-nez v0, :cond_7f

    goto/16 :goto_1c1

    :cond_7f
    iget-object v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v7

    add-int/2addr v7, v6

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:F

    float-to-int v6, v6

    iget-boolean v8, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C:Z

    if-eqz v8, :cond_a8

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a8

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A:I

    :cond_a8
    const/high16 v8, 0x43050000  # 133.0f

    sub-int v9, v6, v7

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v0, v0

    invoke-static {v8, v0, v4}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v8

    sget-object v10, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F0:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const/high16 v3, 0x42ea0000  # 117.0f

    mul-float/2addr v9, v3

    div-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v8, v0, v4

    sget-object v10, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G0:Landroid/view/animation/Interpolator;

    :cond_cb
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-eqz v3, :cond_101

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:F

    new-array v1, v1, [Landroid/animation/Animator;

    new-instance v4, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v3}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    const/high16 v4, 0x43370000  # 183.0f

    invoke-virtual {p0, v5, v4, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1c1

    :cond_101
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w()Z

    move-result v0

    const/high16 v3, 0x43270000  # 167.0f

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_11c
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r()Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_14b

    :cond_134
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p0, v5, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_14b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1c1

    :cond_156
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()Z

    move-result v0

    if-eqz v0, :cond_18f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_16d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_16d
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p0, v5, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1c1

    :cond_18f
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    check-cast v10, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v6, v7, v8, v10}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D0:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v8, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1c1

    :cond_1b3
    :try_start_1b3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b6} :catch_1b7

    goto :goto_1c1

    :catch_1b7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIBottomSheetDialog"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c1
    return-void
.end method

.method public k()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    return-object p0
.end method

.method public final l()I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final m(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v1, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    aget p0, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p0

    invoke-direct {v0, v2, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final n(Landroid/content/res/Configuration;)I
    .registers 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    if-nez p1, :cond_19

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public o(F)F
    .registers 3

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-nez p0, :cond_5

    return p1

    :cond_5
    const/4 p0, 0x0

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x40000000  # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 7

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 p2, -0x1

    if-eqz p1, :cond_21

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    if-eq p3, p2, :cond_21

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTop()I

    move-result p4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_21
    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogExpanded()V

    :cond_2a
    return-void
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_3a

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3a

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_26

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_26
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Z

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:F

    :cond_37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Z

    :cond_3a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onAttachedToWindow()V

    const-string v0, "COUIBottomSheetDialog"

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    goto :goto_55

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceChangeScreenWidth : OriginWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,PreferWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v1, :cond_55

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setPreferWidth(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string v1, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7a

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_7a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->f(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a7

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x()Z

    move-result v5

    if-nez v5, :cond_a7

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    move v4, v2

    :cond_a7
    or-int/lit8 v0, v4, 0x10

    invoke-virtual {v3, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b3

    goto :goto_d9

    :cond_b3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d4

    and-int/lit16 v0, v4, -0x2001

    and-int/lit8 v0, v0, -0x11

    goto :goto_d6

    :cond_d4
    or-int/lit16 v0, v4, 0x100

    :goto_d6
    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_d9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_e9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A0:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_110

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:Z

    if-eqz v0, :cond_103

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    :cond_103
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_110
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Z

    if-nez v0, :cond_115

    goto :goto_132

    :cond_115
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_120

    goto :goto_132

    :cond_120
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_132
    :goto_132
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c0:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_33

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:I

    :cond_33
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:F

    const/4 v1, 0x1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_43

    const/high16 p1, 0x43480000  # 200.0f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:F

    :cond_43
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4e

    const p1, 0x3f333333  # 0.7f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:F

    :cond_4e
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:F

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:F

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t0:Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t0:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_cc

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:F

    invoke-virtual {p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->applyPhysics(FF)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGlobalDrag(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setIsInTinyScreen(Z)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->B:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C:Z

    if-eqz v1, :cond_aa

    const/4 v1, 0x4

    goto :goto_ab

    :cond_aa
    const/4 v1, 0x3

    :goto_ab
    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_c8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_c8
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t()V

    return-void

    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use COUIBottomSheetBehavior, check value of bottom_sheet_behavior in strings.xml"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->c()Z

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_c
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Landroid/view/View$OnApplyWindowInsetsListener;

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A0:Landroid/content/ComponentCallbacks;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A0:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_35
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->A()V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C()V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    const-string v1, "state_focus_changes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    const-string v1, "state_focus_changes"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Z

    :cond_19
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final p(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p3  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1e
    return-object p1
.end method

.method public final q(Landroid/view/ViewGroup;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/EditText;

    const/4 v4, 0x1

    if-nez v3, :cond_26

    instance-of v3, v2, Lcom/coui/appcompat/edittext/COUIInputView;

    if-eqz v3, :cond_16

    goto :goto_26

    :cond_16
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_23

    return v4

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    :goto_26
    return v4

    :cond_27
    return v0
.end method

.method public final r()Z
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    if-nez v0, :cond_b

    goto/16 :goto_df

    :cond_b
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v7

    iget v9, v4, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x0

    const-string v11, "COUIBottomSheetDialog"

    if-gt v8, v9, :cond_9d

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    iget v2, v4, Landroid/graphics/Rect;->right:I

    if-lt v8, v2, :cond_9d

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-gt v2, v7, :cond_9d

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_77

    goto :goto_9d

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anchor view have no enoughSpace anchorContentViewLocationRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setHasAnchor(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return v1

    :cond_9d
    :goto_9d
    const-string v0, "anchor view haveEnoughSpace"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->setHasAnchor(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTop(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBottom(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/panel/R$dimen;->coui_bottom_sheet_dialog_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/panel/R$color;->coui_panel_follow_hand_spot_shadow_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/coui/appcompat/uiutil/UIUtil;->k(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    return v2

    :cond_df
    :goto_df
    return v1
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:Z

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1e
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    :cond_c
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 7

    if-eqz p1, :cond_10f

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n:Z

    const/4 v1, -0x1

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-eqz v2, :cond_21

    sget v2, Lcom/support/panel/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_23

    :cond_21
    sget v2, Lcom/support/panel/R$layout;->coui_panel_view_layout:I

    :goto_23
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_38

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Z

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewPressAnim(Z)V

    :cond_40
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:Landroid/view/WindowInsets;

    invoke-virtual {v0, v3, v2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    :cond_4d
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    sget v2, Lcom/support/panel/R$id;->panel_content:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-super {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    goto :goto_76

    :cond_73
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    :goto_76
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    sget p1, Lcom/support/panel/R$id;->container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    sget p1, Lcom/support/panel/R$id;->panel_outside:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    sget p1, Lcom/support/panel/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    sget p1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    sget p1, Lcom/support/panel/R$id;->panel_drag_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelBarView;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:Z

    if-eqz v0, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v1, -0x2

    :goto_b2
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w()Z

    move-result p1

    if-eqz p1, :cond_c4

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c4
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_cd

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_cd
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v0, :cond_f7

    if-eqz p1, :cond_ef

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_ef
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "design_bottom_sheet can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "panel_outside can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ff
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "coordinator can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "container can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContentView can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a0:I

    if-eqz v1, :cond_e

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H()V

    return-void
.end method

.method public final u(Landroid/view/WindowInsets;)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Z:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_61

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_54

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-static {p1, v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_45

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    :cond_45
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v6

    goto :goto_55

    :cond_54
    move v5, v4

    :goto_55
    if-nez v5, :cond_5b

    invoke-static {v2, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->g(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v5

    :cond_5b
    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    sub-int/2addr v5, p1

    goto :goto_6b

    :cond_61
    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->g(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    sub-int v5, v2, p1

    :goto_6b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_max_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lt v0, p1, :cond_7c

    const/4 v4, 0x1

    :cond_7c
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v0, -0x1

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:Z

    if-nez v1, :cond_8e

    if-eqz v4, :cond_8c

    goto :goto_8e

    :cond_8c
    const/4 v1, -0x2

    goto :goto_8f

    :cond_8e
    :goto_8e
    move v1, v0

    :goto_8f
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_91
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_a1

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:Z

    if-nez p0, :cond_9b

    if-eqz v4, :cond_a1

    :cond_9b
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a1
    return-void
.end method

.method public final v()Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    :cond_23
    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public final w()Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final x()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final y(II)I
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final z()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:I

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x0:I

    :cond_4b
    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v6, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_dialog_follow_hand_margin_left:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/2addr v10, v11

    div-int/lit8 v12, v2, 0x2

    sub-int/2addr v10, v12

    iget v12, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x0:I

    sub-int/2addr v10, v12

    invoke-virtual {v0, v10, v9}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y(II)I

    move-result v9

    if-gt v9, v8, :cond_8b

    move v9, v8

    goto :goto_95

    :cond_8b
    add-int v10, v9, v2

    add-int/2addr v10, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    if-lt v10, v12, :cond_95

    sub-int/2addr v12, v8

    sub-int v9, v12, v2

    :cond_95
    :goto_95
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v10, v6

    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v15, v3

    iget v11, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:I

    sub-int/2addr v3, v11

    sub-int/2addr v3, v7

    move/from16 v16, v9

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v9

    if-ge v6, v3, :cond_c2

    sub-int/2addr v15, v6

    sub-int/2addr v15, v11

    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:I

    add-int/2addr v15, v2

    sub-int/2addr v15, v7

    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:I

    sub-int/2addr v15, v2

    invoke-virtual {v0, v15, v12}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y(II)I

    move-result v2

    goto :goto_e7

    :cond_c2
    if-ge v6, v10, :cond_cb

    sub-int/2addr v9, v11

    add-int/2addr v9, v7

    invoke-virtual {v0, v9, v12}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y(II)I

    move-result v2

    goto :goto_e7

    :cond_cb
    add-int/2addr v9, v15

    const/4 v3, 0x2

    div-int/2addr v9, v3

    div-int/2addr v6, v3

    sub-int/2addr v9, v6

    iget v3, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:I

    sub-int/2addr v9, v3

    invoke-virtual {v0, v9, v12}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y(II)I

    move-result v3

    if-ge v2, v14, :cond_df

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v8

    move v9, v6

    goto :goto_ea

    :cond_df
    if-ge v2, v13, :cond_e6

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v8

    move v9, v2

    goto :goto_ea

    :cond_e6
    move v2, v3

    :goto_e7
    move v3, v2

    move/from16 v9, v16

    :goto_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateFinalLocationInScreen: \n anchorViewLocationRect = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n anchorContentViewLocationRect = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n dialogViewLocalRect = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n -> final : x = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n -> insetTop: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxY: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIBottomSheetDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v9, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    aget v2, v1, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:F

    return-void
.end method

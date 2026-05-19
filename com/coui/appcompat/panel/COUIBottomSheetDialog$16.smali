.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/panel/COUIPanelPullUpListener;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->a:I

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 8

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:La2/d;

    if-eqz v0, :cond_18

    iget-object v1, v0, La2/d;->c:La2/d$b;

    iget-wide v1, v1, La2/d$b;->b:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_18

    invoke-virtual {v0}, La2/d;->c()La2/d;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    return p0

    :cond_18
    iget-object p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const v0, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v0, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    if-eq v0, p1, :cond_44

    iput p1, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    invoke-static {p2, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    :cond_44
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    return p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    return-void
.end method

.method public c(F)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->a:I

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->C0:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Z

    if-eqz v1, :cond_73

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o(F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o(F)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:F

    :cond_31
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "hide_navigationbar_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:F

    mul-float/2addr v2, p1

    float-to-int v2, v2

    if-eqz v2, :cond_73

    const/4 v2, 0x3

    if-eq v1, v2, :cond_73

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;F)V

    :cond_73
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    if-eqz v1, :cond_9f

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_9f

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    if-eqz v2, :cond_9f

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->a:I

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setPanelOffset(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->a:I

    :cond_9f
    return-void
.end method

.method public d(I)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->D(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    sub-int/2addr p1, v2

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    sub-int/2addr p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La2/i;->b()La2/i;

    move-result-object v0

    invoke-virtual {v0}, La2/i;->c()La2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:La2/d;

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    const-wide/high16 v4, 0x4045000000000000L  # 42.0

    invoke-static {v2, v3, v4, v5}, La2/e;->a(DD)La2/e;

    move-result-object v2

    invoke-virtual {v0, v2}, La2/d;->f(La2/e;)La2/d;

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:La2/d;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$17;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$17;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    invoke-virtual {v0, v1}, La2/d;->a(La2/g;)La2/d;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:La2/d;

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, La2/d;->e(D)La2/d;

    return-void
.end method

.method public e()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:Z

    return-void
.end method

.method public onCancel()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    return-void
.end method

.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->a:Z

    if-eqz v0, :cond_2d

    const v0, 0x3f4ccccd  # 0.8f

    const v1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2d
    return-void
.end method

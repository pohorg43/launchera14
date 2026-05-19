.class public Lcom/android/wm/shell/unfold/UnfoldBackgroundController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BACKGROUND_LAYER_Z_INDEX:I = -0x1


# instance fields
.field private final mBackgroundColor:[F

.field private mBackgroundColorSet:[F

.field private mBackgroundLayer:Landroid/view/SurfaceControl;

.field private final mSplitScreenBackgroundColor:[F

.field private mSplitScreenVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    sget v0, Lcom/android/wm/shell/R$color;->unfold_background:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->getRGBColorFromId(Landroid/content/Context;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColor:[F

    sget v0, Lcom/android/wm/shell/R$color;->split_divider_background:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->getRGBColorFromId(Landroid/content/Context;I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenBackgroundColor:[F

    return-void
.end method

.method private getCurrentBackgroundColor()[F
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenBackgroundColor:[F

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColor:[F

    return-object p0
.end method

.method private getRGBColorFromId(Landroid/content/Context;I)[F
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p2, v0

    const/4 v1, 0x0

    aput p2, p1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/4 v1, 0x1

    aput p2, p1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/4 p2, 0x2

    aput p0, p1, p2

    return-object p1
.end method


# virtual methods
.method public ensureBackground(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->getCurrentBackgroundColor()[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    if-eq v2, v0, :cond_11

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    :cond_11
    return-void

    :cond_12
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v2, "app-unfold-background"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "AppUnfoldTransitionController"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    return-void
.end method

.method public onSplitVisibilityChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    return-void
.end method

.method public removeBackground(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    return-void
.end method

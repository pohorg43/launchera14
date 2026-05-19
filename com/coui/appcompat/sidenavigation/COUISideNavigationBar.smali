.class public Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;
.super Landroidx/drawerlayout/widget/DrawerLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarListener;,
        Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;
    }
.end annotation


# static fields
.field public static final B:Landroid/animation/ArgbEvaluator;


# instance fields
.field public A:Landroid/animation/ValueAnimator;

.field public a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field public b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->B:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->i:I

    const/high16 v1, -0x67000000

    iput v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->p:I

    iput-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->r:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->z:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000  # 64.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->k:I

    sget-object v1, Lcom/support/bars/R$styleable;->COUISideNavigationBar:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    sget p3, Lcom/support/bars/R$styleable;->COUISideNavigationBar_isParentChildHierarchy:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/bars/R$dimen;->coui_side_navigation_bar_min_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->l:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/bars/R$dimen;->coui_side_navigation_bar_max_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->m:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/bars/R$dimen;->coui_side_navigation_drawer_divider_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    sget v2, Lcom/support/appcompat/R$color;->coui_color_divider:I

    invoke-static {p3, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->o:I

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->w:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p2, p3, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->i:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    const/4 p2, 0x2

    const/4 p3, 0x3

    invoke-super {p0, p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 p3, 0x5

    invoke-super {p0, p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    iget p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->o:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method

.method private setDrawerMode(I)V
    .registers 5

    const-string v0, "setDrawerMode drawer mode = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    const-string v2, " new mode = "

    invoke-static {v0, v1, v2, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v1, "COUISideNavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    if-ne v0, p1, :cond_1a

    return-void

    :cond_1a
    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    iget-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    if-nez v0, :cond_33

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setScrimColor(I)V

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3a

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b()Z

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    goto :goto_3a

    :cond_33
    if-nez p1, :cond_3a

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->i:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setScrimColor(I)V

    :cond_3a
    :goto_3a
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    if-nez v0, :cond_50

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_50

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    const/4 v4, 0x1

    if-nez v3, :cond_39

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v5, v3, 0x3

    if-eqz v5, :cond_2f

    :goto_2d
    move v3, v4

    goto :goto_35

    :cond_2f
    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_34

    goto :goto_2d

    :cond_34
    move v3, v0

    :goto_35
    if-eqz v3, :cond_39

    iput-object v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    :cond_39
    iget-object v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    if-nez v3, :cond_4d

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v3, :cond_48

    goto :goto_49

    :cond_48
    move v4, v0

    :goto_49
    if-eqz v4, :cond_4d

    iput-object v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_50
    return-void
.end method

.method public b()Z
    .registers 3

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_9

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    iget p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_10

    invoke-direct {p0, p2}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    goto :goto_13

    :cond_10
    invoke-direct {p0, v0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    :goto_13
    const-string p1, "close drawer window weight = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " content weight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drawerMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v1, "COUISideNavigationBar"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    if-ne p1, p2, :cond_43

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    :cond_43
    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    if-ne p2, v0, :cond_39

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->n:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2c

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_2c
    invoke-super {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/drawerlayout/widget/DrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->p:I

    invoke-super {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return p1

    :cond_39
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/drawerlayout/widget/DrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a()V

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    return-object p0
.end method

.method public getDrawerMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    return p0
.end method

.method public getDrawerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a()V

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    return-object p0
.end method

.method public getDrawerViewWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->j:I

    return p0
.end method

.method public getHandlerEditModeMask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->r:Z

    return p0
.end method

.method public getIsInEditState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->n:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->w:F

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->t:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->u:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->getDrawerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_43

    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_43

    move v0, v2

    goto :goto_44

    :cond_43
    :goto_43
    move v0, v1

    :goto_44
    if-nez v0, :cond_49

    iget-boolean p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    return p0

    :cond_49
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_5b

    if-eqz v0, :cond_5b

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    if-nez p0, :cond_5a

    move v1, v2

    :cond_5a
    move v0, v1

    :cond_5b
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/drawerlayout/widget/DrawerLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    iget-object p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->v:Landroid/view/View;

    iget p3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->n:I

    neg-int p3, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {p2, p3, p4, p1, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-super {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    goto :goto_26

    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    :goto_26
    const-string v0, "old window size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    if-nez v1, :cond_33

    const-string v1, "null"

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current window size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v1, "COUISideNavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v0

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_65

    iput v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    goto :goto_88

    :cond_65
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v0

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v0, v2, :cond_77

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    goto :goto_88

    :cond_77
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v0

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v0, v2, :cond_88

    const/4 v0, 0x3

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-virtual {v0, v2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_99

    goto/16 :goto_135

    :cond_99
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->a:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->getDrawerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_ae

    const-string v0, "drawerView is Empty!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135

    :cond_ae
    iget v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    iget v5, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    sub-int/2addr v4, v5

    const-string v5, "window weight = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " content weight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " edit = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " implicit state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isDrawerOpening = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_11c

    iget-boolean v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    if-nez v4, :cond_119

    iget-boolean v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    if-nez v4, :cond_113

    iget v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    if-nez v4, :cond_109

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b()Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-super {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iput v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    goto :goto_119

    :cond_109
    iget v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    if-ne v4, v3, :cond_119

    invoke-super {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    iput v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    goto :goto_119

    :cond_113
    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b()Z

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    :cond_119
    :goto_119
    iput v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    goto :goto_135

    :cond_11c
    iget-boolean v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->s:Z

    if-nez v4, :cond_133

    iget-boolean v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    if-nez v4, :cond_133

    iget v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    if-eq v4, v3, :cond_133

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->b()Z

    move-result v4

    if-eqz v4, :cond_133

    invoke-super {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iput v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    :cond_133
    iput v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    :goto_135
    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->getDrawerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13d

    goto/16 :goto_1c3

    :cond_13d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_148

    iget v5, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    :cond_148
    if-nez v5, :cond_14b

    goto :goto_14c

    :cond_14b
    move v3, v2

    :goto_14c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->e(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_17a

    if-eqz v3, :cond_159

    goto :goto_17a

    :cond_159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->d(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_16d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_17c

    :cond_16d
    int-to-float v2, v4

    const v3, 0x3ec39581  # 0.382f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->m:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_17c

    :cond_17a
    :goto_17a
    iget v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->l:I

    :cond_17c
    :goto_17c
    iput v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->j:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const-string v3, "calculateDrawerWidth: params.width = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDrawerViewWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->j:I

    invoke-static {v3, v4, v1}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->j:I

    if-eq v1, v3, :cond_1c3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->k:I

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, p0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, p1, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    invoke-virtual {v0, p0, p1}, Landroid/view/View;->measure(II)V

    :cond_1c3
    :goto_1c3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->a:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    iget v0, p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->b:I

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    iget p1, p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->c:I

    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    iput-boolean v0, v1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->a:Z

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    iput v0, v1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->b:I

    iget p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    iput p0, v1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$COUISideNavigationBarSavedState;->c:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_d

    invoke-direct {p0, p1}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    iput p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->d:I

    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_43

    :cond_a
    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    if-nez v0, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->getDrawerView()Landroid/view/View;

    move-result-object v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->w:F

    mul-float/2addr v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_43

    if-eqz v3, :cond_43

    invoke-super {p0, v3, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    goto :goto_43

    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->x:F

    iput v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->y:F

    :cond_43
    :goto_43
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    iget p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    if-lez p1, :cond_f

    invoke-direct {p0, p2}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    goto :goto_13

    :cond_f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->setDrawerMode(I)V

    :goto_13
    const-string p1, "open drawer window weight = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " content weight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " drawerMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v0, "COUISideNavigationBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    if-ne p1, p2, :cond_43

    iput p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->e:I

    :cond_43
    iput p2, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->f:I

    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 3

    return-void
.end method

.method public setHandlerEditModeMask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->r:Z

    return-void
.end method

.method public setIsInEditState(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->r:Z

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_26

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_26
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->z:F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_47

    :cond_42
    iget-object v0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_47
    :goto_47
    iput-boolean p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->q:Z

    return-void

    :array_4a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setParentChildHierarchy(Z)V
    .registers 4

    const-string v0, "setParentChildHierarchy = "

    invoke-static {v0, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v1, "COUISideNavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    const/4 p1, 0x2

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->h:I

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->p:I

    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void
.end method

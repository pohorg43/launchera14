.class Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$1;->a:Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;

    sget-object p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->B:Landroid/animation/ArgbEvaluator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$1;->a:Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;

    sget-object p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->B:Landroid/animation/ArgbEvaluator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$1;->a:Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;

    sget-object p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->B:Landroid/animation/ArgbEvaluator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar$1;->a:Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;

    sget-object p1, Lcom/coui/appcompat/sidenavigation/COUISideNavigationBar;->B:Landroid/animation/ArgbEvaluator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->a:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->a:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const-string v1, "COUIPanelPercentFrameLayout"

    iget v2, v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    goto :goto_42

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    if-ne v4, v5, :cond_1d

    goto :goto_42

    :cond_1d
    iput v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceChangeScreenWidth : PreferWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->o:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    const-string v0, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->a:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_bottom_sheet_bg_bottom_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v6, v0, p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->a:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerXXL:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result p0

    int-to-float v7, p0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

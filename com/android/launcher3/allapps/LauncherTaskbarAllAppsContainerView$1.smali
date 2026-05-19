.class Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int v4, p1, p0

    int-to-float v5, p0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

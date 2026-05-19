.class Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->updateSearchCancelButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isEnableShowKeyboardImmediate()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(I)V

    goto :goto_18

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(I)V

    :goto_18
    return-void
.end method

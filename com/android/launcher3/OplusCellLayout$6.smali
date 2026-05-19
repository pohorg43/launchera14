.class Lcom/android/launcher3/OplusCellLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field public final synthetic val$pageIndex:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    iput p4, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$pageIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p1, :cond_13

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->resetLayoutAnimValue()V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->resetDecreasedBooleanArray()V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {p1}, Lcom/android/launcher3/card/IAreaWidget;->resetLayoutAnimValue()V

    :cond_2a
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v0, :cond_94

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-boolean v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v0

    instance-of v1, v0, Lpantanal/app/AppCard;

    if-eqz v1, :cond_94

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, p1}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->changeCardSizeToString(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "card_size"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    const-string v3, "card_width"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const-string v2, "card_height"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    check-cast v0, Lpantanal/app/AppCard;

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lpantanal/app/AppCard;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_94

    :cond_8c
    const-string p1, "OplusCellLayout"

    const-string/jumbo v0, "onSizeChange smartView is null"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    :goto_94
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$pageIndex:I

    invoke-virtual {p1, p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onDropAnimationComplete(I)V

    :cond_b1
    return-void
.end method

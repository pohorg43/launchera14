.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$child:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic val$finalRequireGradientReplacement:Z

.field public final synthetic val$isAddedChild:Z

.field public final synthetic val$needToReplacementFancyDrawable:Z

.field public final synthetic val$originFancyDrawable:Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

.field public final synthetic val$requireAlphaChild:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;ZZZZLcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;)V
    .registers 8

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$requireAlphaChild:Z

    iput-boolean p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$finalRequireGradientReplacement:Z

    iput-boolean p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$isAddedChild:Z

    iput-boolean p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$needToReplacementFancyDrawable:Z

    iput-object p7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$originFancyDrawable:Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/16 v1, 0xff

    if-nez v0, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightOrSuperLightFolderAnim()Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_44

    :cond_33
    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelItemDotAnimtion()V

    :cond_44
    :goto_44
    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$finalRequireGradientReplacement:Z

    if-eqz p1, :cond_6e

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$needToReplacementFancyDrawable:Z

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$originFancyDrawable:Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$originFancyDrawable:Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$originFancyDrawable:Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7f

    :cond_6e
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7f
    :goto_7f
    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$finalRequireGradientReplacement:Z

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$500(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->setDrawableForBigFolder(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/drawable/Drawable;Z)V

    :cond_90
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$requireAlphaChild:Z

    iget-boolean v7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$finalRequireGradientReplacement:Z

    iget-boolean v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$isAddedChild:Z

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;ZZZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-boolean v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$requireAlphaChild:Z

    iget-boolean v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$finalRequireGradientReplacement:Z

    iget-boolean v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$isAddedChild:Z

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;ZZZZ)V

    return-void
.end method

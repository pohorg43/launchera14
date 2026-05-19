.class Lcom/android/launcher/folder/recommend/RecommendUtils$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadComplete(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$recommendItem:Landroid/view/View;

.field public final synthetic val$recommendLoadingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendLoadingView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendItem:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendLoadingView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendItem:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils;->access$100(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendLoadingView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendItem:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils;->access$100(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendLoadingView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$recommendItem:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils;->access$000(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

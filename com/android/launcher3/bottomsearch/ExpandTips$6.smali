.class Lcom/android/launcher3/bottomsearch/ExpandTips$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/ExpandTips;->animateExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$6;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$6;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$100(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$6;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$402(Lcom/android/launcher3/bottomsearch/ExpandTips;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$6;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$402(Lcom/android/launcher3/bottomsearch/ExpandTips;Z)Z

    return-void
.end method

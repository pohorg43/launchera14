.class Lcom/android/launcher3/bottomsearch/ExpandTips$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/ExpandTips;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

.field public final synthetic val$dismissIv:Landroid/widget/ImageView;

.field public final synthetic val$insect:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/bottomsearch/ExpandTips;Landroid/widget/ImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->val$dismissIv:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->val$insect:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {v1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$300(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->val$dismissIv:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->val$insect:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {v1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$300(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$4;->val$dismissIv:Landroid/widget/ImageView;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

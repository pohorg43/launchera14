.class Lcom/android/launcher3/bottomsearch/ExpandTips$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/bottomsearch/ExpandTips;
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

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$1;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$1;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_25

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$1;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$000(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$1;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$100(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    :cond_25
    return-void
.end method

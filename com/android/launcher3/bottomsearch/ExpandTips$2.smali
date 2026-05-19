.class Lcom/android/launcher3/bottomsearch/ExpandTips$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$2;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$2;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-static {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->access$200(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

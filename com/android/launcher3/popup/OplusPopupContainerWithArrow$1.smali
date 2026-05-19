.class Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->populateAndShow(Landroid/view/View;Ljava/util/List;ILjava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0705b8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

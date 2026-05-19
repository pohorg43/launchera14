.class Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;->a:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$1;->a:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    return-void
.end method

.class Lcom/android/launcher3/pullup/view/CommonPullUpView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/view/CommonPullUpView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/view/CommonPullUpView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;->this$0:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    iget-object p1, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;->this$0:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;->this$0:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;->this$0:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-static {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->access$000(Lcom/android/launcher3/pullup/view/CommonPullUpView;)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

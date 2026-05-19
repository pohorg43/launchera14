.class public final Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $blurView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/popup/PopupBlurView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $contentView:Lcom/android/launcher3/OplusDragLayer;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/popup/PopupBlurView;",
            ">;",
            "Lcom/android/launcher3/OplusDragLayer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;->$blurView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;->$contentView:Lcom/android/launcher3/OplusDragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;->$blurView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;->$contentView:Lcom/android/launcher3/OplusDragLayer;

    const-string v1, "contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/PopupBlurView;->finish(Landroid/view/ViewGroup;)V

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;->$blurView:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

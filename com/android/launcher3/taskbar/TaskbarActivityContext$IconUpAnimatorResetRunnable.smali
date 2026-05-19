.class Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarActivityContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconUpAnimatorResetRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;->this$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;->view:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;->view:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    :cond_1c
    return-void
.end method

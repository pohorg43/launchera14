.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$updateTitle$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->fixEllipsizeForTV()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "QuickStep"

    const-string v0, "OplusTaskView"

    const-string/jumbo v1, "onGlobalLayout: fixEllipsizeForTV"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

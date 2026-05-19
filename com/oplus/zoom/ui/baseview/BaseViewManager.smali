.class public abstract Lcom/oplus/zoom/ui/baseview/BaseViewManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/ui/baseview/ViewHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ui/baseview/BaseViewManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/oplus/zoom/ui/baseview/IView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/zoom/ui/baseview/ViewHook;"
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field private mPendingRemoved:Z

.field public mState:I

.field public mTarget:Lcom/oplus/zoom/ui/baseview/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mViewSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher/layout/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/layout/a;-><init>(Lcom/oplus/zoom/ui/baseview/BaseViewManager;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mViewSupplier:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    iput-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mWM:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ui/baseview/BaseViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->lambda$removeView$0()V

    return-void
.end method

.method private synthetic lambda$removeView$0()V
    .registers 3

    const-string v0, "removeView() WM removes view : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {v1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mWM:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-nez v0, :cond_a

    const-string p0, "Failed to addView() : mTarget is null !"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "mTarget already AttachedToWindow : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_27
    iget v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    if-eqz v0, :cond_3e

    const-string v0, "Invalid state: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v0, "addView() for : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {v1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {v2}, Lcom/oplus/zoom/ui/baseview/IView;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    return-void
.end method

.method public abstract createView()Lcom/oplus/zoom/ui/baseview/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getState()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initTargetView()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-nez v0, :cond_31

    iget v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    if-eqz v0, :cond_9

    goto :goto_31

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/ui/baseview/IView;

    iput-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v0, "Init view for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_31
    :goto_31
    const-string v0, "Failed to initTargetView() - Invalid operation : mTarget = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onAttachedToWindow()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mPendingRemoved:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz v0, :cond_31

    const-string v0, "pendingRemoved onAttachedToWindow() - need removeView"

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {v1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mPendingRemoved:Z

    :cond_34
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onDetachedFromWindow()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mPendingRemoved:Z

    return-void
.end method

.method public relayout()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->updateView()V

    return-void
.end method

.method public removeView(Z)V
    .registers 4

    const-string v0, "removeView() anim = "

    const-string v1, ", state = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-nez v0, :cond_1e

    const-string p0, "removeView() : mTarget is null!"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string p1, "mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mPendingRemoved:Z

    return-void

    :cond_3e
    iget v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_56

    const-string p1, "Invalid state: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_56
    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/zoom/ui/baseview/BaseViewManager;)V

    if-nez p1, :cond_64

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/e;->run()V

    return-void

    :cond_64
    iget-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    new-instance v1, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;-><init>(Lcom/oplus/zoom/ui/baseview/BaseViewManager;Ljava/lang/Runnable;)V

    invoke-interface {p1, v1}, Lcom/oplus/zoom/ui/baseview/IView;->animRemove(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public removeViewOnCallBack()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->removeView(Z)V

    return-void
.end method

.method public updateView()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_39

    :cond_f
    iget v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const-string v0, "Invalid state: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {v1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/IView;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_39
    :goto_39
    const-string v0, "mTarget may not AttachedToWindow : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

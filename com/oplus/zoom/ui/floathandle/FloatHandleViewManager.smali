.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;
.super Lcom/oplus/zoom/ui/baseview/BaseViewManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/zoom/ui/baseview/BaseViewManager<",
        "Lcom/oplus/zoom/ui/floathandle/FloatHandleView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatHandle"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

.field private mSide:I

.field private mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oplus/zoom/ui/floathandle/FloatHandleStatus;Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iput-object p4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mSide:I

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->lambda$relaunchFloatHandleView$1(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->lambda$relaunchFloatHandleView$0(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method private synthetic lambda$relaunchFloatHandleView$0(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->addFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method private synthetic lambda$relaunchFloatHandleView$1(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/oplus/statistics/f;

    invoke-direct {v1, p0, p1}, Lcom/oplus/statistics/f;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->initTargetView()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "FloatHandle"

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz v0, :cond_30

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_30

    :cond_1a
    const-string v0, "refreshIconForFullFloatHandleView start"

    invoke-static {v2, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget-object v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->showFloatHandleViewWithAnim(ILjava/lang/String;I)V

    const-string p0, "refreshIconForFullFloatHandleView end"

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    :goto_30
    const-string p1, "addFloatHandleView mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz v0, :cond_75

    const-string v0, "showFullFloatHandleView start : mTarget = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->initState(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;II)Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->addView()V

    goto :goto_70

    :cond_68
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string p0, "initTargetViewAndState failed, just return"

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    const-string p0, "showFullFloatHandleView end"

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method public bridge synthetic createView()Lcom/oplus/zoom/ui/baseview/IView;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->createView()Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    move-result-object p0

    return-object p0
.end method

.method public createView()Lcom/oplus/zoom/ui/floathandle/FloatHandleView;
    .registers 5

    const-string v0, "FloatHandle"

    const-string v1, "FloatHandleView createView start"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mSide:I

    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;-><init>(Landroid/content/Context;ILcom/oplus/zoom/ui/floathandle/FloatHandleStatus;Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;)V

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->setHook(Lcom/oplus/zoom/ui/baseview/ViewHook;)V

    return-object v0
.end method

.method public getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    return-object p0
.end method

.method public hideFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v1, "FloatHandle"

    if-eqz v0, :cond_2a

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2a

    :cond_13
    const-string v0, "hideFloatHandleView start"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x1

    iget-object v2, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->showFloatHandleViewWithAnim(ILjava/lang/String;I)V

    const-string p0, "hideFloatHandleView end"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    :goto_2a
    const-string p1, "hideFloatHandleView mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->animAdd(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public refreshFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v1, "FloatHandle"

    if-eqz v0, :cond_29

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_29

    :cond_13
    const-string v0, "refreshConfigForFloatHandleView start"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget-object v0, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->refreshFloatHandleView(Ljava/lang/String;I)V

    const-string p0, "refreshConfigForFloatHandleView end"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    :goto_29
    const-string p1, "refreshFloatHandleView mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public relaunchFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 6

    const-string v0, "FloatHandle"

    if-eqz p1, :cond_67

    iget-object v1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_67

    :cond_9
    iget v1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_17

    const-string p0, "not current user, don\'t relaunchFloatHandleView"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_17
    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz v1, :cond_66

    const-string v1, "relaunchFloatHandleView start : mTarget = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->removeFloatHandleImmediately()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast v1, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v1, p1, v2, v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->initState(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;II)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oplus/splitscreen/e;

    invoke-direct {v2, p0, p1}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    const-wide/16 p0, 0x226

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_61

    :cond_4e
    const-string p1, "initTargetViewAndState failed, just return"

    invoke-static {v0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v1, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentLockPkg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentUserId(I)V

    :goto_61
    const-string p0, "relaunchFloatHandleView end"

    invoke-static {v0, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void

    :cond_67
    :goto_67
    const-string p0, "Failed to relaunch handle view: info is null"

    invoke-static {v0, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFloatHandleImmediately()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v1, "FloatHandle"

    if-eqz v0, :cond_25

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_25

    :cond_13
    const-string v0, "removeFloatHandleImmediately start"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->removeFloatHandleImmediately()V

    const-string p0, "removeFloatHandleImmediately end"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    :goto_25
    const-string v0, "removeFloatHandleImmediately mTarget may not AttachedToWindow : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFloatHandleView(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v1, "FloatHandle"

    if-eqz v0, :cond_25

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_25

    :cond_13
    const-string v0, "deleteFloatHandleView start"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->removeFloatHandleViewWithAnim(Z)V

    const-string p0, "deleteFloatHandleView end"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    :goto_25
    const-string p1, "mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    const-string v1, "FloatHandle"

    if-eqz v0, :cond_2a

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2a

    :cond_13
    const-string v0, "showHalfFloatHandleView start"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x4

    iget-object v2, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->showFloatHandleViewWithAnim(ILjava/lang/String;I)V

    const-string p0, "showHalfFloatHandleView end"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    :goto_2a
    const-string p1, "showFloatHandleView mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

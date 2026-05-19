.class public Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissSessionWrapper"
.end annotation


# instance fields
.field public mCreateTime:J

.field public mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

.field public mIsDirty:Z

.field public mNeedCheckDirty:Z

.field public mNeedToTop:Z

.field public mToTopAppTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mIsDirty:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mCreateTime:J

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mNeedCheckDirty:Z

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return-void
.end method


# virtual methods
.method public isDirtySession()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "isDirtySession, dismissSession="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", currentTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SplitScreenTransitionExt"

    invoke-static {v3, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mNeedCheckDirty:Z

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mIsDirty:Z

    if-nez v2, :cond_40

    iget-wide v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mCreateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mIsDirty:Z

    :cond_40
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mIsDirty:Z

    return p0
.end method

.method public setNeedCheckIsDirty(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mNeedCheckDirty:Z

    if-eqz p1, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mCreateTime:J

    const-string/jumbo p1, "setNeedCheckIsDirty, dismissSession="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", createTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenTransitionExt"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public setNeedToTop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mNeedToTop:Z

    return-void
.end method

.method public setToTopAppTaskToken(Landroid/window/WindowContainerToken;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mToTopAppTaskToken:Landroid/window/WindowContainerToken;

    return-void
.end method

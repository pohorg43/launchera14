.class public interface abstract Lpantanal/app/groupcard/IGroupCardCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onChildStateChanged(Lpantanal/app/groupcard/CardIdentity;Lpantanal/app/groupcard/GroupChildCardState;)V
.end method

.method public abstract onDisplayStateChanged(Lpantanal/app/groupcard/GroupCardDisplayState;)V
.end method

.method public abstract onGroupCardModeChanged(Z)V
.end method

.method public abstract onGroupCardViewInAnimation(Z)V
.end method

.method public abstract onIconChanged()Landroid/view/View;
.end method

.method public abstract onLoadFinished(Z)V
.end method

.method public abstract onLoadStart()V
.end method

.method public abstract onStartActivity(Landroid/view/View;[FLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[F",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTargetViewChanged(Landroid/view/View;[FLandroid/view/MotionEvent;)V
.end method

.method public abstract onTitleChanged(Ljava/lang/String;)V
.end method

.method public abstract updateTargetView(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

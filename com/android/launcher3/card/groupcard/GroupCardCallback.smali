.class public final Lcom/android/launcher3/card/groupcard/GroupCardCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/IGroupCardCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/groupcard/GroupCardCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/groupcard/GroupCardCallback$Companion;

.field private static final TAG:Ljava/lang/String; = "GroupCardCallback"


# instance fields
.field private innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/groupcard/IGroupCardCallback;)V
    .registers 3

    const-string v0, "innerCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    return-void
.end method


# virtual methods
.method public final getInnerCallback()Lpantanal/app/groupcard/IGroupCardCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    return-object p0
.end method

.method public onChildStateChanged(Lpantanal/app/groupcard/CardIdentity;Lpantanal/app/groupcard/GroupChildCardState;)V
    .registers 4

    const-string v0, "cardIdentity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1, p2}, Lpantanal/app/groupcard/IGroupCardCallback;->onChildStateChanged(Lpantanal/app/groupcard/CardIdentity;Lpantanal/app/groupcard/GroupChildCardState;)V

    return-void
.end method

.method public onDisplayStateChanged(Lpantanal/app/groupcard/GroupCardDisplayState;)V
    .registers 3

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/IGroupCardCallback;->onDisplayStateChanged(Lpantanal/app/groupcard/GroupCardDisplayState;)V

    return-void
.end method

.method public onGroupCardModeChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/IGroupCardCallback;->onGroupCardModeChanged(Z)V

    return-void
.end method

.method public onGroupCardViewInAnimation(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/IGroupCardCallback;->onGroupCardViewInAnimation(Z)V

    return-void
.end method

.method public onIconChanged()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0}, Lpantanal/app/groupcard/IGroupCardCallback;->onIconChanged()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLoadFinished(Z)V
    .registers 4

    const-string/jumbo v0, "onLoadFinished:innerCallback:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupCardCallback"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/IGroupCardCallback;->onLoadFinished(Z)V

    return-void
.end method

.method public onLoadStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0}, Lpantanal/app/groupcard/IGroupCardCallback;->onLoadStart()V

    return-void
.end method

.method public onStartActivity(Landroid/view/View;[FLjava/util/List;)V
    .registers 5
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

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "radius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1, p2, p3}, Lpantanal/app/groupcard/IGroupCardCallback;->onStartActivity(Landroid/view/View;[FLjava/util/List;)V

    return-void
.end method

.method public onTargetViewChanged(Landroid/view/View;[FLandroid/view/MotionEvent;)V
    .registers 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "radius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1, p2, p3}, Lpantanal/app/groupcard/IGroupCardCallback;->onTargetViewChanged(Landroid/view/View;[FLandroid/view/MotionEvent;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/IGroupCardCallback;->onTitleChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final setInnerCallback(Lpantanal/app/groupcard/IGroupCardCallback;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    return-void
.end method

.method public updateTargetView(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->innerCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-interface {p0, p1, p2}, Lpantanal/app/groupcard/IGroupCardCallback;->updateTargetView(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.class final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->launchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic $taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->invoke(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 4

    const-string v0, "launchTask(), onEnd, success="

    const-string v1, "RFT_ReleaseScene_PullLaunch"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIgnoreResetScale(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTranslationZ(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onTaskLaunchEnd(Z)V

    return-void
.end method

.class final Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->awaitRefreshAnimOnLongPressEnd(Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/l<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;->$it:Lm7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;->$it:Lm7/l;

    invoke-interface {v0}, Lm7/l;->isActive()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_25

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "GroupCardView"

    const-string v0, "awaitRefreshAnimOnLongPressEnd: "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;->$it:Lm7/l;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method

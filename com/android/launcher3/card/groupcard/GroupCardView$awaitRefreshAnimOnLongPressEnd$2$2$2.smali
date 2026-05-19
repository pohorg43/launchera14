.class final Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cb:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroidx/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;->$cb:Landroidx/lifecycle/Observer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getLongPressObserver$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$2$2$2;->$cb:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

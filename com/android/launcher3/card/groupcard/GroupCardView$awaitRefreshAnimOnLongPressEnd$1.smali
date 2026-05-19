.class final Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->awaitRefreshAnimOnLongPressEnd(Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.groupcard.GroupCardView"
    f = "GroupCardView.kt"
    l = {
        0x4f0
    }
    m = "awaitRefreshAnimOnLongPressEnd"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->label:I

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$awaitRefreshAnimOnLongPressEnd$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$awaitRefreshAnimOnLongPressEnd(Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

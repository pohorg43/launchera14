.class final Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->onLoadFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.groupcard.GroupCardView$onLoadFinished$1"
    f = "GroupCardView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $success:Z

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;ZLl4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Z",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iput-boolean p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->$success:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-boolean p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->$success:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;ZLl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->label:I

    if-nez v0, :cond_55

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getCardModelWrapper$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    instance-of v1, p1, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    if-eqz v1, :cond_23

    move-object v0, p1

    check-cast v0, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadFinished groupCard "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GroupCardView"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->$success:Z

    if-eqz p1, :cond_41

    const/16 p1, 0x3e8

    goto :goto_43

    :cond_41
    const/16 p1, 0x3e9

    :goto_43
    if-eqz v0, :cond_52

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$setMInitLoad$p(Lcom/android/launcher3/card/groupcard/GroupCardView;Z)V

    invoke-interface {v0}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    :cond_52
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

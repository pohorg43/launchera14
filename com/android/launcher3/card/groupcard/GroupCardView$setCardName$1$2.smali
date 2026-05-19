.class final Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.groupcard.GroupCardView$setCardName$1$2"
    f = "GroupCardView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $name:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->label:I

    if-nez v0, :cond_22

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getMCardNameHelper$p(Lcom/android/launcher3/card/groupcard/GroupCardView;)Lcom/android/launcher3/card/utils/CardNameHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_1f

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

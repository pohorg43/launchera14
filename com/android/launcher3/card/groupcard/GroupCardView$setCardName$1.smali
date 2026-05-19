.class final Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->setCardName(Ljava/lang/String;)V
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
    c = "com.android.launcher3.card.groupcard.GroupCardView$setCardName$1"
    f = "GroupCardView.kt"
    l = {
        0x31e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $s:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->$s:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

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

    new-instance p1, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->$s:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->$s:Ljava/lang/String;

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    sget-object v4, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    goto :goto_58

    :cond_4d
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1206d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_58
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_5a
    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;

    iget-object v4, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1$2;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    iput v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$setCardName$1;->label:I

    invoke-static {v1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6f

    return-object v0

    :cond_6f
    :goto_6f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.class final Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setTitleCenterPosition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Landroid/content/Intent;",
        ">;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;


# direct methods
.method public constructor <init>(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;->this$0:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;->this$0:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    invoke-static {v0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->access$getPocketCardIntentManager(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;)Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;->this$0:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->onStartActivity(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
